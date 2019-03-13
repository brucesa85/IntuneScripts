#This example will change all the default rules in the groups below.
#Since Windows already predefines these rules for Domain and Private/Public this example will change the profile for all to Private/Domain and will not delete Duplicates.
#Enable RDP
Set-NetFirewallRule -DisplayGroup "Remote Assistance" -Enabled True -Profile Private,Domain
#Enable File and Printer Sharing and ICMP
Set-NetFirewallRule -DisplayGroup "File And Printer Sharing" -Enabled True -Profile Private,Domain
