tengine:
    pkg:
        - name: pingan-tengine
        - installed
    service:
        - name: tengine
        - running
        - reload: True
        - watch:
            - file: tengine-conf

tengine-conf:
    file.recurse:
        - require:
            - pkg: pingan-tengine
        - name: /data1/env/nginx/conf
        - source: salt://tengine/conf
        - user: root
        - group: root
        - dir_mode: 755
        - file_mode: 644
        - include_empty: True
        - template: jinja

php-fpm:
    service.running:
      - enable: True
      - reload: True

