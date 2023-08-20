package context.catalog.command_side.commands

import context.catalog.command_side.commands.generic.Command
import java.util.UUID

interface MetadataCommand: Command

data class AddMetadata(
    val metadataId : UUID,
    val title : String,
    val authorName : String,
    val isbn : String,
    val publisher : String
): MetadataCommand

