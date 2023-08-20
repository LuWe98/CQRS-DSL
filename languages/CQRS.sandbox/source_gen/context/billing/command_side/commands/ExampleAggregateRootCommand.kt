package context.billing.command_side.commands

import context.billing.command_side.commands.generic.Command

interface ExampleAggregateRootCommand: Command

data class CommandOne(val age : Int, val names : List<String>): ExampleAggregateRootCommand

object CommandTwo: ExampleAggregateRootCommand

