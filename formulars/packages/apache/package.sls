{% from "packages/apache/map.jinja" import apache with context %}
apache_install:
  pkg:
    - installed
    - pkgs: {{ apache.package }}
