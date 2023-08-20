package context.billing.command_side.repositories

import context.billing.command_side.repositories.IExampleAggregateRootRepository
import context.billing.command_side.aggregates.ExampleAggregateRoot
import context.billing.command_side.valueobjects.OriginalValueObject

class ExampleAggregateRootRepository(): IExampleAggregateRootRepository {

  override fun getById(id : Byte) : ExampleAggregateRoot {
    TODO("Not yet implemented")
  }

  override fun add(aggregate : ExampleAggregateRoot) {
    TODO("Not yet implemented")
  }

  override fun save(aggregate : ExampleAggregateRoot) {
    TODO("Not yet implemented")
  }

  override fun testMethod() : OriginalValueObject {
    TODO("Not yet implemented")
  }

}