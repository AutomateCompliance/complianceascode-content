# platform = Red Hat Enterprise Linux 7,Red Hat Enterprise Linux 8,multi_platform_fedora,multi_platform_ol,multi_platform_sle
# Remediation is applicable only in certain platforms
if rpm --quiet -q gdm && { [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; }; then

gsettings set org.gnome.desktop.lockdown disable-lock-screen false

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi