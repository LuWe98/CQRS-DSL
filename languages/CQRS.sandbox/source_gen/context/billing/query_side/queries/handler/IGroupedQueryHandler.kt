package context.billing.query_side.queries.handler

import context.billing.query_side.dto.User
import context.billing.query_side.queries.GetUser
import context.billing.query_side.queries.SingleQuery
import context.billing.query_side.queries.handler.GroupedQueryHandler

interface IGroupedQueryHandler { 

  fun handle(query : GetUser) : User

  fun handle(query : SingleQuery) : Array<String>

}