package context.billing.command_side.valueobjects

import java.util.AbstractMap
import java.util.AbstractList
import java.util.UUID
import context.billing.command_side.valueobjects.OriginalValueObject

data class OtherValueObject(
    val age : Int,
    val circle : OriginalValueObject,
    val list : List<String>,
    val specialIds : Map<AbstractList<AbstractMap<String, String>>, UUID>
) { 

  fun hallo(name : String, age : Int) : Double {
    TODO("Not yet implemented")
  }

  private fun test(id : String) {
    TODO("Not yet implemented")
  }

}