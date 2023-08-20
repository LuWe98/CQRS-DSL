package context.catalog.command_side.aggregates

import context.catalog.command_side.aggregates.generic.EventAggregateRoot
import context.catalog.command_side.valueobjects.Signature
import context.catalog.command_side.valueobjects.CampusId
import context.catalog.command_side.commands.UpdateBookSignature
import context.catalog.command_side.events.BookEvent
import context.catalog.command_side.valueobjects.MetadataId

interface IBook: EventAggregateRoot<String, BookEvent> { 

  fun getMetadataId() : MetadataId

  fun getCampusId() : CampusId

  fun getSignature() : Signature

  fun execute(command : UpdateBookSignature)

}