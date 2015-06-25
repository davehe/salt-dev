ssh-client:
    pkg.installed:
        - name: openssh-clients

ssh-server:
    pkg.installed:
        - name: openssh-server
    service:
        - name: sshd
        - running
        - enable: True
        - reload: True
        - require:
            - pkg: ssh-server
            - pkg: ssh-client
            - file: sshd-config
        - watch:
            - file: sshd-config

sshd-config:
    file.managed:
        - name: /etc/ssh/sshd_config
        - source: salt://ssh/file/sshd_config
        - mode: 644
        - user: root
        - group: root
        - template: jinja
        - require:
            - pkg: ssh-server
