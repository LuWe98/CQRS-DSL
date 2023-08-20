package context.billing.command_side.events

import context.billing.command_side.events.generic.Event

interface TestRootEvent: Event

object SeparateEventOne: TestRootEvent

object SeparateEventTwo: TestRootEvent

