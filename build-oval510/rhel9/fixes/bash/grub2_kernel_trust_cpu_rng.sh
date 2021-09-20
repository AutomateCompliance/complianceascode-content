# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv,multi_platform_ubuntu,multi_platform_sle
# Remediation is applicable only in certain platforms
if rpm --quiet -q grub2-common && { [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; }; then

# Correct grub2 kernelopts value using grub2-editenv
existing_kernelopts="$(grub2-editenv - list | grep kernelopts)"
if ! printf '%s' "$existing_kernelopts" | grep -qE '^kernelopts=(.*\s)?random.trust_cpu=on(\s.*)?$'; then
  if test -n "$existing_kernelopts"; then
    grub2-editenv - set "$existing_kernelopts random.trust_cpu=on"
  else
    grub2-editenv - set "kernelopts=random.trust_cpu=on"
  fi
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi