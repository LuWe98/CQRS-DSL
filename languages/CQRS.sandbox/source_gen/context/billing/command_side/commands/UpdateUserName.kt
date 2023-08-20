package context.billing.command_side.commands

import context.billing.command_side.commands.generic.Command

data class UpdateUserName(
    val id : String,
    val newName : String
): Command