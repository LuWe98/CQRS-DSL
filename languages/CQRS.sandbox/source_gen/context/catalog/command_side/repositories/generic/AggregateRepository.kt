package context.catalog.command_side.repositories.generic

import context.catalog.command_side.aggregates.generic.AggregateRoot

interface AggregateRepository<Aggregate: AggregateRoot<*>> {

  fun save(aggregate: Aggregate)

  fun add(aggregate: Aggregate)

}