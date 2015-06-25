################################################################
######                                             #############
######                  PingAn Ops Group           #############
######                                             #############
################################################################

ops:
  group.present:
    - gid: 1000
    - system: True

#################################################################
###########             Add Users for ops

peterzhu:
  user.present:
    - fullname: Opsgroup
    - shell: /bin/bash
    - home: /home/peterzhu
    - uid: 1004
    - gid: 1000
    - groups:
        - ops
    - require:
        - group: peterzhu
  group.present:
    - gid: 1004

jeff:
  user.present:
    - fullname: Opsgroup
    - shell: /bin/bash
    - home: /home/jeff
    - uid: 2000
    - gid: 1000
    - groups:
        - ops

sky:
  user.present:
    - fullname: Opsgroup
    - shell: /bin/bash
    - home: /home/sky
    - uid: 1005
    - gid: 1000
    - groups: 
        - ops

doom:
  user.present:
    - fullname: Opsgroup
    - shell: /bin/bash
    - home: /home/doom
    - uid: 1006
    - gid: 1000
    - groups: 
        - ops


cathy:
  user.present:
    - fullname: Opsgroup
    - shell: /bin/bash
    - home: /home/cathy
    - uid: 1007
    - gid: 1000
    - groups: 
        - ops

hechen:
  user.present:
    - fullname: Opsgroup
    - shell: /bin/bash
    - home: /home/hechen
    - uid: 2002
    - gid: 1000
    - groups: 
        - ops

#key for hechen
/home/hechen/.ssh/authorized_keys:
  file.managed:
    - makedirs: True
    - mode: 600
    - user: hechen
    - group: ops
    - source: salt://users/file/hechen_authorized_temp

##key for peterzhu
/home/peterzhu/.ssh/authorized_keys:
  file.managed:
    - makedirs: True
    - mode: 600
    - user: peterzhu
    - group: peterzhu
    - source: salt://users/file/peterzhu_authorized_temp

##key for jeff
/home/jeff/.ssh/authorized_keys:
  file.managed:
    - makedirs: True
    - mode: 600
    - user: jeff
    - group: ops
    - source: salt://users/file/jeff_authorized_temp

### key for sky
/home/sky/.ssh/authorized_keys:
  file.managed:
    - makedirs: True
    - mode: 600
    - user: sky
    - group: ops
    - source: salt://users/file/sky_authorized_temp

### key for doom
/home/doom/.ssh/authorized_keys:
  file.managed:
    - makedirs: True
    - mode: 600
    - user: doom
    - group: ops
    - source: salt://users/file/doom_authorized_temp

### key for cathy
/home/cathy/.ssh/authorized_keys:
  file.managed:
    - makedirs: True
    - mode: 600
    - user: cathy
    - group: ops
    - source: salt://users/file/cathy_authorized_temp
    - system: True

##########Add admin for ops########################

admin:
  user.present:
    - shell: /bin/bash
    - home: /home/pafadmin
    - password: '$1$MrLDYPi3$3C8ayMRonb97QuMmmSR7j1'
    - uid: 999
    - groups:
        - ops

##key for admin
/home/pafadmin/.ssh/authorized_keys:
  file.managed:
    - makedirs: true
    - mode: 600
    - user: admin
    - group: ops
    - source: salt://users/file/admin_authorized_temp
