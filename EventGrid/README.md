## Event:
     - Light weight notification of a condition or status change 
     - just has information about what happened so consumer 
     - notified something happened 
     - Publisher of event has no expectation how the event is handled 
     - Consumer of event  decides what do with event 

  There are  two of events  
      1. Discrete unit
      2.  Series of units
      

  ![EventFlow.png](https://github.com/KollaRajesh/aztd-AzureMessagingServices/blob/master/EventGrid/PicsForNotes/EventFlow.png)


## Azure EventGrid :

    Azure Event Grid is fully-managed event routing service which allows for uniform event consumption using publish-subscribe model allowing
    react to relevant events across both azure and non -azure in near -real fashion.

 >**Note**: EvenGrid is good choice for discrete event type.


###  Key Concepts

    Event :  What happened
    Event Source :  where the event took place
    Topic :  The endpoint where publishers send events 
    Event Subscription:  the endpoint  or built -in  mechanism to route events , sometimes to  more than one handler 
    Event handler:   The app  or service reacting to the event

### Examples for Event Handler

  -  Serverless code  (Azure functions)
  -  Serverless workflow and integration (Logic apps)
  -  Buffering and CompetingConsumers  (Event Hubs and Storage queues)
  -  Other services  and Applications ( Web Hooks ,  Azure Automations)

### Scenarios:-

    1. Serverless Application Architecture  :- React  instantly to events  on Blob storage and process data
    2. Operations automation :  Notify  azure automation when Azure resource change
    3. Application integration :  Connect your app with other services with Event Grid Topics

### Key Benefits
   
   -  Simplicity   point  and click  to aim events from your azure resources to any event handler or endpoint
   -  Advanced filtering:  Filter on event type or event publish  path   to make sure event handlers only receive relevant events
   -  Fan-out:  Subscribe several endpoints to the same event to send copies of  the event to send copies  of the event  to as many places as needed
   -  Reliability:   24-hour retry with exponential backoff to make sure  events are delivered
   -  Cost: only $0.60 per 1,000,000 operations

### Capabilities

   -  Pay-per event :   pay only for the amount you use Event  grid
   -  High throughput :  Build  high-volume workloads on event grid with  support for millions of events per second.
   -  Dynamic Scalable : At least once delivery ( if didn't deliver in 24 hours then  move to dead letter events
   -  Built-in Events:  Get up and running quickly  with resource-defined built-in events
   -  Custom Events:  Use Event Grid route , filter and reliably deliver  custom events in your app
   
   

[Workshop-1 - Consuming Built-In Azure Resource events](https://github.com/KollaRajesh/aztd-AzureMessagingServices/tree/master/EventGrid/1.ConsumingBuilt-In%20Azure%20Resource%20events)
    
[Workshop-2 - Publishing Custom events](https://github.com/KollaRajesh/aztd-AzureMessagingServices/tree/master/EventGrid/2.PublishingCustomEvents)
  
[Workshop-3 - Subscribe Custom events](https://github.com/KollaRajesh/aztd-AzureMessagingServices/tree/master/EventGrid/3.SubscribeCustomEvents)

