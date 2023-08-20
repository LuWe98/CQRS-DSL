package context.examplecontext.query_side.queries

import context.examplecontext.query_side.queries.generic.Query
import context.examplecontext.query_side.dto.UserDto

data class GetUserByName(val name : String) : Query<UserDto>