package context.catalog.command_side.commands

import context.catalog.command_side.commands.generic.Command
import java.util.UUID

interface BookCommand: Command

data class AddBook(
    val bookId : UUID,
    val metadataId : UUID,
    val campusId : UUID,
    val signature : String
): BookCommand

data class UpdateBookSignature(
    val bookId : UUID,
    val newSignature : String
): BookCommand

