# Profile is saved at "<My Documents>\WindowsPowerShell\profile.ps1"

# Load Windows PowerShell cmdlets for managing vSphere
Add-PSSnapin VMware.VimAutomation.Core

# Move to the Documents folder
cd Documents

# This returns the prompt once everything is loaded, otherwise, it looks like powershell just hangs.
echo ""
