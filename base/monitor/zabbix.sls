zabbix-agent:
    pkg:
        - installed
        - names: 
            - zabbix-agent
            - zabbix-get
            - zabbix-sender

    service:
        - name: zabbix-agent
        - running
        - enable: True
        - require:
            - pkg: zabbix-agent
            - file: zabbix-config
        - watch:
            - file: zabbix-config
            - file: zabbix-custon
            - file: custon_scripts

zabbix-config:
    file.managed:
        - name: /etc/zabbix/zabbix_agentd.conf
        - source: salt://monitor/file/zabbix_agentd.conf_temp
        - template: jinja
        - mode: 644
        - user: root
        - group: root
        - require:
            - pkg: zabbix-agent


zabbix-custon:
    file.managed:
        - name: /etc/zabbix/zabbix_agentd.d/custon.conf
        - template: jinja
        - source: salt://monitor/file/zabbix_agentd.d/custon.conf_temp
        - makedirs: True
        - mode: 644
        - user: root
        - group: root
        - require:
            - file: zabbix-config

custon_scripts:
    file.recurse:
        - name: /etc/zabbix/custon_scripts
        - source: salt://monitor/file/custon_scripts/
        - user: root
        - group: root
        - file_mode: 755
        - include_empty: True
        - clean: False

zabbix-log:
    file.directory:
        - name: /data1/logs/zabbix
        - user: zabbix
        - group: zabbix
        - mode: 755
        - makedirs: True
        - recurse:
            - user
            - group
