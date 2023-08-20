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
import CQRS.behavior.IElementOfBoundedContext__BehaviorDescriptor;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.internal.collections.runtime.Sequence;
import CQRS.behavior.BoundedContext__BehaviorDescriptor;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.scope.ListScope;
import CQRS.util.ScopeUtils;
import java.util.Objects;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import CQRS.behavior.CommandContainer__BehaviorDescriptor;
import jetbrains.mps.internal.collections.runtime.ISelector;
import CQRS.behavior.IComponentWithRepositoryReferences__BehaviorDescriptor;
import CQRS.behavior.Command__BehaviorDescriptor;
import CQRS.behavior.IDtoDerivation__BehaviorDescriptor;
import org.jetbrains.mps.openapi.language.SConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SInterfaceConcept;
import org.jetbrains.mps.openapi.language.SReferenceLink;

public class AggregateRoot_Constraints extends BaseConstraintsDescriptor {
  public AggregateRoot_Constraints() {
    super(CONCEPTS.AggregateRoot$Q_);
  }

  @Override
  public ConstraintFunction<ConstraintContext_DefaultScopeProvider, ReferenceScopeProvider> calculateDefaultScopeConstraint() {
    return new ConstraintFunction<ConstraintContext_DefaultScopeProvider, ReferenceScopeProvider>() {
      @Nullable
      public ReferenceScopeProvider invoke(@NotNull ConstraintContext_DefaultScopeProvider context, @Nullable CheckingNodeContext checkingNodeContext) {
        return new BaseScopeProvider() {
          @Override
          public SNodeReference getSearchScopeValidatorNode() {
            return new SNodePointer("r:0d7993a3-d2b8-4ac6-8b11-a4cb9134a9ef(CQRS.constraints)", "8348073396882582879");
          }
          @Override
          public Scope createScope(final ReferenceConstraintsContext _context) {
            SNode component = SNodeOperations.getNodeAncestor(_context.getContextNode(), CONCEPTS.IBoundedContextComponent$2H, true, false);

            {
              final SNode command = component;
              if (SNodeOperations.isInstanceOf(command, CONCEPTS.Command$kL)) {
                return AggregateRoot_Constraints.this._additional_provideCommandScope(command, _context.getContextNode());
              }
            }

            {
              final SNode repository = component;
              if (SNodeOperations.isInstanceOf(repository, CONCEPTS.AggregateRootRepository$qW)) {
                return AggregateRoot_Constraints.this._additional_provideAggregateRepositoryScope(repository, _context.getContextNode());
              }
            }

            {
              final SNode eventContainer = component;
              if (SNodeOperations.isInstanceOf(eventContainer, CONCEPTS.EventContainer$Aq)) {
                return AggregateRoot_Constraints.this._additional_provideEventConatinerScope(eventContainer, _context.getContextNode());
              }
            }

            {
              final SNode commandContainer = component;
              if (SNodeOperations.isInstanceOf(commandContainer, CONCEPTS.CommandContainer$3C)) {
                return AggregateRoot_Constraints.this._additional_provideCommandContainerScope(commandContainer, _context.getContextNode(), _context.getContainmentLink());
              }
            }

            {
              final SNode dto = component;
              if (SNodeOperations.isInstanceOf(dto, CONCEPTS.Dto$yu)) {
                return AggregateRoot_Constraints.this._additional_provideDtoScope(dto, _context.getContextNode());
              }
            }

            {
              final SNode flatteningRuleContainer = component;
              if (SNodeOperations.isInstanceOf(flatteningRuleContainer, CONCEPTS.DtoFlatteningRuleContainer$qJ)) {
                return AggregateRoot_Constraints.this._additional_provideDtoFlatteningRuleScope(flatteningRuleContainer, _context.getContextNode());
              }
            }

            return new EmptyScope();
          }
        };
      }
    };
  }
  private Scope _additional_provideAggregateRepositoryScope(final SNode repository, SNode contextNode) {
    if (repository == contextNode) {
      SNode boundedContext = IElementOfBoundedContext__BehaviorDescriptor.boundedContext_id3VGLvhEO$iA.invoke(repository);
      final Iterable<SNode> referencedAggregateRoots = SLinkOperations.collect(SLinkOperations.collect(Sequence.fromIterable(BoundedContext__BehaviorDescriptor.aggregateRootRepositories_idawtshklq0$.invoke(boundedContext)).where(new IWhereFilter<SNode>() {
        public boolean accept(SNode it) {
          return it != repository;
        }
      }), LINKS.aggregateReference$1ZNc), LINKS.aggregate$D_P$);
      Iterable<SNode> nodes = Sequence.fromIterable(BoundedContext__BehaviorDescriptor.aggregateRoots_id7fqk8p3M$40.invoke(boundedContext)).where(new IWhereFilter<SNode>() {
        public boolean accept(SNode it) {
          return !(Sequence.fromIterable(referencedAggregateRoots).contains(it));
        }
      });
      return ListScope.forNamedElements(nodes);
    }

    return ScopeUtils.ofElements(SLinkOperations.getTarget(SLinkOperations.getTarget(repository, LINKS.aggregateReference$1ZNc), LINKS.aggregate$D_P$));
  }
  private Scope _additional_provideEventConatinerScope(final SNode eventContainer, final SNode contextNode) {
    if (eventContainer == contextNode || Objects.equals(SNodeOperations.getContainingLink(contextNode), LINKS.aggregateReference$Zvu9)) {
      SNode boundedContext = IElementOfBoundedContext__BehaviorDescriptor.boundedContext_id3VGLvhEO$iA.invoke(eventContainer);
      final Iterable<SNode> referencedAggregateRoots = SLinkOperations.collect(SLinkOperations.collect(Sequence.fromIterable(BoundedContext__BehaviorDescriptor.eventContainers_idawtshki2N9.invoke(boundedContext)).where(new IWhereFilter<SNode>() {
        public boolean accept(SNode it) {
          return it != eventContainer;
        }
      }), LINKS.aggregateReference$Zvu9), LINKS.aggregate$D_P$);
      Iterable<SNode> nodes = Sequence.fromIterable(BoundedContext__BehaviorDescriptor.aggregateRoots_id7fqk8p3M$40.invoke(boundedContext)).where(new IWhereFilter<SNode>() {
        public boolean accept(SNode it) {
          return SLinkOperations.getTarget(SNodeOperations.as(contextNode, CONCEPTS.AggregateRootReference$5T), LINKS.aggregate$D_P$) == it || !(Sequence.fromIterable(referencedAggregateRoots).contains(it));
        }
      });
      return ListScope.forNamedElements(nodes);
    }

    return new EmptyScope();
  }
  private Scope _additional_provideCommandContainerScope(final SNode commandContainer, final SNode contextNode, SContainmentLink link) {
    SNode boundedContext = IElementOfBoundedContext__BehaviorDescriptor.boundedContext_id3VGLvhEO$iA.invoke(commandContainer);

    if (Objects.equals(SNodeOperations.getContainingLink(contextNode), LINKS.aggregateReference$V1gV) || Objects.equals(link, LINKS.aggregateReference$V1gV)) {
      final Iterable<SNode> referencedAggregateRoots = Sequence.fromIterable(BoundedContext__BehaviorDescriptor.commandContainers_idawtshknSQ0.invoke(boundedContext)).where(new IWhereFilter<SNode>() {
        public boolean accept(SNode it) {
          return it != commandContainer && (boolean) CommandContainer__BehaviorDescriptor.isAggregateCommandHandler_id51Z40V$BJAY.invoke(it);
        }
      }).select(new ISelector<SNode, SNode>() {
        public SNode select(SNode it) {
          return (SNode) CommandContainer__BehaviorDescriptor.getReferencedAggregate_id3PtG$LHuKCW.invoke(it);
        }
      });

      Iterable<SNode> validAggregates = Sequence.fromIterable(BoundedContext__BehaviorDescriptor.aggregateRoots_id7fqk8p3M$40.invoke(boundedContext)).where(new IWhereFilter<SNode>() {
        public boolean accept(SNode it) {
          return Objects.equals(CommandContainer__BehaviorDescriptor.getReferencedAggregate_id3PtG$LHuKCW.invoke(commandContainer), it) || !(Sequence.fromIterable(referencedAggregateRoots).contains(it));
        }
      });

      return ListScope.forNamedElements(validAggregates);
    }

    if (commandContainer == contextNode || Objects.equals(SNodeOperations.getContainingLink(contextNode), LINKS.repositoryReferences$PHWe)) {
      Iterable<SNode> nodes = Sequence.fromIterable(BoundedContext__BehaviorDescriptor.aggregateRoots_id7fqk8p3M$40.invoke(boundedContext)).where(new IWhereFilter<SNode>() {
        public boolean accept(SNode it) {
          return it == SLinkOperations.getTarget(SNodeOperations.as(contextNode, CONCEPTS.AggregateRootRepositoryReference$pq), LINKS.aggregate$rv49) || !((boolean) IComponentWithRepositoryReferences__BehaviorDescriptor.isReferencing_id5jZDGTilx5F.invoke(commandContainer, it));
        }
      });
      return ListScope.forNamedElements(nodes);
    }

    return new EmptyScope();
  }
  private Scope _additional_provideCommandScope(final SNode command, SNode contextNode) {
    // Aggregate Roots can only be used in repositoryReference
    if (!(Objects.equals(SNodeOperations.getContainingLink(contextNode), LINKS.repositoryReferences$PHWe))) {
      return new EmptyScope();
    }

    SNode boundedContext = IElementOfBoundedContext__BehaviorDescriptor.boundedContext_id3VGLvhEO$iA.invoke(command);

    // TODO Hier steht, wie man das mit den referenzen machen kann, welche Aggregate man dann auch verwenden kann / darf
    if (!((boolean) Command__BehaviorDescriptor.isInsideCommandContainer_id1jrq3npy$dZ.invoke(command))) {
      return ListScope.forNamedElements(BoundedContext__BehaviorDescriptor.aggregateRoots_id7fqk8p3M$40.invoke(boundedContext));
    }

    return ListScope.forNamedElements(Sequence.fromIterable(BoundedContext__BehaviorDescriptor.aggregateRoots_id7fqk8p3M$40.invoke(boundedContext)).where(new IWhereFilter<SNode>() {
      public boolean accept(SNode aggregate) {
        return !((boolean) IComponentWithRepositoryReferences__BehaviorDescriptor.isReferencing_id5jZDGTilx5F.invoke(Command__BehaviorDescriptor.getCommandContainer_id5$Oa659Yq3n.invoke(command), aggregate));
      }
    }));
  }
  private Scope _additional_provideDtoScope(SNode dto, SNode contextNode) {
    if (contextNode == dto || Objects.equals(SNodeOperations.getContainingLink(contextNode), LINKS.derivableReference$gfNO)) {
      SNode boundedContext = IElementOfBoundedContext__BehaviorDescriptor.boundedContext_id3VGLvhEO$iA.invoke(dto);

      return ListScope.forNamedElements(BoundedContext__BehaviorDescriptor.aggregateRoots_id7fqk8p3M$40.invoke(boundedContext));
    }
    return new EmptyScope();
  }
  private Scope _additional_provideDtoFlatteningRuleScope(SNode flatteningRuleContainer, SNode contextNode) {
    SNode flatteningRule = SNodeOperations.getNodeAncestor(contextNode, CONCEPTS.DtoFlatteningRule$GR, true, false);

    if (contextNode == flatteningRule || Objects.equals(SNodeOperations.getContainingLink(contextNode), LINKS.derivableReference$gfNO)) {
      SNode boundedContext = IElementOfBoundedContext__BehaviorDescriptor.boundedContext_id3VGLvhEO$iA.invoke(flatteningRuleContainer);
      return ListScope.forNamedElements(BoundedContext__BehaviorDescriptor.findUnusedDtoDerivablesForFlatteningRulesIncluding_id3NXs7yowktH.invoke(boundedContext, IDtoDerivation__BehaviorDescriptor.getDtoDerivable_id3NXs7yomd17.invoke(flatteningRule)));
    }

    return new EmptyScope();
  }

