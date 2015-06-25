dave:
    user.present:
      - fullname: dave he
      - shell: /bin/bash
      - home: /home/dave
      - uid: 510
      - gid: 510
      - password: '$1$6IuEBfeo$iSJWeiI9aT1ANtMVNgeIy0'
      - require:
         - group: dave
    group.present:
      - gid: 510 
        

/home/dave/.ssh/authorized_keys:
    file.managed:
      - makedirs: True
      - mode: 600
      - user: dave
      - group: dave
      - source: salt://users/file/dave_authorized_temp


/tmp/conf/vhosts:
    file.directory:
      - source: salt://file/vhosts
      - user: root
      - group: root
      - file_mode: 644
      - dir_mode: 755
      - makedirs: True
      - recurse:
          - user
          - group


    
