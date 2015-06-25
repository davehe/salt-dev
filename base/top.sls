base:
    '*':
        - init          # the system init
        - users         # add users three user one pubkey
        - sudoer        # config sudoer
#        - yum           # repos config file
        - hosts         # sync host and resolve 
        - ssh           # ssh-client,ssh-server config
        - ntpd          # service ntpd
        - syslog        # log server config
        - monitor       # zabbix,salt-minion config
        - vim           # vim,vimconfig vimcolor 
