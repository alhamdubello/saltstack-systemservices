{% for uar in pillar['users_list'] %}
create_admin_{{ uar.name }}:
  user:
    - present
    - name: {{ uar.name }}
    - home: {{ uar.home }}
    - shell: {{ uar.shell }}
{% endfor %}
