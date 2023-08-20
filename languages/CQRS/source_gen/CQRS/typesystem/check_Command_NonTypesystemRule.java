package CQRS.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.runtime.AbstractNonTypesystemRule_Runtime;
import jetbrains.mps.lang.typesystem.runtime.NonTypesystemRule_Runtime;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import CQRS.behavior.CommandContainer__BehaviorDescriptor;
import CQRS.behavior.Command__BehaviorDescriptor;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.errors.messageTargets.MessageTarget;
import jetbrains.mps.errors.messageTargets.NodeMessageTarget;
import jetbrains.mps.errors.IErrorReporter;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.language.SProperty;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SConcept;

public class check_Command_NonTypesystemRule extends AbstractNonTypesystemRule_Runtime implements NonTypesystemRule_Runtime {
  public check_Command_NonTypesystemRule() {
  }
  public void applyRule(final SNode command, final TypeCheckingContext typeCheckingContext, IsApplicableStatus status) {
    if ((boolean) CommandContainer__BehaviorDescriptor.isCommandHandler_id1LTEHzOfCt.invoke(Command__BehaviorDescriptor.getCommandContainer_id5$Oa659Yq3n.invoke(command)) && SPropertyOperations.getBoolean(command, PROPS.shouldDisplayReferences$PJ7j)) {
      {
        final MessageTarget errorTarget = new NodeMessageTarget();
        IErrorReporter _reporter_2309309498 = typeCheckingContext.reportTypeError(command, "Required repositories should be defined in the 'command handler' scope", "r:536879c6-46f8-4c9c-860d-b388e5bcaaf0(CQRS.typesystem)", "5614474895163083995", null, errorTarget);
      }
    }

    if (!(INamedConceptExtensions.startsWithUppercaseLetter(command))) {
      {
        final MessageTarget errorTarget = new NodeMessageTarget();
        IErrorReporter _reporter_2309309498 = typeCheckingContext.reportWarning(command, "Command should start with an uppercase letter", "r:536879c6-46f8-4c9c-860d-b388e5bcaaf0(CQRS.typesystem)", "6124797423276835969", null, errorTarget);
      }
    }
  }
  public SAbstractConcept getApplicableConcept() {
    return CONCEPTS.Command$kL;
  }
  public IsApplicableStatus isApplicableAndPattern(SNode argument) {
    return new IsApplicableStatus(argument.getConcept().isSubConceptOf(getApplicableConcept()), null);
  }
  public boolean overrides() {
    return false;
  }

  private static final class PROPS {
    /*package*/ static final SProperty shouldDisplayReferences$PJ7j = MetaAdapterFactory.getProperty(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x54ffa6ce505e12ecL, 0x54ffa6ce525323cbL, "shouldDisplayReferences");
  }

  private static final class CONCEPTS {
    /*package*/ static final SConcept Command$kL = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x73da5086440e243eL, "CQRS.structure.Command");
  }
}
