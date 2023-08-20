package context.billing.command_side.aggregates

import context.billing.command_side.events.TestOtherRootEvent
import context.billing.command_side.aggregates.generic.EventAggregateRoot
import java.util.UUID

interface ITestOtherRoot: EventAggregateRoot<UUID, TestOtherRootEvent>