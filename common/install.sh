ui_print "Module installation has been started"
ui_print "Start deleting radio cache."
ui_print "Start deleting /data/vendor/radio"
rm -r /data/vendor/radio
ui_print "Execution complete!"
ui_print "Start deleting /data/vendor/modem_fdr…"
rm -r /data/vendor/modem_fdr
ui_print "Execution complete!"
ui_print "Start deleting /data/vendor/radio/iccid_0…"
rm /data/vendor/radio/iccid_0
ui_print "Execution complete!"
ui_print "Start deleting /data/vendor/radio/qcril.db"
rm /data/vendor/radio/qcril.db
ui_print "Execution complete!"
ui_print "Start deleting /data/vendor/radio/qcril_backup.db"
rm /data/vendor/radio/qcril_backup.db
ui_print "Execution complete!"
ui_print "Paths:"
ui_print "---"
ui_print "MODPATH IS:"
ui_print $MODPATH
ui_print "ZIPFILE IS"
ui_print $ZIPFILE
ui_print "---"
