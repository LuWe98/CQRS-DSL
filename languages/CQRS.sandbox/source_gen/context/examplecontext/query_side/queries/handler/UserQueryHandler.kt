package context.examplecontext.query_side.queries.handler

import context.examplecontext.query_side.queries.handler.UserQueryHandler
import context.examplecontext.query_side.queries.GetUserByName
import context.examplecontext.query_side.dto.UserDto

class UserQueryHandler(): IUserQueryHandler {

  override fun handle(query : GetUserByName) : UserDto {
    TODO("Not yet implemented")
  }

}