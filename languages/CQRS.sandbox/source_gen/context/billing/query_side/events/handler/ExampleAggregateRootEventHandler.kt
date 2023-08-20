package context.billing.query_side.events.handler

import context.billing.query_side.events.generic.EventHandler
import context.billing.query_side.events.TestEvent
import context.billing.query_side.events.TestEventTwo
import context.billing.query_side.events.ExampleAggregateRootEvent
import context.billing.query_side.repositories.ICustomDtoRepository

class ExampleAggregateRootEventHandler(
    private val customDtoRepository : ICustomDtoRepository
): EventHandler<ExampleAggregateRootEvent> {

  override fun handle(event : ExampleAggregateRootEvent) {
    TODO("Not yet implemented")
  }

  private fun handle(event : TestEvent) {
    TODO("Not yet implemented")
  }

  private fun handle(event : TestEventTwo) {
    TODO("Not yet implemented")
  }

}