# Consuming built-in Azure events using EventGrid


1. Create Resource group 
   
   ![Create-ResourceGroup-EventGrid-ConsumeEvents](https://github.com/KollaRajesh/aztd-AzureMessagingServices/blob/master/EventGrid/1.ConsumingBuilt-In%20Azure%20Resource%20events/PicsForNotes/1.Create-ResourceGroup-EventGrid-ConsumeEvents.png)


2. Create storage account in resource group which was created above.
     
      ![2.Adding-Resource-ResourceGroup](https://github.com/KollaRajesh/aztd-AzureMessagingServices/blob/master/EventGrid/1.ConsumingBuilt-In%20Azure%20Resource%20events/PicsForNotes/2.Adding-Resource-ResourceGroup.png)

2.1 Create storage account by specifying storage account name
     
   ![3.Create-StorageAccount](https://github.com/KollaRajesh/aztd-AzureMessagingServices/blob/master/EventGrid/1.ConsumingBuilt-In%20Azure%20Resource%20events/PicsForNotes/3.Create-StorageAccount.png)

   ![4.Create-StorageAccount-withDetails](https://github.com/KollaRajesh/aztd-AzureMessagingServices/blob/master/EventGrid/1.ConsumingBuilt-In%20Azure%20Resource%20events/PicsForNotes/4.Create-StorageAccount-withDetails.png)

   ![5.Create-StorageAccount-DeploymentOngoing](https://github.com/KollaRajesh/aztd-AzureMessagingServices/blob/master/EventGrid/1.ConsumingBuilt-In%20Azure%20Resource%20events/PicsForNotes/5.Create-StorageAccount-DeploymentOngoing.png)

3. Create two containers in storage account . one container name is Images and another container name is docs.
      ![6.CreateImagesContainerInStorageAccount](https://github.com/KollaRajesh/aztd-AzureMessagingServices/blob/master/EventGrid/1.ConsumingBuilt-In%20Azure%20Resource%20events/PicsForNotes/6.CreateImagesContainerInStorageAccount.png)

      ![7.Create_Docs_ContainerInStorageAccount](https://github.com/KollaRajesh/aztd-AzureMessagingServices/blob/master/EventGrid/1.ConsumingBuilt-In%20Azure%20Resource%20events/PicsForNotes/7.Create_Docs_ContainerInStorageAccount.png)

4. Register "Microsoft.EventGrid" resource provider at Subscription level 
      ![8.RegisterEventGridinRegisterProviderBladeAtSubscriptionLevel](https://github.com/KollaRajesh/aztd-AzureMessagingServices/blob/master/EventGrid/1.ConsumingBuilt-In%20Azure%20Resource%20events/PicsForNotes/8.RegisterEventGridinRegisterProviderBladeAtSubscriptionLevel.png)

5.  Create Logic app to consume Azure resource events
      ![9.CreateLogicAppToConsumeResourceEvents](https://github.com/KollaRajesh/aztd-AzureMessagingServices/blob/master/EventGrid/1.ConsumingBuilt-In%20Azure%20Resource%20events/PicsForNotes/9.CreateLogicAppToConsumeResourceEvents.png)

      ![10.CreateLogicAppEventHandlerToConsumeResourceEvents_detailed](https://github.com/KollaRajesh/aztd-AzureMessagingServices/blob/master/EventGrid/1.ConsumingBuilt-In%20Azure%20Resource%20events/PicsForNotes/10.CreateLogicAppEventHandlerToConsumeResourceEvents_detailed.png)

6. select blank designer template
    
      ![11.CreateBlankLogicApp_Designer](https://github.com/KollaRajesh/aztd-AzureMessagingServices/blob/master/EventGrid/1.ConsumingBuilt-In%20Azure%20Resource%20events/PicsForNotes/11.CreateBlankLogicApp_Designer.png)

7. select Azure EventGrid Connector in Logic app designer
    
      ![Select_AzureEventGrid_Connector](https://github.com/KollaRajesh/aztd-AzureMessagingServices/blob/master/EventGrid/1.ConsumingBuilt-In%20Azure%20Resource%20events/PicsForNotes/12.Select_AzureEventGrid_Connector.png)

8. select Tenant and sign into tenant to connect to Event grid 
    ![13.SelectTenantAndSignIn_To_Connect_to_EventGrid](https://github.com/KollaRajesh/aztd-AzureMessagingServices/blob/master/EventGrid/1.ConsumingBuilt-In%20Azure%20Resource%20events/PicsForNotes/13.SelectTenantAndSignIn_To_Connect_to_EventGrid.png)

9. select Trigger "WhenResourceEventOccursTrigger" 
    
    ![14.WhenResourceEventOccursTrigger](https://github.com/KollaRajesh/aztd-AzureMessagingServices/blob/master/EventGrid/1.ConsumingBuilt-In%20Azure%20Resource%20events/PicsForNotes/14.WhenResourceEventOccursTrigger.pngg)

10. Before uploading blob into storage container  , State of storage container and Run history of logic app (Event Handler)
      
      ![15.BeforeUploadImageIntoContainer](https://github.com/KollaRajesh/aztd-AzureMessagingServices/blob/master/EventGrid/1.ConsumingBuilt-In%20Azure%20Resource%20events/PicsForNotes/15.BeforeUploadImageIntoContainer.png)

11.   Go to storage account and upload blob into image container  and observe  Run history of  logic apps (Event Handler)
    After uploading image blob into storage container  , Folowing is the state of storage container and Run history of logic app (Event Handler)
    
    ![16.AfterImageUploadIntoImageContainer_EventFired](https://github.com/KollaRajesh/aztd-AzureMessagingServices/blob/master/EventGrid/1.ConsumingBuilt-In%20Azure%20Resource%20events/PicsForNotes/16.AfterImageUploadIntoImageContainer_EventFired.png)

12.  Go to storage account and upload blobs into docs container  and observe  Run history of  logic apps (Event Handler)
     after uploading docs blob into storage container, Following is the State of storage container and Run history of logic app (Event Handler)
    
     ![16.AfterUploadDocsInto_Docs_Container_EventFired](https://github.com/KollaRajesh/aztd-AzureMessagingServices/blob/master/EventGrid/1.ConsumingBuilt-In%20Azure%20Resource%20events/PicsForNotes/16.AfterUploadDocsInto_Docs_Container_EventFired.png)



13. When new blob got created\uploaded into storage account irrespective container, Event grid send event to event handler of subscriber  ( in this case Logic app )
	
    If we  want to filter event . Subscriber has capabilities to filter events  by using " Prefix Filter" or "Suffix Filter" option.
 
 ``` Static way of filtering events
 	Static way of filtering events
	
	   prefix Filter : /blobServices/default/containers/<containername>
    In this case:-    prefix Filter : /blobServices/default/containers/images 

 ```
   ![17.AddingPrefixFilter_To_EventType](https://github.com/KollaRajesh/aztd-AzureMessagingServices/blob/master/EventGrid/1.ConsumingBuilt-In%20Azure%20Resource%20events/PicsForNotes/17.AddingPrefixFilter_To_EventType.png)


14.  Go to storage account and upload blobs into docs container  and observe  Run history of  logic apps (Event Handler)
       After uploading docs blob into storage container, Following is the State of storage container and Run history of logic app (Event Handler)
      Event handler doesn't run  it means EventGrid subscriber filter event
     
     
       ![19.AfterUploadDocsIntoContainer_EventNotFired](https://github.com/KollaRajesh/aztd-AzureMessagingServices/blob/master/EventGrid/1.ConsumingBuilt-In%20Azure%20Resource%20events/PicsForNotes/19.AfterUploadDocsIntoContainer_EventNotFired.png)


20.  Go to storage account and upload blobs into image container  and observe  Run history of  logic apps (Event Handler)
     Event handler run  it means EventGrid subscriber dispatched event details to event handler
     After uploading docs blob into storage container, Following is the State of storage container and Run history of logic app (Event Handler)

       ![20.AfterUploadImageIntoContainer_EventFired](https://github.com/KollaRajesh/aztd-AzureMessagingServices/blob/master/EventGrid/1.ConsumingBuilt-In%20Azure%20Resource%20events/PicsForNotes/20.AfterUploadImageIntoContainer_EventFired.png)