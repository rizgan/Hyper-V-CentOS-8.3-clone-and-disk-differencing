Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V-Management-PowerShell

New-VHD -ParentPath: D:\Hyper-V\VHD\centos.vhdx -Path D:\Hyper-V\VHD\centOS.vhdx -Differencing

New-VM -Name centOS -Generation 2 -MemoryStartupBytes 2GB -VHDPath D:\Hyper-V\VHD\centOS.vhdx -SwitchName Internal

Set-VMFirmware -VMName centOS -EnableSecureBoot Off

Start-VM centOS