package context.catalog.command_side.repositories

import context.catalog.command_side.repositories.generic.AggregateIdRepository
import context.catalog.command_side.aggregates.Book

interface IBookRepository: AggregateIdRepository<String, Book>