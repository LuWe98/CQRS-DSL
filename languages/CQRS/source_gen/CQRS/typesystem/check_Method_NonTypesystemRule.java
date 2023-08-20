package CQRS.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.runtime.AbstractNonTypesystemRule_Runtime;
import jetbrains.mps.lang.typesystem.runtime.NonTypesystemRule_Runtime;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import jetbrains.mps.errors.messageTargets.MessageTarget;
import jetbrains.mps.errors.messageTargets.NodeMessageTarget;
import jetbrains.mps.errors.IErrorReporter;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SProperty;
import org.jetbrains.mps.openapi.language.SConcept;

public class check_Method_NonTypesystemRule extends AbstractNonTypesystemRule_Runtime implements NonTypesystemRule_Runtime {
  public check_Method_NonTypesystemRule() {
  }
  public void applyRule(final SNode method, final TypeCheckingContext typeCheckingContext, IsApplicableStatus status) {
    if (!(INamedConceptExtensions.startsWithLowercaseLetter(method))) {
      {
        final MessageTarget errorTarget = new NodeMessageTarget();
        IErrorReporter _reporter_2309309498 = typeCheckingContext.reportWarning(method, "Methods should start with a lowercase letter", "r:536879c6-46f8-4c9c-860d-b388e5bcaaf0(CQRS.typesystem)", "6124797423277446584", null, errorTarget);
      }
    }

    INamedConceptExtensions.forEachDuplicateName(SLinkOperations.getChildren(method, LINKS.parameters$t6h4), (SNode parameter) -> {
      {
        final MessageTarget errorTarget = new NodeMessageTarget();
        IErrorReporter _reporter_2309309498 = typeCheckingContext.reportTypeError(parameter, "Parameter with name ".concat(SPropertyOperations.getString(parameter, PROPS.name$MnvL)) + " already defined", "r:536879c6-46f8-4c9c-860d-b388e5bcaaf0(CQRS.typesystem)", "4200731973479118217", null, errorTarget);
      }
    });

  }
  public SAbstractConcept getApplicableConcept() {
    return CONCEPTS.Method$mm;
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

  private static final class PROPS {
    /*package*/ static final SProperty name$MnvL = MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name");
  }

  private static final class CONCEPTS {
    /*package*/ static final SConcept Method$mm = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x73da508643f0517eL, "CQRS.structure.Method");
  }
}