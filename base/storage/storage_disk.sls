storage_disk_file:
  file.managed:
    - name: /etc/zabbix/custon_scripts/storage_disk.sh
    - source: salt://storage/file/storage_disk.sh
    - user: root
    - group: root
    - mode: 755
