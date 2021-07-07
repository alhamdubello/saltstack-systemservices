setup_mariadb_repo:
  pkgrepo:
   - managed
   - name: mariadb
   - baseurl: http://yum.mariadb.org/10.5/centos8-amd64
   - enabled: True
   - gpgcheck: 1
   - gpgkey: https://yum.mariadb.org/RPM-GPG-KEY-MariaDB
  
install_mariadb_server:
  pkg:
    - installed
    - name: mariadb-server
    
service_maradb:
  service:
    - running
    - name: mariadb
    - enable: true
    - require:
        - pkg: install_mariadb_server

install_mariadb_client:
  pkg:
    - installed
    - pkgs:  
        - mariadb
        - mariadb-common
        - python3-PyMySQL

secure_mariadb_root_password:
  mysql_user.present:
    - name: root
    - host: localhost
    - password: "bocatXxhbyd5z"
    - require:
       - pkg: install_mariadb_client
       - pkg: install_mariadb_server
    - watch:
        - service: service_maradb

open_firewalld_mariadb_ports:
  firewalld:
    - present
    - name: public
    - ports:
        - 22/tcp
        - 3306/tcp
