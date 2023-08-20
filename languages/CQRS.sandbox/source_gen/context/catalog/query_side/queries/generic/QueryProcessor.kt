package context.catalog.query_side.queries.generic

import context.catalog.query_side.queries.generic.Query
import context.catalog.query_side.queries.processor.QueryProcessorImpl
import context.catalog.query_side.queries.generic.QueryContainer
import context.catalog.query_side.queries.processor.QueryContainerImpl
import context.catalog.query_side.queries.GetUserById
import context.catalog.query_side.queries.handler.GetUserByIdHandler
import context.catalog.query_side.queries.GetUserByName
import context.catalog.query_side.queries.handler.GetUserByNameHandler
import context.catalog.query_side.queries.GetAllUsers
import context.catalog.query_side.queries.handler.GetAllUsersHandler

interface QueryProcessor {
  fun <Result> process(query: Query<Result>): Result
}

fun initProcessor(
  getUserByIdHandler: GetUserByIdHandler,
  getUserByNameHandler: GetUserByNameHandler,
  getAllUsersHandler: GetAllUsersHandler,
  queryContainer: QueryContainer = QueryContainerImpl()
): QueryProcessor {
  queryContainer.registerQueryHandler(GetUserById::class, getUserByIdHandler)
  queryContainer.registerQueryHandler(GetUserByName::class, getUserByNameHandler)
  queryContainer.registerQueryHandler(GetAllUsers::class, getAllUsersHandler)
  return QueryProcessorImpl(queryContainer)
}