package context.catalog.command_side.aggregates.generic

import context.catalog.command_side.events.generic.Event
import context.catalog.command_side.aggregates.generic.AggregateRoot

interface EventAggregateRoot<ID, EventType: Event> : AggregateRoot<ID> { 

  fun getChanges(): List<EventType>

  fun recreateWith(events: List<EventType>)

  fun cacheChange(event: EventType)

}