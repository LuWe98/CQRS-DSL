package context.billing.command_side.events

import context.billing.command_side.events.generic.Event
import java.util.UUID

interface ExampleAggregateRootEvent: Event

data class TestEvent(
    val id : Long
): ExampleAggregateRootEvent

data class TestEventTwo(
    val name : UUID
): ExampleAggregateRootEvent

