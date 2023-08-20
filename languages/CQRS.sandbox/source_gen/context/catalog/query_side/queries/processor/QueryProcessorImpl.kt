package context.catalog.query_side.queries.processor

import context.catalog.query_side.queries.generic.QueryContainer
import context.catalog.query_side.queries.generic.QueryProcessor
import context.catalog.query_side.queries.generic.Query

class QueryProcessorImpl(
  private val queryHandlerContainer: QueryContainer
): QueryProcessor{

  override fun <Result> process(query: Query<Result>): Result {
    return queryHandlerContainer.getQueryHandler(query::class).handle(query)
  }

}