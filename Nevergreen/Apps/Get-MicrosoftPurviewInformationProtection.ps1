$Version = Get-Version -Uri 'https://learn.microsoft.com/en-us/purview/information-protection-client-relnotes' -Pattern '>Version\s(\d+\.\d+\.\d+\.\d+)'

$URLExe = Get-Link -Uri 'https://www.microsoft.com/en-us/download/confirmation.aspx?id=53018' -MatchProperty href -Pattern '\.exe'
$URLMsi = Get-Link -Uri 'https://www.microsoft.com/en-us/download/confirmation.aspx?id=53018' -MatchProperty href -Pattern '\.msi'

New-NevergreenApp -Name 'Microsoft Purview Information Protection' -Version $Version -Uri $URLExe -Architecture 'x86' -Type 'Exe'
New-NevergreenApp -Name 'Microsoft Purview Information Protection' -Version $Version -Uri $URLMsi -Architecture 'x86' -Type 'Msi'
