package context.catalog.command_side.repositories

import context.catalog.command_side.repositories.IMetadataRepository
import context.catalog.command_side.aggregates.Metadata

class MetadataRepository(): IMetadataRepository {

  override fun getById(id : String) : Metadata {
    TODO("Not yet implemented")
  }

  override fun add(aggregate : Metadata) {
    TODO("Not yet implemented")
  }

  override fun save(aggregate : Metadata) {
    TODO("Not yet implemented")
  }

}