package context.examplecontext.query_side.queries

import context.examplecontext.query_side.queries.generic.Query
import context.examplecontext.query_side.dto.UserDto

data class GetUserById(val id : String) : Query<UserDto>