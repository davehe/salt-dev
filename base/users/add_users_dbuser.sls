##############################################################
########       Add Users for dba
shxye:
  user.present:
    - fullname: Opsgroup
    - shell: /bin/bash
    - home: /home/shxye
    - uid: 1008
    - gid: 1000
    - groups:
        - ops

#################################################################
###########            Add Key for dba

### key for shxye
/home/shxye/.ssh/authorized_keys:
  file.managed:
    - makedirs: true
    - mode: 600
    - user: shxye
    - group: ops
    - source: salt://users/file/shxye_authorized_temp

#################################################################
###########             Add Users for dbuser
###########

dbuser:
  user.present:
    - shell: /bin/bash
    - home: /home/dbuser
    - password: '$1$xcjv6u1u$/sI48tE74ih.F7vw90q0g0'
    - uid: 998
    - groups:
        - ops
/home/dbuser/.ssh/authorized_keys:
  file.managed:
    - makedirs: true
    - mode: 600
    - user: dbuser
    - group: ops
    - source: salt://users/file/dbuser_authorized_temp
