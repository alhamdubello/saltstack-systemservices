base:
  'srv001.home.local':
     - packages.users
     - packages.web
     - packages.mysql.username
  'r1':
    - networks.r1
  'p1':
    - networks.p1
  'p2':
    - networks.p2
  'pe1':
    - networks.pe1
  'pe2':
    - networks.pe2
