install_nginx:
  pkg:
   - installed
   - name: nginx

ensure_service_nginx_running:
  service:
    - running
    - enable: True
    - name: nginx

#configure_nginx:

#open_firewall_ports:
