mkdir -p ~/backups
DATE=$(date +%F)
tar --exclude='*.sock'  --exclude='/home/'$USER'/.cache' -czf ~/backups/home-backup-$DATE.tar.gz /home/$USER
echo "Backup created on $DATE" >> ~/backups/backup.log
