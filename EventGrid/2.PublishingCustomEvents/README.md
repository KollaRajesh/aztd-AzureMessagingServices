# Publishing Custom Events

1. Create Resource group and go to resource group and  create resource ( Event Grid topic )
   
   ![1.Create-ResourceGroup-EventGrid-PublishingEvents](https://github.com/KollaRajesh/aztd-AzureMessagingServices/blob/master/EventGrid/2.PublishingCustomEvents/PicsForNotes/1.Create-ResourceGroup-EventGrid-PublishingEvents.png)


2. Select EventGrid Topic resource.
   
   ![2.SelectEventGridTopic](https://github.com/KollaRajesh/aztd-AzureMessagingServices/blob/master/EventGrid/2.PublishingCustomEvents/PicsForNotes/2.SelectEventGridTopic.png)

2.1 Create EventGrid Topic 
   
   ![3.CreateTopicForEventGrid](https://github.com/KollaRajesh/aztd-AzureMessagingServices/blob/master/EventGrid/2.PublishingCustomEvents/PicsForNotes/3.CreateTopicForEventGrid.png)

3. Create logic app and can use this logic app as publisher to publish custome events to EventGrid Topic
   
   ![4.CreateWebRequestReceivedTemplate](https://github.com/KollaRajesh/aztd-AzureMessagingServices/blob/master/EventGrid/2.PublishingCustomEvents/PicsForNotes/4.CreateWebRequestReceivedTemplate.png)

4. Add new step after web request recieved
   
   ![5.AddNewStepAfterWebRequestReceivedStep](https://github.com/KollaRajesh/aztd-AzureMessagingServices/blob/master/EventGrid/2.PublishingCustomEvents/PicsForNotes/5.AddNewStepAfterWebRequestReceivedStep.png)

5. Choose Azure EventGrid publisher connector
   
    ![6.ChooseAzureEventGridPublisherConnector](https://github.com/KollaRajesh/aztd-AzureMessagingServices/blob/master/EventGrid/2.PublishingCustomEvents/PicsForNotes/6.ChooseAzureEventGridPublisherConnector.png)

6. Select publish event action

   ![7.SelectPublishEventAction](https://github.com/KollaRajesh/aztd-AzureMessagingServices/blob/master/EventGrid/2.PublishingCustomEvents/PicsForNotes/7.SelectPublishEventAction.png)

7. Connect publisher to EventGrid Topic
   
    ![8.PublisherConnectToTopic](https://github.com/KollaRajesh/aztd-AzureMessagingServices/blob/master/EventGrid/2.PublishingCustomEvents/PicsForNotes/8.PublisherConnectToTopic.png)

8. Publish event to EventGrid Topic
   
    ![9.PublishEventToTopic](https://github.com/KollaRajesh/aztd-AzureMessagingServices/blob/master/EventGrid/2.PublishingCustomEvents/PicsForNotes/9.PublishEventToTopic.png)
