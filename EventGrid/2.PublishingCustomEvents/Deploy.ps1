$resourceGroupName  = Read-Host "Enter Resource Group"
$location  = Read-Host "Enter the location (i.e. centralus):"
New-AzResourceGroup -Name  $resourceGroupName -Location $location

New-AzResourceGroupDeployment  -ResourceGroupName  $resourceGroupName  -TemplateFile ".\ARMTemplate\template.json" -TemplateParameterFile ".\ARMTemplate\parametes.json"   -AsJob

#-workflows_aztds_LoanEvents_name 'aztds_LoanEventsPublisher'  -topics_aztds_LoanEvents_name 'aztds_LoanEventsTopic'  -connections_azureeventgridpublish_name  'azureeventgridpublisher'   -workflows_aztds_LoaneventsHandler_name'aztds_LoaneventsHandler'