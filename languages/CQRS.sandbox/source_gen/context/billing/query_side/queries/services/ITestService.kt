package context.billing.query_side.queries.services

import context.billing.query_side.queries.services.TestService
import context.billing.query_side.dto.CustomDto
import java.util.UUID

interface ITestService { 

  fun queryOne(id : UUID) : String

  fun queryTwo() : CustomDto

}