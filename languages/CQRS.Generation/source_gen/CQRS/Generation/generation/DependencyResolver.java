package CQRS.Generation.generation;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import java.util.Set;
import CQRS.util.CollectionUtils;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.internal.collections.runtime.ITranslator2;
import org.jetbrains.mps.openapi.language.SEnumerationLiteral;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import CQRS.behavior.AggregateRootRepositoryReference__BehaviorDescriptor;
import jetbrains.mps.internal.collections.runtime.SetSequence;
import java.util.HashSet;
import CQRS.behavior.ImportedType__BehaviorDescriptor;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.internal.collections.runtime.IVisitor;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import CQRS.behavior.AggregateRootRepository__BehaviorDescriptor;
import CQRS.behavior.IRepository__BehaviorDescriptor;
import CQRS.behavior.CommandContainer__BehaviorDescriptor;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SEnumOperations;
import CQRS.behavior.QueryContainer__BehaviorDescriptor;
import CQRS.behavior.BoundedContext__BehaviorDescriptor;
import org.jetbrains.mps.openapi.language.SConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SInterfaceConcept;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SProperty;

public interface DependencyResolver {

  SNode getBoundedContext();

  GenerationTarget getGenerationTarget();


  default Set<DependencyImport> resolveTypes(Iterable<SNode> resolvables) {
    return CollectionUtils.setOf(Sequence.fromIterable(resolvables).translate(new ITranslator2<SNode, DependencyImport>() {
      public Iterable<DependencyImport> translate(SNode type) {
        return resolveType(type);
      }
    }));
  }

  default Set<DependencyImport> resolveTypes(Iterable<SNode> resolvables, final SEnumerationLiteral side) {
    return CollectionUtils.setOf(Sequence.fromIterable(resolvables).translate(new ITranslator2<SNode, DependencyImport>() {
      public Iterable<DependencyImport> translate(SNode type) {
        return resolveType(type, side);
      }
    }));
  }

  default Set<DependencyImport> resolveType(SNode type, SEnumerationLiteral side) {
    {
      final SNode eventReference = type;
      if (SNodeOperations.isInstanceOf(eventReference, CONCEPTS.EventReference$8b)) {
        return CollectionUtils.setOf(resolveEvent(SLinkOperations.getTarget(eventReference, LINKS.event$RGnV), side));
      }
    }
    return resolveType(type);
  }

