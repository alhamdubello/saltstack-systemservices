{% from "packages/mysql/map.jinja" import mysql_client with context %}
installing_mysql_client:
  pkg:
    - installed
    - name: {{ mysql_client.package }}
