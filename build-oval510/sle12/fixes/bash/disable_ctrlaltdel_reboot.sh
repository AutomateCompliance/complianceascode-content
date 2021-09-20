# platform = Red Hat Virtualization 4,multi_platform_fedora,multi_platform_ol,multi_platform_rhel,multi_platform_wrlinux,multi_platform_sle,multi_platform_ubuntu
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

systemctl disable --now ctrl-alt-del.target
systemctl mask --now ctrl-alt-del.target

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi