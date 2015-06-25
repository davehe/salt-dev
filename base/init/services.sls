stop_service:
    service.disabled:
    - names:
        - iptables
        - ip6tables
        - postfix
start_service:
    service.runing:
    - names:
        - ntpd
        - zabbix-agent
