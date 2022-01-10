{% from "packages/apache/map.jinja" import apache with context %}

apache_config_file:
  file:
    - managed
    - name: {{ apache.config_main }}
    - source:  {{ apache.config_file }}
    - user: root
    - group: root
    - mode: 644
    - template: jinja

restarting_apache_service:
  service:
    - running
    - name: {{ apache.service }}
    - reload: True
    - watch:
      - file: {{ apache.config_main }}
