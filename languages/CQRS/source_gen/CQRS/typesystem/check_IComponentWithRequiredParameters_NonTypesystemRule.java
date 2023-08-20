package CQRS.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.runtime.AbstractNonTypesystemRule_Runtime;
import jetbrains.mps.lang.typesystem.runtime.NonTypesystemRule_Runtime;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.errors.messageTargets.MessageTarget;
import jetbrains.mps.errors.messageTargets.NodeMessageTarget;
import jetbrains.mps.errors.IErrorReporter;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SInterfaceConcept;

public class check_IComponentWithRequiredParameters_NonTypesystemRule extends AbstractNonTypesystemRule_Runtime implements NonTypesystemRule_Runtime {
  public check_IComponentWithRequiredParameters_NonTypesystemRule() {
  }
  public void applyRule(final SNode iComponentWithRequiredParameters, final TypeCheckingContext typeCheckingContext, IsApplicableStatus status) {
    if (ListSequence.fromList(SLinkOperations.getChildren(iComponentWithRequiredParameters, LINKS.parameters$t6h4)).isEmpty()) {
      {
        final MessageTarget errorTarget = new NodeMessageTarget();
        IErrorReporter _reporter_2309309498 = typeCheckingContext.reportTypeError(iComponentWithRequiredParameters, "At least one Parameter is required", "r:536879c6-46f8-4c9c-860d-b388e5bcaaf0(CQRS.typesystem)", "4244590657555037178", null, errorTarget);
      }
    }
  }
  public SAbstractConcept getApplicableConcept() {
    return CONCEPTS.IComponentWithRequiredParameters$FP;
  }
  public IsApplicableStatus isApplicableAndPattern(SNode argument) {
    return new IsApplicableStatus(argument.getConcept().isSubConceptOf(getApplicableConcept()), null);
  }
  public boolean overrides() {
    return false;
  }

  private static final class LINKS {
    /*package*/ static final SContainmentLink parameters$t6h4 = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x62cb96433e80624L, 0x62cb96433e80625L, "parameters");
  }

  private static final class CONCEPTS {
    /*package*/ static final SInterfaceConcept IComponentWithRequiredParameters$FP = MetaAdapterFactory.getInterfaceConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x3ae7d0b6d881fb45L, "CQRS.structure.IComponentWithRequiredParameters");
  }
}
