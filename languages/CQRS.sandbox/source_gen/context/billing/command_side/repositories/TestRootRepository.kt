package context.billing.command_side.repositories

import context.billing.command_side.repositories.ITestRootRepository
import context.billing.command_side.aggregates.TestRoot

class TestRootRepository(): ITestRootRepository {

  override fun getById(id : String) : TestRoot {
    TODO("Not yet implemented")
  }

  override fun add(aggregate : TestRoot) {
    TODO("Not yet implemented")
  }

  override fun save(aggregate : TestRoot) {
    TODO("Not yet implemented")
  }

}