ssh_master2_pub:
  ssh_auth.present:
    - user: root
    - source: salt://packages/ssh_auth/pubkeys/master2.id_rsa.pub
    - config: '%h/.ssh/authorized_keys'
