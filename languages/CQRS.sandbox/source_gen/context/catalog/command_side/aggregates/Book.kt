package context.catalog.command_side.aggregates

import context.catalog.command_side.events.BookAddedToCatalogue
import context.catalog.command_side.aggregates.IBook
import context.catalog.command_side.events.BookSignatureUpdated
import context.catalog.command_side.aggregates.generic.BaseEventAggregateRoot
import context.catalog.command_side.valueobjects.Signature
import context.catalog.command_side.valueobjects.CampusId
import context.catalog.command_side.commands.UpdateBookSignature
import context.catalog.command_side.events.BookEvent
import context.catalog.command_side.valueobjects.MetadataId

class Book(id : String): IBook, BaseEventAggregateRoot<String, BookEvent>(id) {

  private var metadataId : MetadataId = TODO("Not yet implemented")

  private var campusId : CampusId = TODO("Not yet implemented")

  private var signature : Signature = TODO("Not yet implemented")

  override fun getMetadataId() : MetadataId {
    return metadataId
  }

  override fun getCampusId() : CampusId {
    return campusId
  }

  override fun getSignature() : Signature {
    return signature
  }

  override fun execute(command : UpdateBookSignature) {
    TODO("Not yet implemented")
  }

  override fun handleEvent(event : BookEvent) {
    TODO("Not yet implemented")
  }

  private fun handle(event : BookAddedToCatalogue) {
    TODO("Not yet implemented")
  }

  private fun handle(event : BookSignatureUpdated) {
    TODO("Not yet implemented")
  }

}