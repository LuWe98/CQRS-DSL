package context.billing.query_side.queries.handler

import context.billing.query_side.dto.User
import context.billing.query_side.queries.GetUser
import context.billing.query_side.queries.SingleQuery
import context.billing.query_side.queries.handler.GroupedQueryHandler

class GroupedQueryHandler(): IGroupedQueryHandler {

  override fun handle(query : GetUser) : User {
    TODO("Not yet implemented")
  }

  override fun handle(query : SingleQuery) : Array<String> {
    TODO("Not yet implemented")
  }

}