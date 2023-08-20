package context.otherboundedcontext.query_side.queries.handler

import context.otherboundedcontext.query_side.queries.generic.QueryHandler
import context.otherboundedcontext.query_side.queries.OtherContextTestQuery

class OtherContextTestQueryHandler(): QueryHandler<OtherContextTestQuery, String> {

  override fun handle(query : OtherContextTestQuery) : String {
    TODO("Not yet implemented")
  }

}