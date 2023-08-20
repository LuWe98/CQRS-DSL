package context.otherboundedcontext.command_side.aggregates.generic

interface AggregateRoot<ID> {
  fun getId(): ID
}