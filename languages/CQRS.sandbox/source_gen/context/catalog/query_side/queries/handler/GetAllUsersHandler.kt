package context.catalog.query_side.queries.handler

import context.catalog.query_side.queries.GetAllUsers
import context.catalog.query_side.queries.generic.QueryHandler
import context.catalog.query_side.dto.UserDto

class GetAllUsersHandler(): QueryHandler<GetAllUsers, List<UserDto>> {

  override fun handle(query : GetAllUsers) : List<UserDto> {
    TODO("Not yet implemented")
  }

}