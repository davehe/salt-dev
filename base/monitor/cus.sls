zabbix-custon:
    file.managed:
        - name: /etc/zabbix/zabbix_agentd.d/custon.conf
        - template: jinja
        - source: salt://monitor/file/custon.conf_temp
        - mode: 644
        - user: root
        - group: root
        - require:
            - file: zabbix-config
