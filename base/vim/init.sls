vim:
    pkg.installed:
        - name: vim-enhanced

vim-config:
    file.managed:
        - name: /etc/vimrc
        - source: salt://vim/file/vimrc
        - mode: 644
        - user: root
        - group: root
        - require:
            - pkg: vim

vim-color-config:
    file.managed:
        - name: /usr/share/vim/vim72/colors/wombat256mod.vim
        - source: salt://vim/file/wombat256mod.vim
        - mode: 644
        - user: root
        - group: root
        - require:
            - pkg: vim
