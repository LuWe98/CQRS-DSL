package context.catalog.command_side.events

import context.catalog.command_side.events.generic.Event
import java.util.UUID

interface BookEvent: Event

data class BookAddedToCatalogue(
    val bookId : UUID,
    val metadataId : UUID,
    val campusId : UUID,
    val signature : String
): BookEvent

data class BookSignatureUpdated(
    val bookId : UUID,
    val campusId : UUID,
    val oldSignature : String,
    val newSignature : String
): BookEvent

