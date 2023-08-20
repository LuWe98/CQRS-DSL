package context.billing.command_side.commands.handler

import context.billing.command_side.commands.generic.CommandHandler
import context.billing.command_side.repositories.ITestRootRepository
import context.billing.command_side.commands.Test

class TestHandler(
    private val testRootRepository : ITestRootRepository
): CommandHandler<Test> {

  override fun handle(command : Test) {
    TODO("Not yet implemented")
  }

}