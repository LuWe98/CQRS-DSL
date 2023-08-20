package context.catalog.query_side.events.handler

import context.catalog.query_side.events.generic.EventHandler
import context.catalog.query_side.events.BookAddedToCatalogue

class BookAddedToCatalogueHandler(): EventHandler<BookAddedToCatalogue> {

  override fun handle(event : BookAddedToCatalogue) {
    TODO("Not yet implemented")
  }

}