liuhuan571:
  user.present:
    - shell: /bin/bash
    - home: /home/liuhuan571
    - groups:
        - ops

/home/liuhuan571/.ssh/authorized_keys:
  file.managed:
    - makedirs: true
    - mode: 600
    - user: liuhuan571
    - group: ops
    - source: salt://users/file/liuhuan_authorized_temp

