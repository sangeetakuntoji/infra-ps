az login `
    --service-principal `
    --username $Env:SP_CLIENT_ID `
    --password $Env:SP_CLIENT_SECRET `
    --tenant $Env:SP_TENANT_ID
Write-Output "Done"

# Select Azure subscription
az account set `
    --subscription $Env:AZURE_SUBSCRIPTION_NAME
# RG creation

New-AzResourceGroup -Name 'skywave-rg' -Location 'South India'

# Storage Account 

New-AzStorageAccount -ResourceGroupName 'skywave-rg' -Name 'skywavestorageaccount' -Location 'South India' -SkuName Standard_LRS -Kind StorageV2 -AssignIdentity 
  
## Function to create the storage container  
  
 $storageAcc=Get-AzStorageAccount -ResourceGroupName 'skywave-rg' -Name 'skywavestorageaccount'      
    ## Get the storage account context  
    $ctx=$storageAcc.Context      
 
    
       New-AzStorageContainer -Name 'skywavecontainer' -Context $ctx -Permission Container
