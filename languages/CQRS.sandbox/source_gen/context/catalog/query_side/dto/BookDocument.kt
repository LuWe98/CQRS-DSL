package context.catalog.query_side.dto


data class BookDocument(
    val bookId : String,
    val metadataId : String,
    val campusId : String,
    val location : String,
    val signature : String
)