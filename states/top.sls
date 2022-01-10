base:
  'N@webservers':
    - packages.fail2ban
    - services.stockcheck
  'node2':
    - packages.repo.epel
    - packages.mysql.python
    - packages.mysql.client
    - packages.mysql.server
