package context.billing.query_side.dto

import java.util.AbstractMap
import context.billing.query_side.dto.DerivedDto
import java.util.AbstractList
import java.util.UUID

data class OtherDerivedDto(val john : String, val age : Int, val list : List<String>, val specialIds : Map<AbstractList<AbstractMap<String, String>>, UUID>, val circle : DerivedDto)