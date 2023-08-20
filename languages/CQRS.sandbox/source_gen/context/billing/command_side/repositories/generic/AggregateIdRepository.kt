package context.billing.command_side.repositories.generic

import context.billing.command_side.repositories.generic.AggregateRepository
import context.billing.command_side.aggregates.generic.AggregateRoot

interface AggregateIdRepository<ID, Aggregate:  AggregateRoot<ID>>:AggregateRepository<Aggregate> {
  fun getById(id: ID): Aggregate
}