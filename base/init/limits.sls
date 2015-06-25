limits.conf:
  file.append:
    - name: /etc/security/limits.conf
    - text:
      - "*   -   nofile      65535"
      - "*   -   nproc       65535"

#/etc/security/limits.d/90-nproc.conf:
#  file.sed:
#    - before: 1024
#    - after: unlimited
