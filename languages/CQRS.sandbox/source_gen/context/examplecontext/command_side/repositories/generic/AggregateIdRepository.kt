package context.examplecontext.command_side.repositories.generic

import context.examplecontext.command_side.aggregates.generic.AggregateRoot
import context.examplecontext.command_side.repositories.generic.AggregateRepository

interface AggregateIdRepository<ID, Aggregate:  AggregateRoot<ID>>:AggregateRepository<Aggregate> {
  fun getById(id: ID): Aggregate
}