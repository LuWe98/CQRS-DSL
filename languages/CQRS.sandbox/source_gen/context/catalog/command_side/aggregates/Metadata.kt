package context.catalog.command_side.aggregates

import context.catalog.command_side.valueobjects.Title
import context.catalog.command_side.events.MetadataEvent
import context.catalog.command_side.events.CampusOpened
import context.catalog.command_side.aggregates.generic.BaseEventAggregateRoot
import context.catalog.command_side.valueobjects.ISBN
import context.catalog.command_side.aggregates.IMetadata
import context.catalog.command_side.valueobjects.Author
import context.catalog.command_side.valueobjects.Publisher

class Metadata(id : String): IMetadata, BaseEventAggregateRoot<String, MetadataEvent>(id) {

  private var title : Title = TODO("Not yet implemented")

  private var author : Author = TODO("Not yet implemented")

  private var isbn : ISBN = TODO("Not yet implemented")

  private var publisher : Publisher = TODO("Not yet implemented")

  override fun getTitle() : Title {
    return title
  }

  override fun getAuthor() : Author {
    return author
  }

  override fun getIsbn() : ISBN {
    return isbn
  }

  override fun getPublisher() : Publisher {
    return publisher
  }

  override fun handleEvent(event : MetadataEvent) {
    TODO("Not yet implemented")
  }

  private fun handle(event : CampusOpened) {
    TODO("Not yet implemented")
  }

}