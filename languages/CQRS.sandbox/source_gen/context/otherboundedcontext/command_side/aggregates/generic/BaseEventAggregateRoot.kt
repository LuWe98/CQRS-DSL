package context.otherboundedcontext.command_side.aggregates.generic

import context.otherboundedcontext.command_side.aggregates.generic.EventAggregateRoot
import context.otherboundedcontext.command_side.events.generic.Event

abstract class BaseEventAggregateRoot<ID, EventType: Event>(
  private val id: ID
): EventAggregateRoot<ID, EventType> {

  private val changes = mutableListOf<EventType>()

  final override fun getId(): ID = id

  final override fun getChanges(): List<EventType> = changes.toList()

  final override fun recreateWith(events: List<EventType>) = events.forEach(::handleEvent)

  final override fun cacheChange(event: EventType) {
    changes.add(event)
    handleEvent(event)
  }

  abstract fun handleEvent(event: EventType)

}