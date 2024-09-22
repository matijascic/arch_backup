BACKUP_DIR=~/backup
CONFIGS_BACKUP=${BACKUP_DIR}/configs
TEMPLATES_BACKUP=${BACKUP_DIR}/templates
SCRIPTS_BACKUP=${BACKUP_DIR}/scripts

if [ $# -eq 0 ]; then
    COMMIT_MSG="No arguments supplied"
else
    COMMIT_MSG=$1
fi



cp -r ~/.config/nvim ${CONFIGS_BACKUP}
cp -r ~/.config/hypr ${CONFIGS_BACKUP}
cp -r ~/.bashrc ${CONFIGS_BACKUP}

cp -r ~/templates/* ${TEMPLATES_BACKUP}

cp -r ~/scripts/* ${SCRIPTS_BACKUP}

cd ~/backup
git add .
git commit -m "${COMMIT_MSG}"
git push
