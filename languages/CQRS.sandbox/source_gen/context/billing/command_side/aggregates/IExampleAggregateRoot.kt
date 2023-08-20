package context.billing.command_side.aggregates

import context.billing.command_side.events.ExampleAggregateRootEvent
import context.billing.command_side.aggregates.generic.EventAggregateRoot

interface IExampleAggregateRoot: EventAggregateRoot<Byte, ExampleAggregateRootEvent> { 

  fun getName() : String

}