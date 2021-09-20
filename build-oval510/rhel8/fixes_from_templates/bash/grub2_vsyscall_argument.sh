# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv,multi_platform_ubuntu,multi_platform_sle


# Correct grub2 kernelopts value using grub2-editenv
existing_kernelopts="$(grub2-editenv - list | grep kernelopts)"
if ! printf '%s' "$existing_kernelopts" | grep -qE '^kernelopts=(.*\s)?vsyscall=none(\s.*)?$'; then
  if test -n "$existing_kernelopts"; then
    grub2-editenv - set "$existing_kernelopts vsyscall=none"
  else
    grub2-editenv - set "kernelopts=vsyscall=none"
  fi
fi
