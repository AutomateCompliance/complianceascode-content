# platform = multi_platform_all
# Remediation is applicable only in certain platforms
if dpkg-query --show --showformat='${db:Status-Status}\n' 'gdm3' 2>/dev/null | grep -q installed; then

# Try find '[xdmcp]' and 'Enable' in '/etc/gdm/custom.conf', if it exists, set
# to 'false', if it isn't here, add it, if '[xdmcp]' doesn't exist, add it there
if grep -qzosP '[[:space:]]*\[xdmcp]([^\n\[]*\n+)+?[[:space:]]*Enable' '/etc/gdm/custom.conf'; then
    
    sed -i 's/Enable[^(\n)]*/Enable=false/' '/etc/gdm/custom.conf'
elif grep -qs '[[:space:]]*\[xdmcp]' '/etc/gdm/custom.conf'; then
    sed -i '/[[:space:]]*\[xdmcp]/a Enable=false' '/etc/gdm/custom.conf'
else
    if test -d "/etc/gdm"; then
        printf '%s\n' '[xdmcp]' 'Enable=false' >> '/etc/gdm/custom.conf'
    else
        echo "Config file directory '/etc/gdm' doesnt exist, not remediating, assuming non-applicability." >&2
    fi
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi