pingan-memcached:
    pkg:
        - name: pingan-memcached
        - installed
    service:
        - name: memcached
        - running
        - reload: True
        - watch:
          - pkg: pingan-memcached
