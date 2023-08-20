package context.otherboundedcontext.query_side.events.generic

import context.otherboundedcontext.query_side.events.generic.Event

interface EventHandler<in E: Event> {
  fun handle(event: E)
}