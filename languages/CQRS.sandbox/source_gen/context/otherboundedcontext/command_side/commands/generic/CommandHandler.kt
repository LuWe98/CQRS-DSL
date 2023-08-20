package context.otherboundedcontext.command_side.commands.generic

import context.otherboundedcontext.command_side.commands.generic.Command

interface CommandHandler<in T: Command> {
  fun handle(command: T)
}