package context.billing.command_side.aggregates

import context.billing.command_side.events.TestOtherRootEvent
import context.billing.command_side.aggregates.ITestOtherRoot
import java.util.UUID
import context.billing.command_side.aggregates.generic.BaseEventAggregateRoot

class TestOtherRoot(id : UUID): ITestOtherRoot, BaseEventAggregateRoot<UUID, TestOtherRootEvent>(id) {

  override fun handleEvent(event : TestOtherRootEvent) {
    TODO("Not yet implemented")
  }

}