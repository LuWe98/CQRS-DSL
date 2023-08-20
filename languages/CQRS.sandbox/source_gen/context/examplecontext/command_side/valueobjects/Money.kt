package context.examplecontext.command_side.valueobjects

import context.examplecontext.command_side.valueobjects.Money
import context.examplecontext.command_side.valueobjects.Currency

data class Money(val amount : Double, val currency : Currency) { 

  fun plus(other : Money) : Money {
    TODO("Not yet implemented")
  }

}