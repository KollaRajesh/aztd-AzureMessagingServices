
echo "Enter Resource Group" && 
read resourceGroupName
echo "Enter the location (i.e. centralus):" &&
read location &&
az deployment group create --resource-group $resourceGroupName --template-file ".\ARMTemplate\template.json"  --parameter-file ".\ARMTemplate\parametes.json" 
#--parameters connections_azureeventgrid_name 'azureeventgrid' workflows_aztdslogicapp_EventsHandler_name 'aztdslogicapp_EventsHandler' storageAccounts_aztdsstorageaccount_name  'aztdsstorageaccount' systemTopics_aztdsstorageaccount_bc99686f_91ef_4448_805f_d52d7c19d529_name'systemTopics_aztdsstorageaccount'

