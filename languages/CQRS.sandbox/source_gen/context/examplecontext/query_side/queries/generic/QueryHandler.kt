package context.examplecontext.query_side.queries.generic

import context.examplecontext.query_side.queries.generic.Query

interface QueryHandler<QueryType: Query<Result>, out Result> {
  fun handle(query: QueryType): Result
}