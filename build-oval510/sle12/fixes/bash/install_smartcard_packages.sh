# platform = multi_platform_sle
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

SMARTCARD_PACKAGES=( "pam_pkcs11"  "mozilla-nss"  "mozilla-nss-tools"  "pcsc-ccid"  "pcsc-lite"  "pcsc-tools"  "opensc")

SMARTCARD_PACKAGES+=("coolkey")


for PKGNAME in "${SMARTCARD_PACKAGES[@]}"
do
    zypper install -y ""
done

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi