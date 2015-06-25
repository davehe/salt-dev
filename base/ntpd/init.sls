ntpd:
    pkg:
        - installed
        - name: ntp

    service:
        - running
        - enable: True
        - require:
            - pkg: ntpd
            - file: ntpd-conf

ntpd-conf:
    file.managed:
        - name: /etc/ntp.conf
        - template: jinja
        {% if grains['fqdn'] == 'shnh-mon001' %}
        - source: salt://ntpd/file/ntpd.server_temp
        {% else %}
        - source: salt://ntpd/file/ntpd.client_temp
        {% endif %}
        - mode: 644
        - user: root
        - group: root
