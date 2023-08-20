package context.billing.command_side.repositories

import java.util.UUID
import context.billing.command_side.aggregates.TestOtherRoot
import context.billing.command_side.repositories.generic.AggregateIdRepository

interface ITestOtherRootRepository: AggregateIdRepository<UUID, TestOtherRoot>