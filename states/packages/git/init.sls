install_git:
  pkg:
    - installed
    - name: git

setup_git_configs_name:
  git:
    - config_set
    - name: user.name
    - value: alhamdu
    - repo: /srv/salt

setup_git_configs_email:
  git:
    - config_set
    - name: user.email
    - value: alhamdubello@gmail.com
    - repo: /srv/salt

install_sysadmin_tools:
  pkg:
   - installed
   - pkgs:
      - bash-completion
      - lsof
      - rsync
