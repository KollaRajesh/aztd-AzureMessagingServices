
echo "Enter Resource Group" && 
read resourceGroupName
echo "Enter the location (i.e. centralus):" &&
read location &&
az deployment group create --resource-group $resourceGroupName --template-file ".\ARMTemplate\template.json"  --parameter-file ".\ARMTemplate\parametes.json" 
#--parameters workflows_aztds_LoanEvents_name 'aztds_LoanEventsPublisher'  topics_aztds_LoanEvents_name 'aztds_LoanEventsTopic'  connections_azureeventgridpublish_name  'azureeventgridpublisher'   workflows_aztds_LoaneventsHandler_name'aztds_LoaneventsHandler'