  private static final class CONCEPTS {
    /*package*/ static final SConcept AggregateRoot$Q_ = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x4cfae7e929829c99L, "CQRS.structure.AggregateRoot");
    /*package*/ static final SInterfaceConcept IBoundedContextComponent$2H = MetaAdapterFactory.getInterfaceConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x6375c6ceebab8368L, "CQRS.structure.IBoundedContextComponent");
    /*package*/ static final SConcept Command$kL = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x73da5086440e243eL, "CQRS.structure.Command");
    /*package*/ static final SConcept AggregateRootRepository$qW = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x73da5086441fb19dL, "CQRS.structure.AggregateRootRepository");
    /*package*/ static final SConcept EventContainer$Aq = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x73da50864411af9fL, "CQRS.structure.EventContainer");
    /*package*/ static final SConcept CommandContainer$3C = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x2a075c454595567L, "CQRS.structure.CommandContainer");
    /*package*/ static final SConcept Dto$yu = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x4f0a0db9ac16f903L, "CQRS.structure.Dto");
    /*package*/ static final SConcept DtoFlatteningRuleContainer$qJ = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x3cfd70789940548dL, "CQRS.structure.DtoFlatteningRuleContainer");
    /*package*/ static final SConcept AggregateRootReference$5T = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x4f0a0db9ac16f8f2L, "CQRS.structure.AggregateRootReference");
    /*package*/ static final SConcept AggregateRootRepositoryReference$pq = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x593428614a1cdb1aL, "CQRS.structure.AggregateRootRepositoryReference");
    /*package*/ static final SConcept DtoFlatteningRule$GR = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x12da95fb99e0f985L, "CQRS.structure.DtoFlatteningRule");
  }

  private static final class LINKS {
    /*package*/ static final SContainmentLink aggregateReference$1ZNc = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x73da5086441fb19dL, 0x5e223a0a09fe3269L, "aggregateReference");
    /*package*/ static final SReferenceLink aggregate$D_P$ = MetaAdapterFactory.getReferenceLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x4f0a0db9ac16f8f2L, 0x4f0a0db9ac16f8f3L, "aggregate");
    /*package*/ static final SContainmentLink aggregateReference$Zvu9 = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x73da50864411af9fL, 0x14db6835d8e753d5L, "aggregateReference");
    /*package*/ static final SContainmentLink aggregateReference$V1gV = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x2a075c454595567L, 0x7849637c487da2bcL, "aggregateReference");
    /*package*/ static final SReferenceLink aggregate$rv49 = MetaAdapterFactory.getReferenceLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x593428614a1cdb1aL, 0x593428614a1d9431L, "aggregate");
    /*package*/ static final SContainmentLink repositoryReferences$PHWe = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x54ffa6ce505e12ecL, 0x54ffa6ce525323c6L, "repositoryReferences");
    /*package*/ static final SContainmentLink derivableReference$gfNO = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x3cfd70789857e2b7L, 0x3cfd707898583364L, "derivableReference");
  }
}
