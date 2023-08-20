package context.catalog.query_side.queries.handler

import context.catalog.query_side.queries.generic.QueryHandler
import context.catalog.query_side.queries.GetUserById
import context.catalog.query_side.dto.UserDto

class GetUserByIdHandler(): QueryHandler<GetUserById, UserDto> {

  override fun handle(query : GetUserById) : UserDto {
    TODO("Not yet implemented")
  }

}