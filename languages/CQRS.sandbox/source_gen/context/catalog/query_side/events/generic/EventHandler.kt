package context.catalog.query_side.events.generic

import context.catalog.query_side.events.generic.Event

interface EventHandler<in E: Event> {
  fun handle(event: E)
}