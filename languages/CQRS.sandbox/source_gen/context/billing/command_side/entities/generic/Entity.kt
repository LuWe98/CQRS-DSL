package context.billing.command_side.entities.generic

abstract class Entity<ID>(
  private val id: ID
) {
  fun getId() = id
  override fun hashCode(): Int = getId().hashCode()
  override fun equals(other: Any?): Boolean {
    if(other == null || other !is Entity<*>) return false
    return getId() == other.getId()
  }
}