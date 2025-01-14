# platform = multi_platform_wrlinux,multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv

# Find which files have incorrect hash (not in /etc, because of the system related config files) and then get files names
files_with_incorrect_hash="$(rpm -Va --noconfig | grep -E '^..5' | awk '{print $NF}' )"

# From files names get package names and change newline to space, because rpm writes each package to new line
packages_to_reinstall="$(rpm -qf $files_with_incorrect_hash | tr '\n' ' ')"

yum reinstall -y $packages_to_reinstall