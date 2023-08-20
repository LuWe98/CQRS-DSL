package context.catalog.command_side.aggregates

import context.catalog.command_side.aggregates.generic.EventAggregateRoot
import context.catalog.command_side.valueobjects.CampusLocation
import context.catalog.command_side.events.CampusEvent

interface ICampus: EventAggregateRoot<String, CampusEvent> { 

  fun getCampusLocation() : CampusLocation

}