abstract class EntityMappable<M, E> {
  const EntityMappable();

  E toEntity(M? model);

  List<E> toListEntity(List<M>? listData) {
    return listData?.map(toEntity).toList() ?? List.empty();
  }
}
