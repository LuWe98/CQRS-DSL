package context.catalog.command_side.commands

import context.catalog.command_side.commands.generic.Command
import java.util.UUID

interface CampusCommand: Command

data class CreateCampus(
    val campusId : UUID,
    val campusLocation : String
): CampusCommand

