MegaCli64_file:
  file.managed:
    - name: /usr/local/sbin/MegaCli64
    - source: salt://storage_status/file/MegaCli64
    - user: root
    - group: root
    - mode: 755
