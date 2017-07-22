function project_goto () {
    PROJECT=$1
    if [ -n $1 ]
    then
        if [ -d "${ZPROJ_ROOT_DIR}/${PROJECT}" ]
        then
            export PROJECT_DIR="${ZPROJ_ROOT_DIR}/${PROJECT}"
            cd ${PROJECT_DIR}
        fi
    fi
}

function project_remove() {
    PROJECT=$1
    if [ -n $1 ]
    then
        if [ -d "${ZPROJ_ROOT_DIR}/${PROJECT}" ]
        then
            rm -rf "${ZPROJ_ROOT_DIR}/${PROJECT}"
        fi
    fi
}
