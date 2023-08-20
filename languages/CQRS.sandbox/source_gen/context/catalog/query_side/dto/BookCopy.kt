package context.catalog.query_side.dto

import java.util.UUID

data class BookCopy(val location : String, val id : String, val campusId : UUID, val signature : String)