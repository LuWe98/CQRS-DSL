package context.catalog.command_side.repositories.generic

import context.catalog.command_side.aggregates.generic.AggregateRoot
import context.catalog.command_side.repositories.generic.AggregateRepository

interface AggregateIdRepository<ID, Aggregate:  AggregateRoot<ID>>:AggregateRepository<Aggregate> {
  fun getById(id: ID): Aggregate
}