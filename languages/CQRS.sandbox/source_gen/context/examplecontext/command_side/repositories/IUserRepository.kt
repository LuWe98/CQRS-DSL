package context.examplecontext.command_side.repositories

import context.examplecontext.command_side.repositories.generic.AggregateIdRepository
import context.examplecontext.command_side.aggregates.User

interface IUserRepository: AggregateIdRepository<String, User>