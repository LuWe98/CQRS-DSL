package context.examplecontext.query_side.repositories

import context.examplecontext.query_side.repositories.IUserDtoRepository
import context.examplecontext.query_side.dto.UserDto

class UserDtoRepository(): IUserDtoRepository {

  override fun getUserById(id : String) : UserDto {
    TODO("Not yet implemented")
  }

  override fun getUserByName(name : String) : UserDto {
    TODO("Not yet implemented")
  }

  override fun getAllUsers() : List<UserDto> {
    TODO("Not yet implemented")
  }

}