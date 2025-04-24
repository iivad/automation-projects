
#!/bin/bash
# backup_notes.sh - backs up .txt files in Notes to a backup folder

mkdir -p ~/Notes_Backup
cp ~/Notes/*.txt ~/Notes_Backup/

echo "Backup complete: $(date)" >> ~/Notes_Backup/backup_log.txt

