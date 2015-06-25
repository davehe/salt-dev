dev_cloud:
    file.recurse:
      - name: /data1/www/dev_cloud
      - source: salt://code/source_code/dev_cloud
      - user: www
      - group: www
      - dir_mode: 755
      - source_code_mode: 664
      - makedir: True
      - clean: true
      - include_empty: True

index:
    file.recurse:
      - name: /data1/www/index
      - source: salt://code/source_code/index
      - user: www
      - group: www
      - dir_mode: 775
      - source_code_mode: 664
      - makedir: True
      - include_empty: True

laravel_v4:
    file.recurse:
      - name: /data1/www/laravel_v4
      - source: salt://code/source_code/laravel_v4
      - user: www
      - group: www
      - dir_mode: 755
      - source_code_mode: 664
      - makedir: True
      - include_empty: True


laravel_v5:
    file.recurse:
      - name: /data1/www/laravel_v5
      - source: salt://code/source_code/laravel_v5
      - user: www
      - group: www
      - dir_mode: 755
      - source_code_mode: 664
      - makedir: True
      - include_empty: True


other:
    file.recurse:
      - name: /data1/www/other
      - source: salt://code/source_code/other
      - user: www
      - group: www
      - dir_mode: 775
      - source_code_mode: 664
      - makedir: True
      - include_empty: True


paf-vendor:
    file.recurse:
      - name: /data1/www/paf-vendor
      - source: salt://code/source_code/paf-vendor
      - user: www
      - group: www
      - dir_mode: 755
      - source_code_mode: 664
      - makedir: True
      - include_empty: True


static_cloud:
    file.recurse:
      - name: /data1/www/static_cloud
      - source: salt://code/source_code/static_cloud
      - user: www
      - group: www
      - dir_mode: 755
      - source_code_mode: 664
      - makedir: True
      - include_empty: True

