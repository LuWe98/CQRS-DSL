package context.examplecontext.query_side.queries.handler

import context.examplecontext.query_side.queries.generic.QueryHandler
import context.examplecontext.query_side.queries.GetUserById
import context.examplecontext.query_side.dto.UserDto

class GetUserByIdHandler(): QueryHandler<GetUserById, UserDto> {

  override fun handle(query : GetUserById) : UserDto {
    TODO("Not yet implemented")
  }

}