package context.examplecontext.query_side.dto

import java.util.Date

data class UserDto(val userName : String, val dateOfBirth : Date, val id : String, val city : String, val postalCode : Int, val street : String, val houseNumber : String)