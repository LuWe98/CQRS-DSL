package context.catalog.command_side.aggregates

import context.catalog.command_side.events.MetadataAdded
import context.catalog.command_side.aggregates.ICampus
import context.catalog.command_side.valueobjects.CampusLocation
import context.catalog.command_side.aggregates.generic.BaseEventAggregateRoot
import context.catalog.command_side.events.CampusEvent

class Campus(id : String): ICampus, BaseEventAggregateRoot<String, CampusEvent>(id) {

  private var campusLocation : CampusLocation = TODO("Not yet implemented")

  override fun getCampusLocation() : CampusLocation {
    return campusLocation
  }

  override fun handleEvent(event : CampusEvent) {
    TODO("Not yet implemented")
  }

  private fun handle(event : MetadataAdded) {
    TODO("Not yet implemented")
  }

}