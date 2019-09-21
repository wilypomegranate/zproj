# Set top level install dir
ZPROJ_INSTALL_DIR=${0:a:h}

load_zproj() {
    source ${ZPROJ_INSTALL_DIR}/funcs.zsh

    source ${ZPROJ_INSTALL_DIR}/aliases.zsh

    if [ -z "${ZPROJ_MAX_DEPTH}" ]
    then
        export ZPROJ_MAX_DEPTH=2
    fi

    # Add custom completions
    fpath=("${ZPROJ_INSTALL_DIR}/completions" $fpath)
}

load_zproj
