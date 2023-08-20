package CQRS.constraints;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.base.BaseConstraintsDescriptor;
import jetbrains.mps.smodel.runtime.ConstraintFunction;
import jetbrains.mps.smodel.runtime.ConstraintContext_DefaultScopeProvider;
import jetbrains.mps.smodel.runtime.ReferenceScopeProvider;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.smodel.runtime.CheckingNodeContext;
import jetbrains.mps.smodel.runtime.base.BaseScopeProvider;
import org.jetbrains.mps.openapi.model.SNodeReference;
import jetbrains.mps.smodel.SNodePointer;
import jetbrains.mps.scope.Scope;
import jetbrains.mps.smodel.runtime.ReferenceConstraintsContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.scope.EmptyScope;
import jetbrains.mps.scope.ListScope;
import jetbrains.mps.internal.collections.runtime.Sequence;
import CQRS.behavior.BoundedContext__BehaviorDescriptor;
import CQRS.behavior.IElementOfBoundedContext__BehaviorDescriptor;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import CQRS.util.ScopeUtils;
import CQRS.behavior.Query__BehaviorDescriptor;
import CQRS.behavior.IComponentWithRepositoryReferences__BehaviorDescriptor;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import CQRS.behavior.IComponentWithDtoRepositoryReferences__BehaviorDescriptor;
import java.util.List;
import CQRS.util.CollectionUtils;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import org.jetbrains.mps.openapi.language.SConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SInterfaceConcept;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SReferenceLink;

public class Dto_Constraints extends BaseConstraintsDescriptor {
  public Dto_Constraints() {
    super(CONCEPTS.Dto$yu);
  }

