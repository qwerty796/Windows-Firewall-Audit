# Windows Security Audit

Write-Host " FIREWALL PROFILES "
Get-NetFirewallProfile |
Select-Object Name, Enabled, DefaultInboundAction, DefaultOutboundAction

Write-Host " FIREWALL RULES "
Get-NetFirewallRule -Enabled True |
Select-Object -First 10 DisplayName, Direction, Action, Enabled

Write-Host " WINDOWS DEFENDER "
Get-MpComputerStatus |
Select-Object AntivirusEnabled, RealTimeProtectionEnabled, AntispywareEnabled, AMServiceEnabled

Write-Host " LOCAL USERS "
Get-LocalUser |
Select-Object Name, Enabled, LastLogon

Write-Host " SYSTEM INFORMATION "
Get-ComputerInfo |
Select-Object WindowsProductName, WindowsVersion, OsArchitecture, CsName

Write-Host " NETWORK CONFIGURATION "
Get-NetIPConfiguration |
Select-Object InterfaceAlias, IPv4Address, IPv4DefaultGateway, DNSServer
