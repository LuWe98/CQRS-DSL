package context.billing.query_side.events

import context.billing.query_side.events.generic.Event
import java.util.UUID

interface ExampleAggregateRootEvent: Event

data class TestEvent(
    val id : Long
): ExampleAggregateRootEvent

data class TestEventTwo(
    val name : UUID
): ExampleAggregateRootEvent

