redis:
    pkg:
        - name: pingan-redis
        - installed
    service:
        - name: redis
        - running
        - reload: True
        - watch:
          - pkg: pingan-redis
