package context.billing.command_side.aggregates

import context.billing.command_side.aggregates.generic.EventAggregateRoot
import context.billing.command_side.events.TestRootEvent

interface ITestRoot: EventAggregateRoot<String, TestRootEvent> { 

  fun getOne() : String

}