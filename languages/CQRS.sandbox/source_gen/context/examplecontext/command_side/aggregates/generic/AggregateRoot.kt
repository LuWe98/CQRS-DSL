package context.examplecontext.command_side.aggregates.generic

interface AggregateRoot<ID> {
  fun getId(): ID
}