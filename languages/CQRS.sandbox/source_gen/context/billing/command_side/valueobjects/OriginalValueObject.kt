package context.billing.command_side.valueobjects

import context.billing.command_side.valueobjects.OtherValueObject

data class OriginalValueObject(
    val id : String,
    val name : String,
    val otherValueObject : OtherValueObject
)