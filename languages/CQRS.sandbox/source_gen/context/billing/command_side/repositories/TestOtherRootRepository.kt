package context.billing.command_side.repositories

import java.util.UUID
import context.billing.command_side.aggregates.TestOtherRoot
import context.billing.command_side.repositories.ITestOtherRootRepository

class TestOtherRootRepository(): ITestOtherRootRepository {

  override fun getById(id : UUID) : TestOtherRoot {
    TODO("Not yet implemented")
  }

  override fun add(aggregate : TestOtherRoot) {
    TODO("Not yet implemented")
  }

  override fun save(aggregate : TestOtherRoot) {
    TODO("Not yet implemented")
  }

}