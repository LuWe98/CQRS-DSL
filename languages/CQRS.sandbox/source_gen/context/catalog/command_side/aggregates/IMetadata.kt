package context.catalog.command_side.aggregates

import context.catalog.command_side.aggregates.generic.EventAggregateRoot
import context.catalog.command_side.valueobjects.Title
import context.catalog.command_side.events.MetadataEvent
import context.catalog.command_side.valueobjects.ISBN
import context.catalog.command_side.valueobjects.Author
import context.catalog.command_side.valueobjects.Publisher

interface IMetadata: EventAggregateRoot<String, MetadataEvent> { 

  fun getTitle() : Title

  fun getAuthor() : Author

  fun getIsbn() : ISBN

  fun getPublisher() : Publisher

}