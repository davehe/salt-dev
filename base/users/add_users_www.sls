########## Add user for www ########################

www:
    user.present:
      - shell: /bin/bash
      - home: /data1/www
      - password: '$1$9t2P1Gt8$ckwPbEvpjJlnidRhpjmlY0'
      - uid: 550
##add git key
/data1/www/.ssh/id_rsa:
  file.managed:
    - makedirs: True
    - mode: 600
    - user: www
    - group: www
    - source: salt://users/file/www_git_id_rsa_temp
