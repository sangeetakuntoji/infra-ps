 
# RG creation

New-AzResourceGroup -Name 'skywave-rg' -Location 'South India'

# Storage Account creation

New-AzStorageAccount -ResourceGroupName 'skywave-rg' -Name 'skywavestorageaccount' -Location 'South India' -SkuName Standard_LRS -Kind StorageV2 -AssignIdentity 
  
## Function to create the storage container  
  
 $storageAcc=Get-AzStorageAccount -ResourceGroupName 'skywave-rg' -Name 'skywavestorageaccount'      
    ## Get the storage account context  
    $ctx=$storageAcc.Context      
 
    
       New-AzStorageContainer -Name 'skywavecontainer' -Context $ctx -Permission Container  
   
