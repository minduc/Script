#!/bin/bash
# 

# Path pull file from Git
SCRIPT_GITPULL='/home/cardano/.ssh/gitPull.exp'

vQntDir="/home/cardano/QNTKYC"

# List project folder
vListDir=(
    "KYC_Admin/Backend"
    "KYC_Admin/Frontend"
    "KYC_Affiliate_Quanta/KYC_Affiliate"
    "KYC_API"
    "KycOAuthResource"
)

echo '-------------- Git pull source -----------------'
for gitDir in ${vListDir[@]}
do
    echo "■■■■■■■■■ ${vQntDir}/${gitDir} ■■■■■■■■■"
    cd "${vQntDir}/${gitDir}"
    # Update new source
    $SCRIPT_GITPULL
done
