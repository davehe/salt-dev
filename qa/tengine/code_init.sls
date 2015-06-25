############ mkdir ##############

dev_cloud:
    file.directory:
        - name: /data1/www/dev_cloud
        - user: www
        - group: www
        - mode: 755
        - makedirs: True
        - recurse:
            - user
            - group

laravel_v4:
    file.directory:
        - name: /data1/www/laravel_v4
        - user: www
        - group: www
        - mode: 755
        - makedirs: True
        - recurse:
            - user
            - group

laravel_v5:
    file.directory:
        - name: /data1/www/laravel_v5
        - user: www
        - group: www
        - mode: 755
        - makedirs: True
        - recurse:
            - user
            - group

static_cloud:
    file.directory:
        - name: /data1/www/static_cloud
        - user: www
        - group: www
        - mode: 755
        - makedirs: True
        - recurse:
            - user
            - group

############ git clone##############
config_index:
    git.latest:
      - name: git@git.ipo.com:hf-dev-deploy/hf-index.git
      - user: www
      - target: /data1/www/index/
      - identity: /data1/www/.ssh/id_rsa
other:
    git.latest:
      - name: git@git.ipo.com:sa-1/other.git
      - user: www
      - target: /data1/www/other
      - identity: /data1/www/.ssh/id_rsa
paf-vendor:
    git.latest:
      - name: git@git.ipo.com:hf-dev-3/paf-vendor.git
      - user: www
      - target: /data1/www/paf-vendor
      - identity: /data1/www/.ssh/id_rsa
