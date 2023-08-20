package context.catalog.query_side.queries

import context.catalog.query_side.queries.generic.Query
import context.catalog.query_side.dto.UserDto

data class GetUserByName(val name : String) : Query<UserDto>