package context.catalog.command_side.repositories

import context.catalog.command_side.repositories.ICampusRepository
import context.catalog.command_side.aggregates.Campus

class CampusRepository(): ICampusRepository {

  override fun getById(id : String) : Campus {
    TODO("Not yet implemented")
  }

  override fun add(aggregate : Campus) {
    TODO("Not yet implemented")
  }

  override fun save(aggregate : Campus) {
    TODO("Not yet implemented")
  }

}