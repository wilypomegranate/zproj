# Set top level install dir
ZPROJ_INSTALL_DIR=${0:a:h}

load_zproj() {
    source ${ZPROJ_INSTALL_DIR}/funcs.zsh

    source ${ZPROJ_INSTALL_DIR}/aliases.zsh

    # Add custom completions
    fpath=("${ZPROJ_INSTALL_DIR}/completions" $fpath)
}

# Check for ZPROJ_ROOT_DIR before bothering to load anything
# Also make sure there is at least one project in the directory
# This has to be exported before the module is run
if [[ -d ${ZPROJ_ROOT_DIR} && $(ls ${ZPROJ_ROOT_DIR} | wc -l) > 0 ]]
then
    load_zproj
fi
