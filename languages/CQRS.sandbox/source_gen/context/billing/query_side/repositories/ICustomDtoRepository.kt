package context.billing.query_side.repositories

import java.util.UUID
import context.billing.query_side.dto.CustomDto

interface ICustomDtoRepository {

  fun queryOne(id : UUID) : String

  fun queryTwo() : CustomDto

  fun testMethod(id : UUID)

}