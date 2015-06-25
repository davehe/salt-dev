########## Add user for www ########################

www:
    user.present:
      - shell: /bin/bash
      - home: /data1/www
      - password: '$1$9t2P1Gt8$ckwPbEvpjJlnidRhpjmlY0'
      - uid: 550
