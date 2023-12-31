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
import java.util.Objects;
import jetbrains.mps.scope.ListScope;
import jetbrains.mps.internal.collections.runtime.Sequence;
import CQRS.behavior.BoundedContext__BehaviorDescriptor;
import CQRS.behavior.IElementOfBoundedContext__BehaviorDescriptor;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import CQRS.behavior.IDtoDerivableReference__BehaviorDescriptor;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import CQRS.behavior.IDtoDerivation__BehaviorDescriptor;
import org.jetbrains.mps.openapi.language.SConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SInterfaceConcept;
import org.jetbrains.mps.openapi.language.SContainmentLink;

public class Entity_Constraints extends BaseConstraintsDescriptor {
  public Entity_Constraints() {
    super(CONCEPTS.Entity$lp);
  }

  @Override
  public ConstraintFunction<ConstraintContext_DefaultScopeProvider, ReferenceScopeProvider> calculateDefaultScopeConstraint() {
    return new ConstraintFunction<ConstraintContext_DefaultScopeProvider, ReferenceScopeProvider>() {
      @Nullable
      public ReferenceScopeProvider invoke(@NotNull ConstraintContext_DefaultScopeProvider context, @Nullable CheckingNodeContext checkingNodeContext) {
        return new BaseScopeProvider() {
          @Override
          public SNodeReference getSearchScopeValidatorNode() {
            return new SNodePointer("r:0d7993a3-d2b8-4ac6-8b11-a4cb9134a9ef(CQRS.constraints)", "8348073396880466271");
          }
          @Override
          public Scope createScope(final ReferenceConstraintsContext _context) {
            SNode component = SNodeOperations.getNodeAncestor(_context.getContextNode(), CONCEPTS.IBoundedContextComponent$2H, true, false);

            {
              final SNode aggregateRoot = component;
              if (SNodeOperations.isInstanceOf(aggregateRoot, CONCEPTS.AggregateRoot$Q_)) {
                return Entity_Constraints.this._additional_provideAggregateRootScope(aggregateRoot, _context.getContextNode());
              }
            }

            {
              final SNode entity = component;
              if (SNodeOperations.isInstanceOf(entity, CONCEPTS.Entity$lp)) {
                return Entity_Constraints.this._additional_provideEntityScope(entity, _context.getContextNode());
              }
            }

            {
              final SNode dto = component;
              if (SNodeOperations.isInstanceOf(dto, CONCEPTS.Dto$yu)) {
                return Entity_Constraints.this._additional_provideDtoScope(dto, _context.getContextNode());
              }
            }

            {
              final SNode flatteningRuleCcontainer = component;
              if (SNodeOperations.isInstanceOf(flatteningRuleCcontainer, CONCEPTS.DtoFlatteningRuleContainer$qJ)) {
                return Entity_Constraints.this._additional_provideDtoFlatteningRuleScope(flatteningRuleCcontainer, _context.getContextNode());
              }
            }

            return new EmptyScope();
          }
        };
      }
    };
  }
  private Scope _additional_provideEntityScope(final SNode entity, SNode contextNode) {
    if (entity == contextNode || Objects.equals(SNodeOperations.getContainingLink(contextNode), LINKS.idType$P983)) {
      return new EmptyScope();
    }

    return ListScope.forNamedElements(Sequence.fromIterable(BoundedContext__BehaviorDescriptor.entities_id7fqk8p41AIx.invoke(IElementOfBoundedContext__BehaviorDescriptor.boundedContext_id3VGLvhEO$iA.invoke(entity))).where(new IWhereFilter<SNode>() {
      public boolean accept(SNode it) {
        return it != entity;
      }
    }));
  }
  private Scope _additional_provideAggregateRootScope(SNode aggregateRoot, SNode contextNode) {
    if (aggregateRoot == contextNode || Objects.equals(SNodeOperations.getContainingLink(contextNode), LINKS.idType$EoIp)) {
      return new EmptyScope();
    }

    return ListScope.forNamedElements(BoundedContext__BehaviorDescriptor.entities_id7fqk8p41AIx.invoke(IElementOfBoundedContext__BehaviorDescriptor.boundedContext_id3VGLvhEO$iA.invoke(aggregateRoot)));
  }
  private Scope _additional_provideDtoScope(SNode dto, SNode contextNode) {
    if (contextNode == dto || Objects.equals(SNodeOperations.getContainingLink(contextNode), LINKS.derivableReference$gfNO)) {
      SNode boundedContext = IElementOfBoundedContext__BehaviorDescriptor.boundedContext_id3VGLvhEO$iA.invoke(dto);
      return ListScope.forNamedElements(BoundedContext__BehaviorDescriptor.findUnusedDtoDerivablesIncluding_id3NXs7yo7EMe.invoke(boundedContext, IDtoDerivableReference__BehaviorDescriptor.getDtoDerivable_id4LpUh3T0tIy.invoke(SLinkOperations.getTarget(dto, LINKS.derivableReference$gfNO))));
    }

    return new EmptyScope();
  }
  private Scope _additional_provideDtoFlatteningRuleScope(SNode flatteningRuleContainer, SNode contextNode) {
    SNode flatteningRule = SNodeOperations.getNodeAncestor(contextNode, CONCEPTS.DtoFlatteningRule$GR, true, false);

    if (contextNode == flatteningRule || Objects.equals(SNodeOperations.getContainingLink(contextNode), LINKS.derivableReference$gfNO)) {
      SNode boundedContext = IElementOfBoundedContext__BehaviorDescriptor.boundedContext_id3VGLvhEO$iA.invoke(flatteningRuleContainer);
      return ListScope.forNamedElements(BoundedContext__BehaviorDescriptor.findUnusedDtoDerivablesIncluding_id3NXs7yo7EMe.invoke(boundedContext, IDtoDerivation__BehaviorDescriptor.getDtoDerivable_id3NXs7yomd17.invoke(flatteningRule)));
    }

    return new EmptyScope();
  }

  private static final class CONCEPTS {
    /*package*/ static final SConcept Entity$lp = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x4f0a0db9ac16f8fdL, "CQRS.structure.Entity");
    /*package*/ static final SInterfaceConcept IBoundedContextComponent$2H = MetaAdapterFactory.getInterfaceConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x6375c6ceebab8368L, "CQRS.structure.IBoundedContextComponent");
    /*package*/ static final SConcept AggregateRoot$Q_ = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x4cfae7e929829c99L, "CQRS.structure.AggregateRoot");
    /*package*/ static final SConcept Dto$yu = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x4f0a0db9ac16f903L, "CQRS.structure.Dto");
    /*package*/ static final SConcept DtoFlatteningRuleContainer$qJ = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x3cfd70789940548dL, "CQRS.structure.DtoFlatteningRuleContainer");
    /*package*/ static final SConcept DtoFlatteningRule$GR = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x12da95fb99e0f985L, "CQRS.structure.DtoFlatteningRule");
  }

  private static final class LINKS {
    /*package*/ static final SContainmentLink idType$P983 = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x4f0a0db9ac16f8fdL, 0x73da508643ec8188L, "idType");
    /*package*/ static final SContainmentLink idType$EoIp = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x4cfae7e929829c99L, 0x4cfae7e929829cc6L, "idType");
    /*package*/ static final SContainmentLink derivableReference$gfNO = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x3cfd70789857e2b7L, 0x3cfd707898583364L, "derivableReference");
  }
}
