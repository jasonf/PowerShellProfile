# Profile is saved at "<My Documents>\WindowsPowerShell\profile.ps1"

# Change background color on all elevated command prompts (from ilovepowershell.com):
# http://www.ilovepowershell.com/profile-trick-how-to-set-administrator-mode-background-color/
if ($host.UI.RawUI.WindowTitle -match "Administrator")
{
    $host.UI.RawUI.BackgroundColor = "DarkRed";
    $host.UI.RawUI.ForegroundColor = "White"
} else {

    # Load Windows PowerShell cmdlets for managing vSphere
    Add-PSSnapin VMware.VimAutomation.Core

    # Move to the Documents folder
    cd Documents

    # This returns the prompt once everything is loaded, otherwise, it looks like powershell just hangs.
    echo ""

   #$MaximumHistoryCount = 10KB

   #function bye 
   #{
   #    Get-History -Count 10KB |Export-CSV ~\.ps_history
   #    exit
   #}

   #if (Test-path ~\.ps_history)
   #{
   #    Import-CSV ~\.ps_history |Add-History
   #}
}
