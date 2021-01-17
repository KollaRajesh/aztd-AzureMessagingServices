$resourceGroupName  = Read-Host "Enter Resource Group"
$location  = Read-Host "Enter the location (i.e. centralus):"
New-AzResourceGroup -Name  $resourceGroupName -Location $location
New-AzResourceGroupDeployment  -ResourceGroupName  $resourceGroupName  -TemplateFile ".\ARMTemplate\template.json" -TemplateParameterFile ".\ARMTemplate\parametes.json"   -AsJob

# -connections_azureeventgrid_name 'azureeventgrid' -workflows_aztdslogicapp_EventsHandler_name'aztdslogicapp_EventsHandler' -storageAccounts_aztdsstorageaccount_name 'aztdsstorageaccount' -systemTopics_aztdsstorageaccount_bc99686f_91ef_4448_805f_d52d7c19d529_name 'systemTopics_aztdsstorageaccount'