package CQRS.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.runtime.AbstractNonTypesystemRule_Runtime;
import jetbrains.mps.lang.typesystem.runtime.NonTypesystemRule_Runtime;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import CQRS.behavior.BoundedContext__BehaviorDescriptor;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.internal.collections.runtime.IVisitor;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import CQRS.behavior.IDataType__BehaviorDescriptor;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.errors.messageTargets.MessageTarget;
import jetbrains.mps.errors.messageTargets.NodeMessageTarget;
import jetbrains.mps.errors.IErrorReporter;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SConcept;

public class check_BoundedContext_ExplicitDataTypeRuleUniqueness_NonTypesystemRule extends AbstractNonTypesystemRule_Runtime implements NonTypesystemRule_Runtime {
  public check_BoundedContext_ExplicitDataTypeRuleUniqueness_NonTypesystemRule() {
  }
  public void applyRule(final SNode boundedContext, final TypeCheckingContext typeCheckingContext, IsApplicableStatus status) {
    final Iterable<SNode> dataTypeRules = BoundedContext__BehaviorDescriptor.dtoDataTypeRules_id4V91Il3EoyO.invoke(boundedContext);

    Sequence.fromIterable(dataTypeRules).visitAll(new IVisitor<SNode>() {
      public void visit(final SNode dataTypeRule) {
        // It is not allowed that there are multiple implicit rules for the same from Datatype
        Iterable<SNode> duplicateDataTypeRules = Sequence.fromIterable(dataTypeRules).where(new IWhereFilter<SNode>() {
          public boolean accept(SNode it) {
            return (boolean) IDataType__BehaviorDescriptor.hasSameDatatype_id3DbZR$NHBwn.invoke(SLinkOperations.getTarget(dataTypeRule, LINKS.fromType$BfIG), SLinkOperations.getTarget(it, LINKS.fromType$BfIG)) && (boolean) IDataType__BehaviorDescriptor.hasSameDatatype_id3DbZR$NHBwn.invoke(SLinkOperations.getTarget(dataTypeRule, LINKS.toType$BgcI), SLinkOperations.getTarget(it, LINKS.toType$BgcI));
          }
        });

        if (Sequence.fromIterable(duplicateDataTypeRules).count() > 1) {
          Sequence.fromIterable(duplicateDataTypeRules).visitAll(new IVisitor<SNode>() {
            public void visit(SNode it) {
              {
                final MessageTarget errorTarget = new NodeMessageTarget();
                IErrorReporter _reporter_2309309498 = typeCheckingContext.reportTypeError(it, "Multiple data type rules for the same types have been defined", "r:536879c6-46f8-4c9c-860d-b388e5bcaaf0(CQRS.typesystem)", "5677076387040137400", null, errorTarget);
              }
            }
          });
        }
      }
    });
  }
  public SAbstractConcept getApplicableConcept() {
    return CONCEPTS.BoundedContext$RF;
  }
  public IsApplicableStatus isApplicableAndPattern(SNode argument) {
    return new IsApplicableStatus(argument.getConcept().isSubConceptOf(getApplicableConcept()), null);
  }
  public boolean overrides() {
    return false;
  }

  private static final class LINKS {
    /*package*/ static final SContainmentLink toType$BgcI = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x12da95fb99e0f984L, 0x4c59e910fdc7b220L, "toType");
    /*package*/ static final SContainmentLink fromType$BfIG = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x12da95fb99e0f984L, 0x4c59e910fdc7b21eL, "fromType");
  }

  private static final class CONCEPTS {
    /*package*/ static final SConcept BoundedContext$RF = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x49ba7df3e302f916L, "CQRS.structure.BoundedContext");
  }
}