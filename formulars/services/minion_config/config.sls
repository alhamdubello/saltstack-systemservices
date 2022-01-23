minion_config_file:
  file:
    - managed
    - name: /etc/salt/minion.d/{{ grains['fqdn'] }}.conf
    - source: salt://services/minion_config/minion_d/minion.conf
    - user: root
    - group: root
    - mode: '0644'

restarting_minion:
  service:
    - running
    - name: salt-minion
    - enable: True
    - watch: 
        - file: minion_config_file
