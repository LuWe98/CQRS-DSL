package context.examplecontext.command_side.aggregates.generic

import context.examplecontext.command_side.aggregates.generic.AggregateRoot
import context.examplecontext.command_side.events.generic.Event

interface EventAggregateRoot<ID, EventType: Event> : AggregateRoot<ID> { 

  fun getChanges(): List<EventType>

  fun recreateWith(events: List<EventType>)

  fun cacheChange(event: EventType)

}