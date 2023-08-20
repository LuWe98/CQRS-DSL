package context.otherboundedcontext.command_side.aggregates.generic

import context.otherboundedcontext.command_side.aggregates.generic.AggregateRoot
import context.otherboundedcontext.command_side.events.generic.Event

interface EventAggregateRoot<ID, EventType: Event> : AggregateRoot<ID> { 

  fun getChanges(): List<EventType>

  fun recreateWith(events: List<EventType>)

  fun cacheChange(event: EventType)

}