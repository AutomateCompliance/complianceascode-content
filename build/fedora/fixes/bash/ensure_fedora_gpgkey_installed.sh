# platform = multi_platform_fedora

dnf install -y gpg

fedora_version=$(grep -oP '[[:digit:]]+' /etc/redhat-release)

function get_release_fingerprint {
    if [ "${fedora_version}" -eq "36" ]; then
        readonly FEDORA_RELEASE_FINGERPRINT="53DED2CB922D8B8D9E63FD18999F7CBF38AB71F4"
    elif [ "${fedora_version}" -eq "34" ]; then
        readonly FEDORA_RELEASE_FINGERPRINT="8C5BA6990BDB26E19F2A1A801161AE6945719A39"
    elif [ "${fedora_version}" -eq "33" ]; then
        readonly FEDORA_RELEASE_FINGERPRINT="963A2BEB02009608FE67EA4249FD77499570FF31"
    elif [ "${fedora_version}" -eq "35" ]; then
        readonly FEDORA_RELEASE_FINGERPRINT="787EA6AE1147EEE56C40B30CDB4639719867C58F"
    else
        printf '%s\n' "This Fedora version '$fedora_version' is not supported anymore, please upgrade to a newer version." >&2
        return 1
    fi
}

# Location of the key we would like to import (once it's integrity verified)
readonly REDHAT_RELEASE_KEY="/etc/pki/rpm-gpg/RPM-GPG-KEY-fedora-${fedora_version}-primary"

RPM_GPG_DIR_PERMS=$(stat -c %a "$(dirname "$REDHAT_RELEASE_KEY")")

function remediate_gpgkey_installed {
    # Return if there was an issue getting the release fingerprint
    get_release_fingerprint || return 1
    # Verify /etc/pki/rpm-gpg directory permissions are safe
    if [ "${RPM_GPG_DIR_PERMS}" -le "755" ]; then
        # If they are safe, try to obtain fingerprints from the key file
        # (to ensure there won't be e.g. CRC error).
        readarray -t GPG_OUT < <(gpg --show-keys --with-fingerprint --with-colons "${REDHAT_RELEASE_KEY}" | grep '^fpr' | cut -d ":" -f 10)
        GPG_RESULT=$?
        # No CRC error, safe to proceed
        if [ "${GPG_RESULT}" -eq "0" ]; then
            echo "${GPG_OUT}" | grep -vE "${FEDORA_RELEASE_FINGERPRINT}" || {
            # If file doesn't contain any keys with unknown fingerprint, import it
            rpm --import "${REDHAT_RELEASE_KEY}"
            }
        fi
    fi
}

remediate_gpgkey_installed