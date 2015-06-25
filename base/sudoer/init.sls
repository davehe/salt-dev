sudoer:
    pkg:
        - name: sudo
        - installed

    
sudoer-conf:
    file.managed:
        - name: /etc/sudoers
        - source: salt://sudoer/file/sudoer_temp
        - mode: 440
        - user: root
        - group: root
        - template: jinja
        - require:
            - pkg: sudoer
