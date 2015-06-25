testfile:
    file.append:
        - name: /etc/bashrc
        - text:
            - alias vi=vim
            - alias grep='grep --color'
sysctl.conf:
    file.append:
        - name: /etc/sysctl.conf
        - text:
            - net.ipv4.icmp_echo_ignore_broadcasts = 1 
            - net.ipv4.icmp_ignore_bogus_error_responses = 1 
            - net.ipv4.tcp_max_tw_buckets = 9000
            - net.ipv4.ip_local_port_range = 10240  65535
            - net.ipv4.ip_default_ttl = 255 
            - vm.swappiness = 0
