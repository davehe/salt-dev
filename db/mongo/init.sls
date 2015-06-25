pingan-mongodb:
    pkg:
        - name: pingan-mongodb
        - installed
    service:
        - name: mongod
        - running
        - reload: True
        - watch:
          - pkg: pingan-mongodb
