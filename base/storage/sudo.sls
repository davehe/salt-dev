sudo_config_zabbix:
    file.append:
    - name: /etc/sudoers
    - text:
      - 'zabbix  ALL=NOPASSWD:   /usr/local/sbin/MegaCli64'

sudo_config_requiretty:
    file.sed:
    - name: /etc/sudoers
    - before: Defaults    requiretty
    - after: Defaults    !requiretty
