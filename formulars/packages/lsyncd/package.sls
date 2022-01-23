#Ensure the installation Supports both Centos7.9.2009 and Ubuntu Ubuntu 20.04.3 LTS"
#
{% from "packages/lsyncd/map.jinja" import lsyncd with context %}
{% if os is debian %}
install_repo_debian:

{% elif os is RedHat %}


install_repo_Epel:

{% endif %}


install_package:


ensure_service_started:
