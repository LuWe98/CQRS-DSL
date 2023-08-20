package context.catalog.query_side.queries.handler

import context.catalog.query_side.queries.generic.QueryHandler
import context.catalog.query_side.queries.GetUserByName
import context.catalog.query_side.dto.UserDto

class GetUserByNameHandler(): QueryHandler<GetUserByName, UserDto> {

  override fun handle(query : GetUserByName) : UserDto {
    TODO("Not yet implemented")
  }

}