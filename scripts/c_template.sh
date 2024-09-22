PROJECT_NAME=$1
CURRENT_DIR="$PWD"

PROJECT_DIR=${CURRENT_DIR}/${PROJECT_NAME}

cp -r ~/templates/c_template ${PROJECT_DIR} 
echo "Created C Project Directory : ${PROJECT_DIR}"
