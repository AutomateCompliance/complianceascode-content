# platform = multi_platform_all

function remediate_libreswan_crypto_policy() {
    CONFIG_FILE="/etc/ipsec.conf"
    if ! grep -qP "^\s*include\s+/etc/crypto-policies/back-ends/libreswan.config\s*(?:#.*)?$" "$CONFIG_FILE" ; then
        echo 'include /etc/crypto-policies/back-ends/libreswan.config' >> "$CONFIG_FILE"
    fi
    return 0
}

remediate_libreswan_crypto_policy