install_fail2ban:
  pkg:
    - installed
    - name: fail2ban

start_fail2ban:
  service:
    - running
    - name: fail2ban
    - enable: True
    - require:
        - pkg: install_fail2ban

/etc/fail2ban/jail.local:
  file:
    - managed
    - name: '/etc/fail2ban/jail.local'
    - source: salt://templates/fail2ban/jail.local.j2
    - template: jinja
    - mode: '0644'
    - user: root
    - group: root
    - require:
        - service: start_fail2ban

/etc/fail2ban/jail.d/sshd.local:
  file:
    - managed
    - name: '/etc/fail2ban/jail.d/sshd.local'
    - source: salt://templates/fail2ban/sshd.local.j2
    - template: jinja
    - mode: '0644'
    - user: root
    - group: root
    - require:
        - service: start_fail2ban
