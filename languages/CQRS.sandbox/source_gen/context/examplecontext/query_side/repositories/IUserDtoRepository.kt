package context.examplecontext.query_side.repositories

import context.examplecontext.query_side.dto.UserDto

interface IUserDtoRepository {

  fun getUserById(id : String) : UserDto

  fun getUserByName(name : String) : UserDto

  fun getAllUsers() : List<UserDto>

}