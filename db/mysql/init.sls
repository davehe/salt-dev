mysql:
    pkg:
        - name: pingan-percona-server
        - installed
    service:
        - name: percona-server
        - running
        - reload: True

/etc/init.d/mysqld:
    file.symlink:
        - target: /etc/init.d/percona-server
