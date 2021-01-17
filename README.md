# Azure Message services 

There are two types fo data in message services 

1. Event

   - Light weight notification of a condition or status change 
   - just has information about what happened so consumer 
   - notified something happened 
   - Publisher of event has no expectation how the event is handled 
   - Consumer of event  decides what do with event 

    There are  two of events  
      1. Discrete unit
      2.  Series of units
      
   ![EventFlow.png](https://github.com/KollaRajesh/aztd-AzureMessagingServices/blob/master/EventGrid/PicsForNotes/EventFlow.png)


2. Message

   - Contains raw data  produced by  a  service.
   - Publisher of the message has an expectation how consumer
   - can handle message
   - Contract exists between two sides

There are three types of messaging services in Azure.

  1. Azure EventGrid 
  2. EventHub
  3. ServiceBus


        Service	|        Event Type              |	           When to use
      ------------|--------------------------------|-------------------------------------------
      Event Grid  | Event distribution (discrete)  |   React to status changes
      Event Hubs  | Event streaming (series)	     | Telemetry and distributed data streaming
      Service Bus | Message	                     | Order processing and financial transactions



- EventGrid:

    [Workshop - Consuming Built-In Azure Resource events](https://github.com/KollaRajesh/aztd-AzureMessagingServices/tree/master/EventGrid/1.ConsumingBuilt-In%20Azure%20Resource%20events)
    
    [Workshop - Publishing Custom events](https://github.com/KollaRajesh/aztd-AzureMessagingServices/tree/master/EventGrid/2.PublishingCustomEvents)
  
    [Workshop - Subscribe Custom events](https://github.com/KollaRajesh/aztd-AzureMessagingServices/tree/master/EventGrid/3.SubscribeCustomEvents)

- EventHub
 
    [Workshop - TBD](#)

- ServiceBus
    [Workshop - TBD](#)
