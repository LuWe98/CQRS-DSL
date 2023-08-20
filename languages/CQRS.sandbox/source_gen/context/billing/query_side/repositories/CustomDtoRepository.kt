package context.billing.query_side.repositories

import context.billing.query_side.repositories.ICustomDtoRepository
import java.util.UUID
import context.billing.query_side.dto.CustomDto

class CustomDtoRepository(): ICustomDtoRepository {

  override fun queryOne(id : UUID) : String {
    TODO("Not yet implemented")
  }

  override fun queryTwo() : CustomDto {
    TODO("Not yet implemented")
  }

  override fun testMethod(id : UUID) {
    TODO("Not yet implemented")
  }

}