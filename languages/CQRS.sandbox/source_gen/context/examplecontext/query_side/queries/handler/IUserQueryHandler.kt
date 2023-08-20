package context.examplecontext.query_side.queries.handler

import context.examplecontext.query_side.queries.handler.UserQueryHandler
import context.examplecontext.query_side.queries.GetUserByName
import context.examplecontext.query_side.dto.UserDto

interface IUserQueryHandler { 

  fun handle(query : GetUserByName) : UserDto

}