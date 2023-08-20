package context.catalog.query_side.queries.generic

import context.catalog.query_side.queries.generic.QueryHandler
import kotlin.reflect.KClass
import context.catalog.query_side.queries.generic.Query

interface QueryContainer {
  fun <Result> registerQueryHandler(clazz: KClass<out Query<Result>>, queryHandler: QueryHandler<out Query<Result>, Result>)
  fun unregisterQueryHandler(clazz: KClass<out Query<*>>)
  fun getRegisteredQueryHandlers(): List<QueryHandler<Query<*>, *>>
  fun <Result> findQueryHandler(clazz: KClass<out Query<Result>>): QueryHandler<Query<Result>, Result>?
  fun <Result> getQueryHandler(clazz: KClass<out Query<Result>>): QueryHandler<Query<Result>, Result> = findQueryHandler(clazz)!!
}