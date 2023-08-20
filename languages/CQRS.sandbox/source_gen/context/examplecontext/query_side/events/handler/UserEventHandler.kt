package context.examplecontext.query_side.events.handler

import context.examplecontext.query_side.events.UserEvent
import context.examplecontext.query_side.events.generic.EventHandler

class UserEventHandler(): EventHandler<UserEvent> {

  override fun handle(event : UserEvent) {
    TODO("Not yet implemented")
  }

}