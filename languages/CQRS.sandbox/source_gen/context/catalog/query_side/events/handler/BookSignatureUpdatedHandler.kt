package context.catalog.query_side.events.handler

import context.catalog.query_side.events.generic.EventHandler
import context.catalog.query_side.events.BookSignatureUpdated

class BookSignatureUpdatedHandler(): EventHandler<BookSignatureUpdated> {

  override fun handle(event : BookSignatureUpdated) {
    TODO("Not yet implemented")
  }

}