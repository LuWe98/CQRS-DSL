package context.catalog.command_side.repositories

import context.catalog.command_side.repositories.IBookRepository
import context.catalog.command_side.aggregates.Book

class BookRepository(): IBookRepository {

  override fun getById(id : String) : Book {
    TODO("Not yet implemented")
  }

  override fun add(aggregate : Book) {
    TODO("Not yet implemented")
  }

  override fun save(aggregate : Book) {
    TODO("Not yet implemented")
  }

}