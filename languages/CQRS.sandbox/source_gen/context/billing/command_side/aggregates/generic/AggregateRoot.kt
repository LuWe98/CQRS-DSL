package context.billing.command_side.aggregates.generic

interface AggregateRoot<ID> {
  fun getId(): ID
}