  @Override
  public ConstraintFunction<ConstraintContext_DefaultScopeProvider, ReferenceScopeProvider> calculateDefaultScopeConstraint() {
    return new ConstraintFunction<ConstraintContext_DefaultScopeProvider, ReferenceScopeProvider>() {
      @Nullable
      public ReferenceScopeProvider invoke(@NotNull ConstraintContext_DefaultScopeProvider context, @Nullable CheckingNodeContext checkingNodeContext) {
        return new BaseScopeProvider() {
          @Override
          public SNodeReference getSearchScopeValidatorNode() {
            return new SNodePointer("r:0d7993a3-d2b8-4ac6-8b11-a4cb9134a9ef(CQRS.constraints)", "8348073396884651139");
          }
          @Override
          public Scope createScope(final ReferenceConstraintsContext _context) {
            SNode component = SNodeOperations.getNodeAncestor(_context.getContextNode(), CONCEPTS.IBoundedContextComponent$2H, true, false);

            {
              final SNode repository = component;
              if (SNodeOperations.isInstanceOf(repository, CONCEPTS.DtoRepository$kM)) {
                return Dto_Constraints.this._additional_provideDtoRepositoryScope(repository, _context.getContextNode());
              }
            }

            {
              final SNode dto = component;
              if (SNodeOperations.isInstanceOf(dto, CONCEPTS.Dto$yu)) {
                return Dto_Constraints.this._additional_provideDtoScope(dto, _context.getContextNode());
              }
            }

            {
              final SNode container = component;
              if (SNodeOperations.isInstanceOf(container, CONCEPTS.QueryContainer$da)) {
                return Dto_Constraints.this._additional_provideQueryContainerScope(container, _context.getContextNode());
              }
            }

            {
              final SNode query = component;
              if (SNodeOperations.isInstanceOf(query, CONCEPTS.Query$nF)) {
                return Dto_Constraints.this._additional_provideQueryScope(query, _context.getContextNode());
              }
            }

            return new EmptyScope();
          }
        };
      }
    };
  }
  private Scope _additional_provideDtoScope(final SNode dto, SNode contextNode) {
    return ListScope.forNamedElements(Sequence.fromIterable(BoundedContext__BehaviorDescriptor.dtos_id7fqk8p4cIWm.invoke(IElementOfBoundedContext__BehaviorDescriptor.boundedContext_id3VGLvhEO$iA.invoke(dto))).where(new IWhereFilter<SNode>() {
      public boolean accept(SNode it) {
        return it != dto;
      }
    }));
  }
  private Scope _additional_provideQueryContainerScope(SNode queryContainer, SNode contextNode) {
    // TODO Das kann vllt noch entfernt werden
    return ScopeUtils.ofElements(BoundedContext__BehaviorDescriptor.dtos_id7fqk8p4cIWm.invoke(IElementOfBoundedContext__BehaviorDescriptor.boundedContext_id3VGLvhEO$iA.invoke(queryContainer)));
  }
  private Scope _additional_provideQueryScope(SNode query, SNode contextNode) {

    // DTOs should only be allowed as a return type and not as Parameter types
    if ((SNodeOperations.getNodeAncestor(contextNode, CONCEPTS.Parameter$as, true, false) != null)) {
      return new EmptyScope();
    }

    if (!((boolean) Query__BehaviorDescriptor.isInsideQueryContainer_id2Bsub$Lr4Li.invoke(query))) {
      if (!((boolean) IComponentWithRepositoryReferences__BehaviorDescriptor.hasReferences_id5jZDGTikSOr.invoke(query))) {
        return ListScope.forNamedElements(BoundedContext__BehaviorDescriptor.dtos_id7fqk8p4cIWm.invoke(IElementOfBoundedContext__BehaviorDescriptor.boundedContext_id3VGLvhEO$iA.invoke(query)));
      }
      return ListScope.forNamedElements(SLinkOperations.collect(SLinkOperations.collect(IComponentWithDtoRepositoryReferences__BehaviorDescriptor.dtoRepositories_idomljbwDa_r.invoke(query), LINKS.dtoReference$pHOR), LINKS.dto$DOQ$));
    }

    List<SNode> references = CollectionUtils.merge(IComponentWithDtoRepositoryReferences__BehaviorDescriptor.dtoRepositories_idomljbwDa_r.invoke(Query__BehaviorDescriptor.getQueryContainer_id6gxxZVrXJ64.invoke(query)), IComponentWithDtoRepositoryReferences__BehaviorDescriptor.dtoRepositories_idomljbwDa_r.invoke(query));

    if (ListSequence.fromList(references).isNotEmpty()) {
      return ListScope.forNamedElements(SLinkOperations.collect(SLinkOperations.collect(references, LINKS.dtoReference$pHOR), LINKS.dto$DOQ$));
    }

    return ListScope.forNamedElements(BoundedContext__BehaviorDescriptor.dtos_id7fqk8p4cIWm.invoke(IElementOfBoundedContext__BehaviorDescriptor.boundedContext_id3VGLvhEO$iA.invoke(query)));
  }
  private Scope _additional_provideDtoRepositoryScope(final SNode repository, SNode contextNode) {
    if (repository == contextNode) {
      SNode boundedContext = IElementOfBoundedContext__BehaviorDescriptor.boundedContext_id3VGLvhEO$iA.invoke(repository);
      final Iterable<SNode> referencedDtos = SLinkOperations.collect(SLinkOperations.collect(Sequence.fromIterable(BoundedContext__BehaviorDescriptor.dtoRepositories_id1WhJCpUS1If.invoke(boundedContext)).where(new IWhereFilter<SNode>() {
        public boolean accept(SNode it) {
          return it != repository;
        }
      }), LINKS.dtoReference$pHOR), LINKS.dto$DOQ$);
      Iterable<SNode> nodes = Sequence.fromIterable(BoundedContext__BehaviorDescriptor.dtos_id7fqk8p4cIWm.invoke(boundedContext)).where(new IWhereFilter<SNode>() {
        public boolean accept(SNode it) {
          return !(Sequence.fromIterable(referencedDtos).contains(it));
        }
      });
      return ListScope.forNamedElements(nodes);
    }

    return ScopeUtils.ofElements(SLinkOperations.getTarget(SLinkOperations.getTarget(repository, LINKS.dtoReference$pHOR), LINKS.dto$DOQ$));
  }

  private static final class CONCEPTS {
    /*package*/ static final SConcept Dto$yu = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x4f0a0db9ac16f903L, "CQRS.structure.Dto");
    /*package*/ static final SInterfaceConcept IBoundedContextComponent$2H = MetaAdapterFactory.getInterfaceConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x6375c6ceebab8368L, "CQRS.structure.IBoundedContextComponent");
    /*package*/ static final SConcept DtoRepository$kM = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x1f11be867ab796ffL, "CQRS.structure.DtoRepository");
    /*package*/ static final SConcept QueryContainer$da = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x3a4bff7934079ff4L, "CQRS.structure.QueryContainer");
    /*package*/ static final SConcept Query$nF = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x73da5086440e2444L, "CQRS.structure.Query");
    /*package*/ static final SConcept Parameter$as = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x73da508643ca7d84L, "CQRS.structure.Parameter");
  }

  private static final class LINKS {
    /*package*/ static final SContainmentLink dtoReference$pHOR = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x1f11be867ab796ffL, 0x1f11be867ad98c0bL, "dtoReference");
    /*package*/ static final SReferenceLink dto$DOQ$ = MetaAdapterFactory.getReferenceLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x4f0a0db9ac16f906L, 0x4f0a0db9ac16f907L, "dto");
  }
}