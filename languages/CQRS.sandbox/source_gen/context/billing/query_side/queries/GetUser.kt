package context.billing.query_side.queries

import context.billing.query_side.queries.generic.Query
import context.billing.query_side.dto.User

data class GetUser(
    val id : String
) : Query<User>