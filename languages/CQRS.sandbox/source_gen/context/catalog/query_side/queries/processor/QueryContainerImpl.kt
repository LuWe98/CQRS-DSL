package context.catalog.query_side.queries.processor

import context.catalog.query_side.queries.generic.QueryHandler
import kotlin.reflect.KClass
import context.catalog.query_side.queries.generic.QueryContainer
import context.catalog.query_side.queries.generic.Query

class QueryContainerImpl(): QueryContainer {

  private val container = mutableMapOf<KClass<*>, QueryHandler<Query<*>, *>>()

  @Suppress("UNCHECKED_CAST")
  override fun <Result> registerQueryHandler(clazz: KClass<out Query<Result>>, queryHandler: QueryHandler<out Query<Result>, Result>) {
    container[clazz] = queryHandler as QueryHandler<Query<*>, *>
  }

  override fun unregisterQueryHandler(clazz: KClass<out Query<*>>) {
    container.remove(clazz)
  }

  override fun getRegisteredQueryHandlers(): List<QueryHandler<Query<*>, *>> {
    return container.values.toList()
  }

  @Suppress("UNCHECKED_CAST")
  override fun <Result> findQueryHandler(clazz: KClass<out Query<Result>>): QueryHandler<Query<Result>, Result>? {
    return container[clazz] as QueryHandler<Query<Result>, Result>?
  }

}