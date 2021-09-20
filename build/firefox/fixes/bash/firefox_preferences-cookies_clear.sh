# platform = Mozilla Firefox


firefox_cfg="mozilla.cfg"
value="true"
firefox_dirs="/usr/lib/firefox /usr/lib64/firefox /usr/local/lib/firefox /usr/local/lib64/firefox"

# Check the possible Firefox install directories
for firefox_dir in ${firefox_dirs}; do
    # If the Firefox directory exists, then Firefox is installed
    if [ -d "${firefox_dir}" ]; then
        # Make sure the Firefox .cfg file exists and has the appropriate permissions
        if ! [ -f "${firefox_dir}/${firefox_cfg}" ] ; then
            echo "//" "${firefox_dir}/${firefox_cfg}"
            chmod 644 "${firefox_dir}/${firefox_cfg}"
        elif ! [ $(head -1 "${firefox_dir}/${firefox_cfg}" | grep "^//$") ]; then
            sed -i '1 i\//' "${firefox_dir}/${firefox_cfg}"
        fi

        # If the key exists, change it. Otherwise, add it to the config_file.
        if LC_ALL=C grep -m 1 -q '^lockPref("privacy.sanitize.sanitizeOnShutdown", ' "${firefox_dir}/${firefox_cfg}"; then
            
            sed -i 's/lockPref("privacy.sanitize.sanitizeOnShutdown".*/lockPref("privacy.sanitize.sanitizeOnShutdown", '"$value)"';/g' "${firefox_dir}/${firefox_cfg}"
        else
            echo 'lockPref("privacy.sanitize.sanitizeOnShutdown", '"$value"');' >> "${firefox_dir}/${firefox_cfg}"
        fi
    fi
done