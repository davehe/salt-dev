test_1.sh:
    file.managed:
      - name: /root/test.sh
      - source: salt://file_script/scpfile/test.sh
      - mode: 755

test_2.sh:
    file.append:
      - name: /root/test.sh
      - text: "222222"


test_3.sh:
  file.replace:
     - name: /root/test.sh
     - pattern: 222222
     - repl: 333333
