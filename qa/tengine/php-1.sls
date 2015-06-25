#php-fpm:
#    pkg:
#        - name: pingan-php
#        - installed
#    service:
#      - name: php-fpm
#      - running
#      - enable: True
#      - reload: True
#      - watch:
#        - file: php-conf
#
#php-conf:
#    file.directory:
#        - name: /data1/env/php-fpm/etc/php-fpm.conf
#        - user: www
#        - group: www
#        - mode: 755
#        - makedirs: True
#        - recurse:
#            - user
#            - group


php-fpm:
    pkg:
        - installed
        - name: pingan-php

    service:
        - running
        - enable: True
        - require:
            - pkg: pingan-php
            - file: php-conf

php-conf:
    file.managed:
        - name: /data1/env/php-fpm/etc/php-fpm.conf
        - template: jinja
        - mode: 755
        - user: root
        - group: root



