package context.billing.command_side.commands.generic

import context.billing.command_side.commands.generic.Command

interface CommandHandler<in T: Command> {
  fun handle(command: T)
}