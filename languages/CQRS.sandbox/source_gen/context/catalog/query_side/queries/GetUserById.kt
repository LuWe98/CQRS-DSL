package context.catalog.query_side.queries

import context.catalog.query_side.queries.generic.Query
import context.catalog.query_side.dto.UserDto

data class GetUserById(val id : String) : Query<UserDto>