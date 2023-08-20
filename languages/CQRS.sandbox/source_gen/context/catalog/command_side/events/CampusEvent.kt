package context.catalog.command_side.events

import context.catalog.command_side.events.generic.Event
import java.util.UUID

interface CampusEvent: Event

data class MetadataAdded(
    val metadataId : UUID,
    val title : String,
    val authorName : String,
    val isbn : String,
    val publisher : String
): CampusEvent

