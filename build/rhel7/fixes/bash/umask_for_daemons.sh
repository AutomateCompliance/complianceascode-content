# platform = Red Hat Enterprise Linux 7,Red Hat Enterprise Linux 8

var_umask_for_daemons="(bash-populate var_umask_for_daemons)"


grep -q ^umask /etc/init.d/functions && \
  sed -i "s/umask.*/umask $var_umask_for_daemons/g" /etc/init.d/functions
if ! [ $? -eq 0 ]; then
    echo "umask $var_umask_for_daemons" >> /etc/init.d/functions
fi