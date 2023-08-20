package context.examplecontext.command_side.repositories

import context.examplecontext.command_side.aggregates.Test
import context.examplecontext.command_side.valueobjects.UserId
import context.examplecontext.command_side.repositories.ITestRepository

class TestRepository(): ITestRepository {

  override fun getById(id : UserId) : Test {
    TODO("Not yet implemented")
  }

  override fun add(aggregate : Test) {
    TODO("Not yet implemented")
  }

  override fun save(aggregate : Test) {
    TODO("Not yet implemented")
  }

}