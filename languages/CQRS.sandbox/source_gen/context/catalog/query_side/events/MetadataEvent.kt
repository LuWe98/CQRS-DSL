package context.catalog.query_side.events

import context.catalog.query_side.events.generic.Event
import java.util.UUID

interface MetadataEvent: Event

data class CampusOpened(
    val campusId : UUID,
    val campusLocation : String
): MetadataEvent

