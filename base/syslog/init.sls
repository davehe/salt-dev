rsyslog:
    pkg:
        - installed
    service:
        - running
        - enable: True
        - reload: True
        - require:
            - pkg: rsyslog
            - file: rsyslog.conf
        - watch:
            - file: rsyslog.conf

rsyslog.conf:
    file.managed:
        - name: /etc/rsyslog.conf
        {% if grains['fqdn'] == 'dev-mon001.novalocal.devcloud.ipo.com' %}
        - source: salt://syslog/file/rsyslog_server.conf_temp
        {% else %}
        - source: salt://syslog/file/rsyslog_client.conf_temp
        {% endif %}
        - mode: 644
        - user: root
        - template: jinja
        - group: root
        - require:
            - pkg: rsyslog

syslog_bash:
    file.managed:
        - name: /etc/profile.d/rsyslog.sh
        - source: salt://syslog/file/hist_bashrc.temp
        - template: jinja
        - mode: 644
        - user: root
        - group: root
