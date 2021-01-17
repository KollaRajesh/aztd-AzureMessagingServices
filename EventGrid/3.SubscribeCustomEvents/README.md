# Consume Custom Events by multiple EventGrid Subscriber event handler from EventGrid Topic

1.  Create logic app to handle events  from EventGrid subscriber 
   ![1.CreateLogicAppToHandleLoanEvents](https://github.com/KollaRajesh/aztd-AzureMessagingServices/blob/master/EventGrid/3.SubscribeCustomEvents/PicsForNotes/1.CreateLogicAppToHandleLoanEvents.png)


2. Select WebRequest receive template to webhook to logic app
   ![2.SelectWebRequestReceiveTemplate](https://github.com/KollaRajesh/aztd-AzureMessagingServices/blob/master/EventGrid/3.SubscribeCustomEvents/PicsForNotes/2.SelectWebRequestReceiveTemplate.png)

3. Create  event subscriber for topic . Subscriber has capabilities to filter event types which helps to pick only those filtered event types to  get pushed to destination    handler
     and add endpoint as webhook to connect eventhandler (in this case Logicapp)

    ![3.CreateEventSubScription_AddWebHookEndpoint](https://github.com/KollaRajesh/aztd-AzureMessagingServices/blob/master/EventGrid/3.SubscribeCustomEvents/PicsForNotes/3.CreateEventSubScription_AddWebHookEndpoint.png)

4. Publish custom events to EventGrid Topic by using publisher then EventGrid Topic will dispatch events to all registered subscribers

   ![4.PublishCustomEventsAndEventDispatchedtoEventHandler](https://github.com/KollaRajesh/aztd-AzureMessagingServices/blob/master/EventGrid/3.SubscribeCustomEvents/PicsForNotes/4.PublishCustomEventsAndEventDispatchedtoEventHandler.png)

5. Create new storage queue in storage account.
   ![5.CreateNewStorageQueue](https://github.com/KollaRajesh/aztd-AzureMessagingServices/blob/master/EventGrid/3.SubscribeCustomEvents/PicsForNotes/5.CreateNewStorageQueue.png)

6. Create another event subscriber 
    ![6.CreateAnotherEventSubscriber](https://github.com/KollaRajesh/aztd-AzureMessagingServices/blob/master/EventGrid/3.SubscribeCustomEvents/PicsForNotes/6.CreateAnotherEventSubscriber.png)

7. attach storage queue as EventHandler endpoint in Eventgrid subscriber
   ![6.1CreateAnotherEventSubscriberwithStorageQueueEndPoint](https://github.com/KollaRajesh/aztd-AzureMessagingServices/blob/master/EventGrid/3.SubscribeCustomEvents/PicsForNotes/6.1.CreateAnotherEventSubscriberwithStorageQueueEndPoint.png)

   ![7.SelectStorageAccount](https://github.com/KollaRajesh/aztd-AzureMessagingServices/blob/master/EventGrid/3.SubscribeCustomEvents/PicsForNotes/7.SelectStorageAccount.png)

   ![8.CreateEventSubscriberwithStorageQueueEndPointwithDetails](https://github.com/KollaRajesh/aztd-AzureMessagingServices/blob/master/EventGrid/3.SubscribeCustomEvents/PicsForNotes/8.CreateEventSubscriberwithStorageQueueEndPointwithDetails.png)

8. Before publishing custom event , State of storage container and Run history of logic app (Event Handler)
    ![9.EventStateBeforePublishingEvents](https://github.com/KollaRajesh/aztd-AzureMessagingServices/blob/master/EventGrid/3.SubscribeCustomEvents/PicsForNotes/9.EventStateBeforePublishingEvents.png)

9. After publishing custom event , State of storage container and Run history of logic app (Event Handler)
    ![10.EventStateAfterPublishingEvents](https://github.com/KollaRajesh/aztd-AzureMessagingServices/blob/master/EventGrid/3.SubscribeCustomEvents/PicsForNotes/10.EventStateAfterPublishingEvents.png)

10.  Same EventGrid to all Subscriber event handler
    ![11.ViewingSameEventDataInMultipleEventHanderAfterPublishingEvents](https://github.com/KollaRajesh/aztd-AzureMessagingServices/blob/master/EventGrid/3.SubscribeCustomEvents/PicsForNotes/11.ViewingSameEventDataInMultipleEventHanderAfterPublishingEvents.png)