package context.catalog.query_side.dto

import context.catalog.query_side.dto.BookCopy

data class MetadataDocument(val copies : List<BookCopy>, val id : String, val title : String, val fullName : String, val isbn : String, val name : String)