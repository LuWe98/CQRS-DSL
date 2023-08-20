package context.examplecontext.command_side.aggregates

import context.examplecontext.command_side.valueobjects.UserId
import context.examplecontext.command_side.events.TestEvent
import context.examplecontext.command_side.aggregates.generic.EventAggregateRoot

interface ITest: EventAggregateRoot<UserId, TestEvent>