  default Set<DependencyImport> resolveType(SNode type) {
    {
      final SNode primitive = type;
      if (SNodeOperations.isInstanceOf(primitive, CONCEPTS.IPrimitiveType$3E)) {
        return resolvePrimitive(primitive);
      }
    }

    {
      final SNode collectionType = type;
      if (SNodeOperations.isInstanceOf(collectionType, CONCEPTS.ICollectionType$rd)) {
        return resolveCollection(collectionType);
      }
    }

    {
      final SNode mapType = type;
      if (SNodeOperations.isInstanceOf(mapType, CONCEPTS.MapType$JX)) {
        return resolveMapType(mapType);
      }
    }

    {
      final SNode importType = type;
      if (SNodeOperations.isInstanceOf(importType, CONCEPTS.ImportedType$3u)) {
        return resolveImportedType(importType);
      }
    }

    {
      final SNode javaDataType = type;
      if (SNodeOperations.isInstanceOf(javaDataType, CONCEPTS.JavaDataType$MU)) {
        return resolveJavaDataType(javaDataType);
      }
    }

    {
      final SNode valueObjectReference = type;
      if (SNodeOperations.isInstanceOf(valueObjectReference, CONCEPTS.ValueObjectReference$jW)) {
        return CollectionUtils.setOf(resolveValueObject(SLinkOperations.getTarget(valueObjectReference, LINKS.valueObject$DGR4)));
      }
    }

    {
      final SNode entityReference = type;
      if (SNodeOperations.isInstanceOf(entityReference, CONCEPTS.EntityReference$x1)) {
        return CollectionUtils.setOf(resolveEntity(SLinkOperations.getTarget(entityReference, LINKS.entity$DNp$)));
      }
    }

    {
      final SNode aggregateRootReference = type;
      if (SNodeOperations.isInstanceOf(aggregateRootReference, CONCEPTS.AggregateRootReference$5T)) {
        return CollectionUtils.setOf(resolveAggregate(SLinkOperations.getTarget(aggregateRootReference, LINKS.aggregate$D_P$)));
      }
    }

    {
      final SNode dtoReference = type;
      if (SNodeOperations.isInstanceOf(dtoReference, CONCEPTS.DtoReference$zV)) {
        return CollectionUtils.setOf(resolveDto(SLinkOperations.getTarget(dtoReference, LINKS.dto$DOQ$)));
      }
    }

    {
      final SNode queryReference = type;
      if (SNodeOperations.isInstanceOf(queryReference, CONCEPTS.QueryReference$zj)) {
        return CollectionUtils.setOf(resolveQuery(SLinkOperations.getTarget(queryReference, LINKS.query$ROy$)));
      }
    }

    {
      final SNode commandReference = type;
      if (SNodeOperations.isInstanceOf(commandReference, CONCEPTS.CommandReference$me)) {
        return CollectionUtils.setOf(resolveCommand(SLinkOperations.getTarget(commandReference, LINKS.command$RI04)));
      }
    }

    {
      final SNode repositoyReference = type;
      if (SNodeOperations.isInstanceOf(repositoyReference, CONCEPTS.AggregateRootRepositoryReference$pq)) {
        return CollectionUtils.setOf(resolveAggregateConcreteRepositoryInterface(AggregateRootRepositoryReference__BehaviorDescriptor.getAggregateRepository_id3fVLq_wyq2G.invoke(repositoyReference)));
      }
    }

    {
      final SNode repositoryReference = type;
      if (SNodeOperations.isInstanceOf(repositoryReference, CONCEPTS.DtoRepositoryReference$up)) {
        return CollectionUtils.setOf(resolveDtoRepositoryInterface(SLinkOperations.getTarget(repositoryReference, LINKS.dtoRepository$QKV9)));
      }
    }

    throw new IllegalArgumentException("Type: " + SNodeOperations.present(type) + " - Concept - " + SNodeOperations.getConcept(type) + " - is not resolvable");
  }

  default Set<DependencyImport> resolvePrimitive(SNode primitive) {
    return SetSequence.fromSet(new HashSet<DependencyImport>());
  }

  default Set<DependencyImport> resolveCollection(SNode collection) {
    return resolveType(SLinkOperations.getTarget(collection, LINKS.elementType$AnT5));
  }

  default Set<DependencyImport> resolveMapType(SNode map) {
    Set<DependencyImport> imports = SetSequence.fromSet(new HashSet<DependencyImport>());
    SetSequence.fromSet(imports).addSequence(SetSequence.fromSet(resolveType(SLinkOperations.getTarget(map, LINKS.keyType$mrlA))));
    SetSequence.fromSet(imports).addSequence(SetSequence.fromSet(resolveType(SLinkOperations.getTarget(map, LINKS.valueType$mrNC))));
    return imports;
  }

  default Set<DependencyImport> resolveImportedType(SNode importedType) {
    final Set<DependencyImport> imports = SetSequence.fromSet(new HashSet<DependencyImport>());
    SetSequence.fromSet(imports).addElement(DependencyImport.of(ImportedType__BehaviorDescriptor.qualifiedName_idSXYyTWcNId.invoke(importedType)));
    ListSequence.fromList(SLinkOperations.getChildren(importedType, LINKS.actualTypes$o6Gi)).visitAll(new IVisitor<SNode>() {
      public void visit(SNode type) {
        SetSequence.fromSet(imports).addSequence(SetSequence.fromSet(resolveType(type)));
      }
    });
    return imports;
  }

  default Set<DependencyImport> resolveJavaDataType(SNode javaDataType) {
    return JavaTypeDependencyUtils.getDependenciesOf(javaDataType);
  }








  default DependencyImport resolveValueObject(SNode valueObject) {
    return contextAwareImport(DependencyUtils.COMMAND_SIDE_VALUE_OBJECTS_PATH, SPropertyOperations.getString(valueObject, PROPS.name$MnvL));
  }

