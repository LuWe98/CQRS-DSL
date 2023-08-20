package context.billing.command_side.repositories

import context.billing.command_side.aggregates.TestRoot
import context.billing.command_side.repositories.generic.AggregateIdRepository

interface ITestRootRepository: AggregateIdRepository<String, TestRoot>