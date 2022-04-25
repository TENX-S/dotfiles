Import-Module oh-my-posh
Import-Module posh-git
Import-Module Terminal-Icons
# Import-Module PSReadLine
Import-Module PSFzf
Set-PoshPrompt pure

$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

Invoke-Expression (& {
    $hook = if ($PSVersionTable.PSVersion.Major -lt 6) { 'prompt' } else { 'pwd' }
    (zoxide init --hook $hook powershell) -join "`n"
})

Set-PSReadLineOption -EditMode Vi
Set-PSReadLineOption -BellStyle None
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReversedHistory 'Ctrl+r'

# Autocompletion for arrow keys
# Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
# Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

Function fedora {ssh ares@192.168.119.128}
Function tremt {ssh root@1.116.216.141}
Function tzg {ssh root@124.221.165.148}
Function cfgpwsh {nve $PROFILE}
Function cfgnvim {nve "$env:LOCALAPPDATA\nvim\init.vim"}
Function cfgalac {nve "$env:APPDATA\alacritty\alacritty.yml"}
Function restartpwsh {. $PROFILE}
Function cleanvcpkg {
    $vcpkg_temp = "buildtrees", "downloads", "packages"
    ForEach($t in $vcpkg_temp) {
        $p = "$env:VCPKG_ROOT\$t"
        if (Test-Path $p) {
            Remove-Item $p -Recurse
        }
    }
}
Function scpvm ($path) {
    scp $path ares@192.168.119.128:/home/ares/Developer
}
Function nve ($target) {
    neovide $target&
}
Function due {
    nvim "D:\Developer\due_today.md"
}
Function which ($command) {
    Get-Command -Name $command -ErrorAction SilentlyContinue | 
        Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
Function setproxy {
    $env:HTTPS_PROXY="http://127.0.0.1:7890"
    $env:HTTP_PROXY="http://127.0.0.1:7890"
}
Function unsetproxy {
    $env:HTTPS_PROXY=""
    $env:HTTP_PROXY=""
}
Function am {
    C:\Users\Ares\AppData\Local\Android\Sdk\emulator\emulator.exe -avd "Pixel_4_API_29"
}
Set-Alias vim nvim
Set-Alias tk tokei
# Set-Alias tig 'D:\Programs\Git\usr\bin\tig.exe'
# Set-Alias less 'D:\Programs\Git\usr\bin\less.exe'
