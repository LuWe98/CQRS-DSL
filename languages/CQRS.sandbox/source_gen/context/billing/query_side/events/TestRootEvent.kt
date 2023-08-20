package context.billing.query_side.events

import context.billing.query_side.events.generic.Event

interface TestRootEvent: Event

object SeparateEventOne: TestRootEvent

object SeparateEventTwo: TestRootEvent

