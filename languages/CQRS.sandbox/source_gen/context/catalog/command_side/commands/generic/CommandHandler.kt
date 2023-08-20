package context.catalog.command_side.commands.generic

import context.catalog.command_side.commands.generic.Command

interface CommandHandler<in T: Command> {
  fun handle(command: T)
}