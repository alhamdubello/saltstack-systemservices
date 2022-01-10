{% from "packages/apache/map.jinja" import apache with context %}

installing_apache:
  pkg:
    - installed
    - name: {{ apache.package }}

ensure_apache_running:
  service:
    - running
    - name: {{ apache.service }}
    - enable: true
    - require:
        - pkg: installing_apache
