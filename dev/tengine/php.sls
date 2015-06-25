php-fpm:
    service.running:
      - enable: True
      - watch:
        - file: /data1/env/php-fpm/etc/php-fpm.conf

