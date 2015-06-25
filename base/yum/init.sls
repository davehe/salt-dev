/etc/yum.repos.d:
  file.recurse:
    - source: salt://yum/file/repo
    - user: root
    - group: root
    - file_mode: 644
    - include_empty: True
    - template: jinja
    {% if grains['nodename'] != 'shnh-mon001' %}
    - clean: True
    {% endif %}
