# platform = Mozilla Firefox


firefox_cfg="mozilla.cfg"
value="2"
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
        if LC_ALL=C grep -m 1 -q '^lockPref("security.tls.version.min", ' "${firefox_dir}/${firefox_cfg}"; then
            
            sed -i 's/lockPref("security.tls.version.min".*/lockPref("security.tls.version.min", '"$value)"';/g' "${firefox_dir}/${firefox_cfg}"
        else
            echo 'lockPref("security.tls.version.min", '"$value"');' >> "${firefox_dir}/${firefox_cfg}"
        fi
    fi
done

firefox_cfg="mozilla.cfg"
value="4"
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
        if LC_ALL=C grep -m 1 -q '^lockPref("security.tls.version.max", ' "${firefox_dir}/${firefox_cfg}"; then
            
            sed -i 's/lockPref("security.tls.version.max".*/lockPref("security.tls.version.max", '"$value)"';/g' "${firefox_dir}/${firefox_cfg}"
        else
            echo 'lockPref("security.tls.version.max", '"$value"');' >> "${firefox_dir}/${firefox_cfg}"
        fi
    fi
done