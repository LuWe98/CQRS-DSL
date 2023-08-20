package context.billing.command_side.commands.handler

import context.billing.command_side.repositories.IExampleAggregateRootRepository
import context.billing.command_side.commands.CommandTwo
import context.billing.command_side.commands.CommandOne
import context.billing.command_side.commands.generic.CommandHandler
import context.billing.command_side.repositories.ITestRootRepository
import context.billing.command_side.commands.ExampleAggregateRootCommand
import context.billing.command_side.repositories.ITestOtherRootRepository

class ExampleAggregateRootCommandHandler(
    private val testRootRepository : ITestRootRepository,
    private val testOtherRootRepository : ITestOtherRootRepository,
    private val exampleAggregateRootRepository : IExampleAggregateRootRepository
): CommandHandler<ExampleAggregateRootCommand> {

  override fun handle(command : ExampleAggregateRootCommand) {
    TODO("Not yet implemented")
  }

  private fun handle(command : CommandOne) {
    TODO("Not yet implemented")
  }

  private fun handle(command : CommandTwo) {
    TODO("Not yet implemented")
  }

}