  default DependencyImport resolveEntity(SNode entity) {
    return contextAwareImport(DependencyUtils.COMMAND_SIDE_ENTITIES_PATH, SPropertyOperations.getString(entity, PROPS.name$MnvL));
  }

  default DependencyImport resolveEntityBaseClass() {
    return contextAwareImport(DependencyUtils.COMMAND_SIDE_ENTITIES_GENERIC_PATH, DependencyUtils.ENTITY_BASE_CLASS_NAME);
  }




  default DependencyImport resolveAggregate(SNode aggregate) {
    return contextAwareImport(DependencyUtils.COMMAND_SIDE_AGGREGATES_PATH, SPropertyOperations.getString(aggregate, PROPS.name$MnvL));
  }

  default DependencyImport resolveConcreteAggregateInterface(SNode aggregate) {
    return contextAwareImport(DependencyUtils.COMMAND_SIDE_AGGREGATES_PATH, "I" + SPropertyOperations.getString(aggregate, PROPS.name$MnvL));
  }

  default DependencyImport resolveAggregateInterface() {
    return contextAwareImport(DependencyUtils.COMMAND_SIDE_AGGREGATES_GENERIC_PATH, DependencyUtils.AGGREGATE_INTERFACE_NAME);
  }

  default DependencyImport resolveEventAggregateInterface() {
    return contextAwareImport(DependencyUtils.COMMAND_SIDE_AGGREGATES_GENERIC_PATH, DependencyUtils.EVENT_AGGREGATE_INTERFACE_NAME);
  }

  default DependencyImport resolveBaseEventAggregate() {
    return contextAwareImport(DependencyUtils.COMMAND_SIDE_AGGREGATES_GENERIC_PATH, DependencyUtils.BASE_EVENT_AGGREGATE_NAME);
  }

  default DependencyImport resolveAggregateRepositoryInterface() {
    return contextAwareImport(DependencyUtils.COMMAND_SIDE_AGGREGATE_REPOSITORIES_GENERIC_PATH, DependencyUtils.AGGREGATE_REPOSITORY_INTERFACE_NAME);
  }

  default DependencyImport resolveAggregateIdRepositoryInterface() {
    return contextAwareImport(DependencyUtils.COMMAND_SIDE_AGGREGATE_REPOSITORIES_GENERIC_PATH, DependencyUtils.AGGREGATE_ID_REPOSITORY_INTERFACE_NAME);
  }

  default DependencyImport resolveAggregateRepository(SNode repository) {
    return contextAwareImport(DependencyUtils.COMMAND_SIDE_AGGREGATE_REPOSITORIES_PATH, AggregateRootRepository__BehaviorDescriptor.repositoryName_id5qxF18G6I2Y.invoke(repository));
  }

  default DependencyImport resolveAggregateConcreteRepositoryInterface(SNode repository) {
    return contextAwareImport(DependencyUtils.COMMAND_SIDE_AGGREGATE_REPOSITORIES_PATH, "I" + AggregateRootRepository__BehaviorDescriptor.repositoryName_id5qxF18G6I2Y.invoke(repository));
  }





  default DependencyImport resolveDto(SNode dto) {
    return contextAwareImport(DependencyUtils.QUERY_SIDE_DTO_PATH, SPropertyOperations.getString(dto, PROPS.name$MnvL));
  }

  default DependencyImport resolveDtoRepository(SNode repository) {
    return contextAwareImport(DependencyUtils.QUERY_SIDE_DTO_REPOSITORY_PATH, IRepository__BehaviorDescriptor.repositoryName_idmdpAJL$$QT.invoke(repository));
  }

  default DependencyImport resolveDtoRepositoryInterface(SNode repository) {
    return contextAwareImport(DependencyUtils.QUERY_SIDE_DTO_REPOSITORY_PATH, "I" + IRepository__BehaviorDescriptor.repositoryName_idmdpAJL$$QT.invoke(repository));
  }



