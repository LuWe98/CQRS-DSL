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
import CQRS.behavior.IDtoDerivation__BehaviorDescriptor;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.internal.collections.runtime.ISelector;
import CQRS.behavior.IVariableReference__BehaviorDescriptor;
import jetbrains.mps.scope.ListScope;
import jetbrains.mps.internal.collections.runtime.Sequence;
import org.jetbrains.mps.openapi.language.SInterfaceConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SContainmentLink;

public class IVariable_Constraints extends BaseConstraintsDescriptor {
  public IVariable_Constraints() {
    super(CONCEPTS.IVariable$Zo);
  }

  @Override
  public ConstraintFunction<ConstraintContext_DefaultScopeProvider, ReferenceScopeProvider> calculateDefaultScopeConstraint() {
    return new ConstraintFunction<ConstraintContext_DefaultScopeProvider, ReferenceScopeProvider>() {
      @Nullable
      public ReferenceScopeProvider invoke(@NotNull ConstraintContext_DefaultScopeProvider context, @Nullable CheckingNodeContext checkingNodeContext) {
        return new BaseScopeProvider() {
          @Override
          public SNodeReference getSearchScopeValidatorNode() {
            return new SNodePointer("r:0d7993a3-d2b8-4ac6-8b11-a4cb9134a9ef(CQRS.constraints)", "5501684678950600451");
          }
          @Override
          public Scope createScope(final ReferenceConstraintsContext _context) {
            SNode component = SNodeOperations.getNodeAncestor(_context.getContextNode(), CONCEPTS.IBoundedContextComponent$2H, true, false);

            {
              final SNode dto = component;
              if (SNodeOperations.isInstanceOf(dto, CONCEPTS.Dto$yu)) {
                return IVariable_Constraints.this._additional_provideDtoScope(dto, _context.getContextNode());
              }
            }

            {
              final SNode flatteningRuleContainer = component;
              if (SNodeOperations.isInstanceOf(flatteningRuleContainer, CONCEPTS.DtoFlatteningRuleContainer$qJ)) {
                return IVariable_Constraints.this._additional_provideDtoFlatteningRuleScope(flatteningRuleContainer, _context.getContextNode());
              }
            }

            return new EmptyScope();
          }
        };
      }
    };
  }
  private Scope _additional_provideDtoScope(SNode dto, final SNode contextNode) {
    if (dto == contextNode || Objects.equals(SNodeOperations.getContainingLink(contextNode), LINKS.ignoredVariableReferences$gg2P)) {

      // TODO Das noch fixen, dass die ausgewählte Variable nicht angezeigt wird in dem popup
      Iterable<SNode> variables = IDtoDerivation__BehaviorDescriptor.getAvailableVariables_id3NXs7yp5UST.invoke(dto);
      final Iterable<SNode> ignoredVariables = ListSequence.fromList(SLinkOperations.getChildren(dto, LINKS.ignoredVariableReferences$gg2P)).where(new IWhereFilter<SNode>() {
        public boolean accept(SNode variableReference) {
          return variableReference != contextNode;
        }
      }).select(new ISelector<SNode, SNode>() {
        public SNode select(SNode variableReference) {
          return (SNode) IVariableReference__BehaviorDescriptor.getReferencedVariable_id4LpUh3V3HC0.invoke(variableReference);
        }
      });
      return ListScope.forNamedElements(Sequence.fromIterable(variables).where(new IWhereFilter<SNode>() {
        public boolean accept(SNode it) {
          return !(Sequence.fromIterable(ignoredVariables).contains(it));
        }
      }));
    }

    return new EmptyScope();
  }
  private Scope _additional_provideDtoFlatteningRuleScope(SNode flatteningRuleContainer, final SNode contextNode) {
    SNode flatteningRule = SNodeOperations.getNodeAncestor(contextNode, CONCEPTS.DtoFlatteningRule$GR, true, false);

    if (flatteningRule == contextNode || Objects.equals(SNodeOperations.getContainingLink(contextNode), LINKS.ignoredVariableReferences$gg2P)) {

      // TODO Das noch fixen, dass die ausgewählte Variable nicht angezeigt wird in dem popup
      Iterable<SNode> variables = IDtoDerivation__BehaviorDescriptor.getAvailableVariables_id3NXs7yp5UST.invoke(flatteningRule);
      final Iterable<SNode> ignoredVariables = ListSequence.fromList(SLinkOperations.getChildren(flatteningRule, LINKS.ignoredVariableReferences$gg2P)).where(new IWhereFilter<SNode>() {
        public boolean accept(SNode variableReference) {
          return variableReference != contextNode;
        }
      }).select(new ISelector<SNode, SNode>() {
        public SNode select(SNode variableReference) {
          return (SNode) IVariableReference__BehaviorDescriptor.getReferencedVariable_id4LpUh3V3HC0.invoke(variableReference);
        }
      });

      return ListScope.forNamedElements(Sequence.fromIterable(variables).where(new IWhereFilter<SNode>() {
        public boolean accept(SNode it) {
          return !(Sequence.fromIterable(ignoredVariables).contains(it));
        }
      }));
    }

    return new EmptyScope();
  }

  private static final class CONCEPTS {
    /*package*/ static final SInterfaceConcept IVariable$Zo = MetaAdapterFactory.getInterfaceConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x4c59e910fb0ed95eL, "CQRS.structure.IVariable");
    /*package*/ static final SInterfaceConcept IBoundedContextComponent$2H = MetaAdapterFactory.getInterfaceConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x6375c6ceebab8368L, "CQRS.structure.IBoundedContextComponent");
    /*package*/ static final SConcept Dto$yu = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x4f0a0db9ac16f903L, "CQRS.structure.Dto");
    /*package*/ static final SConcept DtoFlatteningRuleContainer$qJ = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x3cfd70789940548dL, "CQRS.structure.DtoFlatteningRuleContainer");
    /*package*/ static final SConcept DtoFlatteningRule$GR = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x12da95fb99e0f985L, "CQRS.structure.DtoFlatteningRule");
  }

  private static final class LINKS {
    /*package*/ static final SContainmentLink ignoredVariableReferences$gg2P = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x3cfd70789857e2b7L, 0x3cfd707898583365L, "ignoredVariableReferences");
  }
}
