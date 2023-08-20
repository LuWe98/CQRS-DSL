package context.examplecontext.command_side.aggregates

import java.util.Date
import context.examplecontext.command_side.events.UserEvent
import context.examplecontext.command_side.valueobjects.Address
import context.examplecontext.command_side.aggregates.generic.EventAggregateRoot

interface IUser: EventAggregateRoot<String, UserEvent> { 

  fun getUserName() : String

  fun getDateOfBirth() : Date

  fun getAddress() : Address

}