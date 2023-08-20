package context.billing.command_side.aggregates

import context.billing.command_side.events.ExampleAggregateRootEvent
import context.billing.command_side.events.TestEvent
import context.billing.command_side.aggregates.IExampleAggregateRoot
import context.billing.command_side.events.TestEventTwo
import context.billing.command_side.aggregates.generic.BaseEventAggregateRoot

class ExampleAggregateRoot(id : Byte): IExampleAggregateRoot, BaseEventAggregateRoot<Byte, ExampleAggregateRootEvent>(id) {

  private var name : String = TODO("Not yet implemented")

  override fun getName() : String {
    return name
  }

  private fun testMethod(id : String) : Byte {
    TODO("Not yet implemented")
  }

  override fun handleEvent(event : ExampleAggregateRootEvent) {
    TODO("Not yet implemented")
  }

  private fun handle(event : TestEvent) {
    TODO("Not yet implemented")
  }

  private fun handle(event : TestEventTwo) {
    TODO("Not yet implemented")
  }

}