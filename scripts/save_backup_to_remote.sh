BACKUP_DIR=~/backup
CONFIGS_BACKUP=${BACKUP_DIR}/configs
TEMPLATES_BACKUP=${BACKUP_DIR}/templates
SCRIPTS_BACKUP=${BACKUP_DIR}/scripts


cp -r ~/.config/nvim ${CONFIGS_BACKUP}
cp -r ~/.config/hypr ${CONFIGS_BACKUP}
cp -r ~/.bashrc ${CONFIGS_BACKUP}

cp -r ~/templates/* ${TEMPLATES_BACKUP}

cp -r ~/scripts/* ${SCRIPTS_BACKUP}
