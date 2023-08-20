package context.examplecontext.command_side.aggregates

import java.util.Date
import context.examplecontext.command_side.events.UserEvent
import context.examplecontext.command_side.aggregates.IUser
import context.examplecontext.command_side.valueobjects.Address
import context.examplecontext.command_side.aggregates.generic.BaseEventAggregateRoot

class User(id : String): IUser, BaseEventAggregateRoot<String, UserEvent>(id) {

  private var userName : String = TODO("Not yet implemented")

  private var dateOfBirth : Date = TODO("Not yet implemented")

  private var address : Address = TODO("Not yet implemented")

  override fun getUserName() : String {
    return userName
  }

  override fun getDateOfBirth() : Date {
    return dateOfBirth
  }

  override fun getAddress() : Address {
    return address
  }

  override fun handleEvent(event : UserEvent) {
    TODO("Not yet implemented")
  }

}