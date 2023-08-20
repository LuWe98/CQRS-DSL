package context.catalog.query_side.queries

import context.catalog.query_side.queries.generic.Query
import context.catalog.query_side.dto.UserDto

object GetAllUsers : Query<List<UserDto>>