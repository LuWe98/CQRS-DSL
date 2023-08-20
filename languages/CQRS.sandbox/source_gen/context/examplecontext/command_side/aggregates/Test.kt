package context.examplecontext.command_side.aggregates

import context.examplecontext.command_side.aggregates.ITest
import context.examplecontext.command_side.valueobjects.UserId
import context.examplecontext.command_side.events.TestEvent
import context.examplecontext.command_side.aggregates.generic.BaseEventAggregateRoot

class Test(id : UserId): ITest, BaseEventAggregateRoot<UserId, TestEvent>(id) {

  private var nameList : List<String> = TODO("Not yet implemented")

  private var nameCountMap : Map<String, Int> = TODO("Not yet implemented")

  override fun handleEvent(event : TestEvent) {
    TODO("Not yet implemented")
  }

}