package context.billing.query_side.events.generic

import context.billing.query_side.events.generic.Event

interface EventHandler<in E: Event> {
  fun handle(event: E)
}