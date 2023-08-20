package CQRS.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.runtime.AbstractNonTypesystemRule_Runtime;
import jetbrains.mps.lang.typesystem.runtime.NonTypesystemRule_Runtime;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import java.util.Map;
import java.util.List;
import CQRS.util.CollectionUtils;
import CQRS.behavior.BoundedContext__BehaviorDescriptor;
import CQRS.behavior.CommandContainer__BehaviorDescriptor;
import jetbrains.mps.internal.collections.runtime.MapSequence;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.Objects;
import jetbrains.mps.internal.collections.runtime.IVisitor;
import jetbrains.mps.errors.messageTargets.MessageTarget;
import jetbrains.mps.errors.messageTargets.NodeMessageTarget;
import jetbrains.mps.errors.IErrorReporter;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.language.SConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class check_BoundedContext_DuplicateCommandHandlerName_NonTypesystemRule extends AbstractNonTypesystemRule_Runtime implements NonTypesystemRule_Runtime {
  public check_BoundedContext_DuplicateCommandHandlerName_NonTypesystemRule() {
  }
  public void applyRule(final SNode boundedContext, final TypeCheckingContext typeCheckingContext, IsApplicableStatus status) {
    Map<String, List<SNode>> grouping = CollectionUtils.groupBy(BoundedContext__BehaviorDescriptor.commandHandlers_id3fVLq_owmYf.invoke(boundedContext), (SNode container) -> (String) CommandContainer__BehaviorDescriptor.getCommandContainerName_id51Z40Vzx6GO.invoke(container));

    for (final String key : MapSequence.fromMap(grouping).keySet()) {
      List<SNode> container = MapSequence.fromMap(grouping).get(key);

      if (ListSequence.fromList(container).count() > 1 && !(Objects.equals(key, null))) {
        ListSequence.fromList(container).visitAll(new IVisitor<SNode>() {
          public void visit(SNode component) {
            {
              final MessageTarget errorTarget = new NodeMessageTarget();
              IErrorReporter _reporter_2309309498 = typeCheckingContext.reportTypeError(component, "Another command handler with name '" + key + "' is already defined", "r:536879c6-46f8-4c9c-860d-b388e5bcaaf0(CQRS.typesystem)", "4421886450487499624", null, errorTarget);
            }
          }
        });
      }
    }
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

  private static final class CONCEPTS {
    /*package*/ static final SConcept BoundedContext$RF = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x49ba7df3e302f916L, "CQRS.structure.BoundedContext");
  }
}
