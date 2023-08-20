package context.billing.query_side.events.handler

import context.billing.query_side.events.generic.EventHandler
import context.billing.query_side.events.TestRootEvent
import context.billing.query_side.events.SeparateEventOne
import context.billing.query_side.events.SeparateEventTwo
import context.billing.query_side.repositories.ICustomDtoRepository

class TestRootEventHandler(
    private val customDtoRepository : ICustomDtoRepository
): EventHandler<TestRootEvent> {

  override fun handle(event : TestRootEvent) {
    TODO("Not yet implemented")
  }

  private fun handle(event : SeparateEventOne) {
    TODO("Not yet implemented")
  }

  private fun handle(event : SeparateEventTwo) {
    TODO("Not yet implemented")
  }

}