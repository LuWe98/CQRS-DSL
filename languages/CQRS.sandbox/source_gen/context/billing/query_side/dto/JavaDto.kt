package context.billing.query_side.dto

import java.util.Map.Entry
import java.util.AbstractList
import java.util.UUID

data class JavaDto(
    val java : UUID,
    val javaOther : AbstractList<Entry<String, *>>
)