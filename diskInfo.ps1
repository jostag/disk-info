$Disk = Get-WmiObject -Class Win32_logicaldisk -Filter "DeviceID = 'C:'"
$DiskPartition = $Disk.GetRelated('Win32_DiskPartition')
$DiskPartition.GetRelationships() | Select-Object -Property __RELPATH
$DiskDrive = $DiskPartition.getrelated('Win32_DiskDrive')
$DiskDrive | Select-Object -Property *