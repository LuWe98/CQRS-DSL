package context.examplecontext.command_side.repositories

import context.examplecontext.command_side.aggregates.User
import context.examplecontext.command_side.repositories.IUserRepository

class UserRepository(): IUserRepository {

  override fun getById(id : String) : User {
    TODO("Not yet implemented")
  }

  override fun add(aggregate : User) {
    TODO("Not yet implemented")
  }

  override fun save(aggregate : User) {
    TODO("Not yet implemented")
  }

}