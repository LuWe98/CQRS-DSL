package context.billing.query_side.dto

import context.billing.query_side.dto.OtherDerivedDto

data class DerivedDto(val id : String, val name : String, val otherValueObject : OtherDerivedDto)