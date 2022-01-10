{% from "packages/apache/map.jinja" import apache with context %}
ensure_running_apache:
  service:
    - running
    - name: {{ apache.service }}

ensure_service_enabled:
  service:
    - enabled
    - name: {{ apache.service }}