  default DependencyImport resolveCommand(SNode command) {
    return contextAwareImport(DependencyUtils.COMMAND_SIDE_COMMAND_OBJECTS_PATH, SPropertyOperations.getString(command, PROPS.name$MnvL));
  }

  default DependencyImport resolveCommandInterface() {
    return contextAwareImport(DependencyUtils.COMMAND_SIDE_COMMAND_OBJECTS_GENERIC_PATH, DependencyUtils.COMMAND_INTERFACE_NAME);
  }

  default DependencyImport resolveCommandHandlerInterface() {
    return contextAwareImport(DependencyUtils.COMMAND_SIDE_COMMAND_OBJECTS_GENERIC_PATH, DependencyUtils.COMMAND_HANDLER_INTERFACE_NAME);
  }

  default DependencyImport resolveCommandHandlerSpecific(SNode command) {
    return contextAwareImport(DependencyUtils.COMMAND_SIDE_COMMAND_HANDLER_PATH, SPropertyOperations.getString(command, PROPS.name$MnvL) + "Handler");
  }

  default DependencyImport resolveCommandHandlerGrouped(SNode container) {
    return contextAwareImport(DependencyUtils.COMMAND_SIDE_COMMAND_HANDLER_PATH, CommandContainer__BehaviorDescriptor.getCommandContainerName_id51Z40Vzx6GO.invoke(container));
  }

  default DependencyImport resolveCommandHandlerGroupedInterface(SNode container) {
    return contextAwareImport(DependencyUtils.COMMAND_SIDE_COMMAND_HANDLER_PATH, "I" + CommandContainer__BehaviorDescriptor.getCommandContainerName_id51Z40Vzx6GO.invoke(container));
  }






  default DependencyImport resolveEvent(SNode event, SEnumerationLiteral side) {
    String path = (SEnumOperations.isMember(side, 0x2cd9954889e49a8aL) ? DependencyUtils.COMMAND_SIDE_EVENT_OBJECTS_PATH : DependencyUtils.QUERY_SIDE_EVENTS_PATH);
    return contextAwareImport(path, SPropertyOperations.getString(event, PROPS.name$MnvL));
  }

  default DependencyImport resolveEventWrapperInterface(SNode wrapper, SEnumerationLiteral side) {
    String path = (SEnumOperations.isMember(side, 0x2cd9954889e49a8aL) ? DependencyUtils.COMMAND_SIDE_EVENT_OBJECTS_PATH : DependencyUtils.QUERY_SIDE_EVENTS_PATH);
    return contextAwareImport(path, SPropertyOperations.getString(SLinkOperations.getTarget(wrapper, LINKS.substitudeEvent$ZIb0), PROPS.name$MnvL));
  }

  default DependencyImport resolveEventInterface(SEnumerationLiteral side) {
    String path = (SEnumOperations.isMember(side, 0x2cd9954889e49a8aL) ? DependencyUtils.COMMAND_SIDE_EVENTS_GENERIC_PATH : DependencyUtils.QUERY_SIDE_EVENTS_GENERIC_PATH);
    return contextAwareImport(path, DependencyUtils.EVENT_INTERFACE_NAME);
  }

  default DependencyImport resolveEventHandlerInterface() {
    return contextAwareImport(DependencyUtils.QUERY_SIDE_EVENTS_GENERIC_PATH, DependencyUtils.EVENT_HANDLER_INTERFACE_NAME);
  }

  default DependencyImport resolveEventHandlerSpecific(SNode event) {
    return contextAwareImport(DependencyUtils.QUERY_SIDE_EVENT_HANDLER_PATH, SPropertyOperations.getString(event, PROPS.name$MnvL) + "Handler");
  }

  default DependencyImport resolveEventHandlerGrouped() {
    return contextAwareImport(DependencyUtils.QUERY_SIDE_EVENT_HANDLER_PATH, DependencyUtils.GROUPED_EVENT_HANDLER_NAME);
  }

  default DependencyImport resolveEventHandlerGroupedInterface() {
    return contextAwareImport(DependencyUtils.QUERY_SIDE_EVENT_HANDLER_PATH, "I" + DependencyUtils.GROUPED_EVENT_HANDLER_NAME);
  }





