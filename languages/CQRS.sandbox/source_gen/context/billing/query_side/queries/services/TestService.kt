package context.billing.query_side.queries.services

import context.billing.query_side.queries.services.TestService
import context.billing.query_side.dto.CustomDto
import java.util.UUID
import context.billing.query_side.repositories.ICustomDtoRepository

class TestService(
    private val customDtoRepository : ICustomDtoRepository
): ITestService {

  override fun queryOne(id : UUID) : String {
    TODO("Not yet implemented")
  }

  override fun queryTwo() : CustomDto {
    TODO("Not yet implemented")
  }

}