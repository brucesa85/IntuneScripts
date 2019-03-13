Netsh.exe advfirewall firewall delete rule name="Remote Desktop - Shadow (TCP-In)"
Netsh.exe advfirewall firewall add rule name="Remote Desktop - Shadow (TCP-In)" program="%SystemRoot%\system32\RdpSa.exe" protocol=tcp dir=in enable=yes action=allow
Netsh.exe advfirewall firewall delete rule name="Remote Desktop - UserMode (TCP-In)"
Netsh.exe advfirewall firewall add rule name="Remote Desktop - UserMode (TCP-In)" program="%SystemRoot%\system32\svchost.exe" protocol=tcp localport=3389 dir=in enable=yes action=allow
Netsh.exe advfirewall firewall delete rule name="Remote Desktop - UserMode (UDP-In)"
Netsh.exe advfirewall firewall add rule name="Remote Desktop - UserMode (UDP-In)" program="%SystemRoot%\system32\svchost.exe" protocol=udp localport=3389 dir=in enable=yes action=allow