  default DependencyImport resolveQuery(SNode query) {
    return contextAwareImport(DependencyUtils.QUERY_SIDE_QUERY_OBJECTS_PATH, SPropertyOperations.getString(query, PROPS.name$MnvL));
  }

  default DependencyImport resolveQueryHandlerSpecific(SNode query) {
    return contextAwareImport(DependencyUtils.QUERY_SIDE_QUERY_HANDLER_PATH, SPropertyOperations.getString(query, PROPS.name$MnvL) + "Handler");
  }

  default DependencyImport resolveQueryInterface() {
    return contextAwareImport(DependencyUtils.QUERY_SIDE_QUERY_GENERIC_PATH, DependencyUtils.QUERY_INTERFACE_NAME);
  }

  default DependencyImport resolveQueryHandlerInterface() {
    return contextAwareImport(DependencyUtils.QUERY_SIDE_QUERY_GENERIC_PATH, DependencyUtils.QUERY_HANDLER_INTERFACE_NAME);
  }

  default DependencyImport resolveQueryHandlerGrouped(SNode queryContainer) {
    String path = ((boolean) QueryContainer__BehaviorDescriptor.isQueryService_id6gxxZVteeje.invoke(queryContainer) ? DependencyUtils.QUERY_SIDE_QUERY_SERVICE_PATH : DependencyUtils.QUERY_SIDE_QUERY_HANDLER_PATH);
    return contextAwareImport(path, QueryContainer__BehaviorDescriptor.getQueryContainerName_id2RbvdOKU0GT.invoke(queryContainer));
  }

  default DependencyImport resolveQueryHandlerGroupedInterface(SNode queryContainer) {
    String path = ((boolean) QueryContainer__BehaviorDescriptor.isQueryService_id6gxxZVteeje.invoke(queryContainer) ? DependencyUtils.QUERY_SIDE_QUERY_SERVICE_PATH : DependencyUtils.QUERY_SIDE_QUERY_HANDLER_PATH);
    return contextAwareImport(path, QueryContainer__BehaviorDescriptor.getQueryContainerName_id2RbvdOKU0GT.invoke(queryContainer));
  }

  default DependencyImport resolveQueryProcessor() {
    return contextAwareImport(DependencyUtils.QUERY_SIDE_QUERY_GENERIC_PATH, DependencyUtils.QUERY_PROCESSOR_NAME);
  }

  default DependencyImport resolveQueryProcessorImpl() {
    return contextAwareImport(DependencyUtils.QUERY_SIDE_QUERY_PROCESSOR_PATH, DependencyUtils.QUERY_PROCESSOR_IMPL_NAME);
  }

  default DependencyImport resolveQueryHandlerContainer() {
    return contextAwareImport(DependencyUtils.QUERY_SIDE_QUERY_GENERIC_PATH, DependencyUtils.QUERY_HANDLER_CONTAINER_NAME);
  }

  default DependencyImport resolveQueryHandlerContainerImpl() {
    return contextAwareImport(DependencyUtils.QUERY_SIDE_QUERY_PROCESSOR_PATH, DependencyUtils.QUERY_HANDLER_CONTAINER_IMPL_NAME);
  }







  default DependencyImport contextAwareImport(String path, String className) {
    String root = BoundedContext__BehaviorDescriptor.getRootPath_id4yUYSn0_QRf.invoke(getBoundedContext());
    return DependencyImport.ofPath(root + path, className);
  }

