# Profile is saved at "<My Documents>\WindowsPowerShell\profile.ps1"
# Information about PowerShell profile
# http://technet.microsoft.com/en-ca/library/ee692764.aspx

# http://stackoverflow.com/questions/2085744/how-to-get-current-username-in-windows-powershell
$UserName = [Environment]::UserName
$MachineName = [Environment]::MachineName
$UserDomainName = [Environment]::UserDomainName
# Change background color on all elevated command prompts (from ilovepowershell.com):
# http://www.ilovepowershell.com/profile-trick-how-to-set-administrator-mode-background-color/
if ($host.UI.RawUI.WindowTitle -match "Administrator")
{
    $host.UI.RawUI.BackgroundColor = "DarkRed"
    $host.UI.RawUI.ForegroundColor = "White"
    Clear-Host
} else {
    # Load Windows PowerShell cmdlets for managing vSphere
    Write-Host "Loading vSphere cmdlets..."
    Add-PSSnapin VMware.VimAutomation.Core
    Write-Host
}

# http://stackoverflow.com/questions/9440639/sublime-text-from-command-line-win7
Set-Alias subl 'C:\Program Files\Sublime Text 2\sublime_text.exe'
Set-Alias notepad 'C:\Program Files\Sublime Text 2\sublime_text.exe'

# http://blog.somewhatabstract.com/2014/09/01/getting-posh-git-in-all-your-powershell-consoles-using-github-for-windows/
# Load posh-git example profile
. (Resolve-Path "$env:LOCALAPPDATA\GitHub\shell.ps1")
. (Resolve-Path "$env:github_posh_git\profile.example.ps1")
