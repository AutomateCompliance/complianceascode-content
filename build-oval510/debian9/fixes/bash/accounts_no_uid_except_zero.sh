# platform = multi_platform_all
awk -F: '$3 == 0 && $1 != "root" { print $1 }' /etc/passwd | xargs --max-lines=1 passwd -l