  final class CONCEPTS {
    /*package*/ static final SConcept EventReference$8b = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x73da5086440e2439L, "CQRS.structure.EventReference");
    /*package*/ static final SInterfaceConcept IPrimitiveType$3E = MetaAdapterFactory.getInterfaceConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x4cfae7e929829c9fL, "CQRS.structure.IPrimitiveType");
    /*package*/ static final SInterfaceConcept ICollectionType$rd = MetaAdapterFactory.getInterfaceConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x4cfae7e929829cbdL, "CQRS.structure.ICollectionType");
    /*package*/ static final SConcept MapType$JX = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x783dbe7d5ebb3779L, "CQRS.structure.MapType");
    /*package*/ static final SConcept ImportedType$3u = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x4f0a0db9ac16f8edL, "CQRS.structure.ImportedType");
    /*package*/ static final SConcept JavaDataType$MU = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x53a29a8dae148659L, "CQRS.structure.JavaDataType");
    /*package*/ static final SConcept ValueObjectReference$jW = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x4f0a0db9ac16f8faL, "CQRS.structure.ValueObjectReference");
    /*package*/ static final SConcept EntityReference$x1 = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x4f0a0db9ac16f900L, "CQRS.structure.EntityReference");
    /*package*/ static final SConcept AggregateRootReference$5T = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x4f0a0db9ac16f8f2L, "CQRS.structure.AggregateRootReference");
    /*package*/ static final SConcept DtoReference$zV = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x4f0a0db9ac16f906L, "CQRS.structure.DtoReference");
    /*package*/ static final SConcept QueryReference$zj = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x73da5086440e2447L, "CQRS.structure.QueryReference");
    /*package*/ static final SConcept CommandReference$me = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x73da5086440e2441L, "CQRS.structure.CommandReference");
    /*package*/ static final SConcept AggregateRootRepositoryReference$pq = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x593428614a1cdb1aL, "CQRS.structure.AggregateRootRepositoryReference");
    /*package*/ static final SConcept DtoRepositoryReference$up = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x642187fedbd24164L, "CQRS.structure.DtoRepositoryReference");
  }

  final class LINKS {
    /*package*/ static final SReferenceLink event$RGnV = MetaAdapterFactory.getReferenceLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x73da5086440e2439L, 0x73da5086440e243cL, "event");
    /*package*/ static final SReferenceLink valueObject$DGR4 = MetaAdapterFactory.getReferenceLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x4f0a0db9ac16f8faL, 0x4f0a0db9ac16f8fbL, "valueObject");
    /*package*/ static final SReferenceLink entity$DNp$ = MetaAdapterFactory.getReferenceLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x4f0a0db9ac16f900L, 0x4f0a0db9ac16f901L, "entity");
    /*package*/ static final SReferenceLink aggregate$D_P$ = MetaAdapterFactory.getReferenceLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x4f0a0db9ac16f8f2L, 0x4f0a0db9ac16f8f3L, "aggregate");
    /*package*/ static final SReferenceLink dto$DOQ$ = MetaAdapterFactory.getReferenceLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x4f0a0db9ac16f906L, 0x4f0a0db9ac16f907L, "dto");
    /*package*/ static final SReferenceLink query$ROy$ = MetaAdapterFactory.getReferenceLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x73da5086440e2447L, 0x73da5086440e2448L, "query");
    /*package*/ static final SReferenceLink command$RI04 = MetaAdapterFactory.getReferenceLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x73da5086440e2441L, 0x73da5086440e2442L, "command");
    /*package*/ static final SReferenceLink dtoRepository$QKV9 = MetaAdapterFactory.getReferenceLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x642187fedbd24164L, 0x642187fedbd2416aL, "dtoRepository");
    /*package*/ static final SContainmentLink elementType$AnT5 = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x4cfae7e929829cbdL, 0x20f56dfff71fcf5aL, "elementType");
    /*package*/ static final SContainmentLink keyType$mrlA = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x783dbe7d5ebb3779L, 0x783dbe7d5ebb377cL, "keyType");
    /*package*/ static final SContainmentLink valueType$mrNC = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x783dbe7d5ebb3779L, 0x783dbe7d5ebb377eL, "valueType");
    /*package*/ static final SContainmentLink actualTypes$o6Gi = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x4f0a0db9ac16f8edL, 0x5e223a0a0b9c13cdL, "actualTypes");
    /*package*/ static final SContainmentLink substitudeEvent$ZIb0 = MetaAdapterFactory.getContainmentLink(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x1a77dd18db67c7adL, 0x1a77dd18dbbe5dd3L, "substitudeEvent");
  }

  final class PROPS {
    /*package*/ static final SProperty name$MnvL = MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name");
  }
}