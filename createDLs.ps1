Import-CSV “c:\scripts\distributionlist.csv” | foreach {New-DistributionGroup -Name $_.name -Type $_.Type}

#sample distributionlist.csv
Name,Type
Dist1,Distribution
Dist2,Distribution


Import-Csv “c:\scripts\DistributionlistMembers.csv” | foreach{Add-DistributionGroupMember -Identity “Dist1” -Member $_.alias}

#sample DistributionlistMembers.csv
Displayname,Alias,EmailAddress
Miracle,miracle@test.com,miracle@test.com
Jose,jose@test.com,jose@test.com
