package context.billing.command_side.aggregates

import context.billing.command_side.aggregates.ITestRoot
import context.billing.command_side.events.SeparateEventTwo
import context.billing.command_side.aggregates.generic.BaseEventAggregateRoot
import context.billing.command_side.events.SeparateEventOne
import context.billing.command_side.events.TestRootEvent

class TestRoot(
    id : String,
    private val name : String
): ITestRoot, BaseEventAggregateRoot<String, TestRootEvent>(id) {

  private var one : String = TODO("Not yet implemented")

  private var two : String = TODO("Not yet implemented")

  override fun getOne() : String {
    return one
  }

  override fun handleEvent(event : TestRootEvent) {
    TODO("Not yet implemented")
  }

  private fun handle(event : SeparateEventOne) {
    TODO("Not yet implemented")
  }

  private fun handle(event : SeparateEventTwo) {
    TODO("Not yet implemented")
  }

}