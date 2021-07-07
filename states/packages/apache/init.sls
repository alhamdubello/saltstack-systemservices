installing_apache:
  pkg:
    - installed
    - name: httpd

ensure_apache_running:
  service:
    - running
    - name: httpd
    - enable: true
    - require:
        - pkg: installing_apache

default_apache_page:
  file:
    - managed
    - name: /var/www/html/index.html
    - source: salt://templates/apache/index.html.j2
    - user: root
    - group: root
    - mode: '0644'
    - template: jinja
    - require:
      - service: ensure_apache_running

open_firewalld_ports:
  firewalld:
    - present
    - name: public
    - ports:
        - 22/tcp
        - 80/tcp
