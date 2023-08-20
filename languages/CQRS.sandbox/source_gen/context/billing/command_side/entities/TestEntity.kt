package context.billing.command_side.entities

import context.billing.command_side.entities.generic.Entity
import context.billing.command_side.valueobjects.OtherValueObject
import java.util.UUID

class TestEntity(id : String): Entity<String>(id) {

  private var property : OtherValueObject = TODO("Not yet implemented")

  fun getProperty() : OtherValueObject {
    return property
  }

  private fun testMethodWithSpecialName(name : String) : UUID {
    TODO("Not yet implemented")
  }

}