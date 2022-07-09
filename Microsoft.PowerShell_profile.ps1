
# 2022/7/9 migrate to new version, no need to install-module
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\jandedobbeleer.omp.json" | Invoke-Expression

Set-PSReadLineOption -EditMode Vi

Set-Alias -Name v -Value vim
Set-Alias -Name vi -Value vim
Set-Alias -Name g -Value git

function cd-to-up-level { cd .. }
New-Alias u cd-to-up-level

