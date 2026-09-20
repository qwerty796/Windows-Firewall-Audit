# Windows Security Audit

Write-Host "=== FIREWALL PROFILES ==="
Get-NetFirewallProfile |
Select-Object Name, Enabled, DefaultInboundAction, DefaultOutboundAction

Write-Host "`n=== FIREWALL RULES ==="
Get-NetFirewallRule -Enabled True |
Select-Object -First 10 DisplayName, Direction, Action, Enabled

Write-Host "`n=== WINDOWS DEFENDER ==="
Get-MpComputerStatus |
Select-Object AntivirusEnabled, RealTimeProtectionEnabled, AntispywareEnabled, AMServiceEnabled

Write-Host "`n=== LOCAL USERS ==="
Get-LocalUser |
Select-Object Name, Enabled, LastLogon

Write-Host "`n=== SYSTEM INFORMATION ==="
Get-ComputerInfo |
Select-Object WindowsProductName, WindowsVersion, OsArchitecture, CsName

Write-Host "`n=== NETWORK CONFIGURATION ==="
Get-NetIPConfiguration |
Select-Object InterfaceAlias, IPv4Address, IPv4DefaultGateway, DNSServer
