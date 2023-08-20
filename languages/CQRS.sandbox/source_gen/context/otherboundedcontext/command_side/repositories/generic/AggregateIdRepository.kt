package context.otherboundedcontext.command_side.repositories.generic

import context.otherboundedcontext.command_side.repositories.generic.AggregateRepository
import context.otherboundedcontext.command_side.aggregates.generic.AggregateRoot

interface AggregateIdRepository<ID, Aggregate:  AggregateRoot<ID>>:AggregateRepository<Aggregate> {
  fun getById(id: ID): Aggregate
}