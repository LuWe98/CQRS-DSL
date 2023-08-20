package context.billing.command_side.repositories

import context.billing.command_side.aggregates.ExampleAggregateRoot
import context.billing.command_side.repositories.generic.AggregateIdRepository
import context.billing.command_side.valueobjects.OriginalValueObject

interface IExampleAggregateRootRepository: AggregateIdRepository<Byte, ExampleAggregateRoot>{

  fun testMethod() : OriginalValueObject

}