resolve:
  file.managed:
    - name: /etc/resolv.conf
    - source: salt://hosts/file/resolv.conf
hosts:
  file.managed:
    - name: /etc/hosts
    - source: salt://hosts/file/hosts
