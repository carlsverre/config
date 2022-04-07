DIRCOLORS_SOLARIZED_THEME="${HOME}/.antigen/bundles/seebi/dircolors-solarized/dircolors.ansi-dark"
if [[ -f "${DIRCOLORS_SOLARIZED_THEME}" ]]; then
    eval $(dircolors ${DIRCOLORS_SOLARIZED_THEME})
fi
