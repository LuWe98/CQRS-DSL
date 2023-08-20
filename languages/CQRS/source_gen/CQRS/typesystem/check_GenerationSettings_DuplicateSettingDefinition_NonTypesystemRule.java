package CQRS.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.runtime.AbstractNonTypesystemRule_Runtime;
import jetbrains.mps.lang.typesystem.runtime.NonTypesystemRule_Runtime;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import java.util.Map;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import java.util.List;
import CQRS.util.CollectionUtils;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.internal.collections.runtime.MapSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.internal.collections.runtime.IVisitor;
import jetbrains.mps.errors.messageTargets.MessageTarget;
import jetbrains.mps.errors.messageTargets.NodeMessageTarget;
import jetbrains.mps.errors.IErrorReporter;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SConcept;

public class check_GenerationSettings_DuplicateSettingDefinition_NonTypesystemRule extends AbstractNonTypesystemRule_Runtime implements NonTypesystemRule_Runtime {
  public check_GenerationSettings_DuplicateSettingDefinition_NonTypesystemRule() {
  }
  public void applyRule(final SNode settings, final TypeCheckingContext typeCheckingContext, IsApplicableStatus status) {
    Map<SAbstractConcept, List<SNode>> groupedComponents = CollectionUtils.groupBy(SLinkOperations.getChildren(settings, LINKS.components$SPiV), (SNode input) -> SNodeOperations.getConcept(input));

    for (final SAbstractConcept key : MapSequence.fromMap(groupedComponents).keySet()) {
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(key), CONCEPTS.EmptyLine$_9) || SConceptOperations.isExactly(SNodeOperations.asSConcept(key), CONCEPTS.CommentLine$gQ)) {
        continue;
      }

      List<SNode> components = MapSequence.fromMap(groupedComponents).get(key);
      if (ListSequence.fromList(components).count() > 1) {
        ListSequence.fromList(components).visitAll(new IVisitor<SNode>() {
          public void visit(SNode component) {
            {
              final MessageTarget errorTarget = new NodeMessageTarget();
              IErrorReporter _reporter_2309309498 = typeCheckingContext.reportTypeError(component, "Duplicate preference " + SConceptOperations.conceptAlias(key) + " defined", "r:536879c6-46f8-4c9c-860d-b388e5bcaaf0(CQRS.typesystem)", "8552770862218780325", null, errorTarget);
            }
          }
        });
      }
    }
  }
  public SAbstractConcept getApplicableConcept() {
    return CONCEPTS.GenerationSettings$VF;
  }
  public IsApplicableStatus isApplicableAndPattern(SNode argument) {
    return new IsApplicableStatus(argument.getConcept().isSubConceptOf(getApplicableConcept()), null);
  }
  public boolean overrides() {
    return false;
  }

  private static final class LINKS {
    /*package*/ static final SContainmentLink components$SPiV = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x58d666bf1654206L, 0x6165532e2ee2939L, "components");
  }

  private static final class CONCEPTS {
    /*package*/ static final SConcept CommentLine$gQ = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x62cb964345d71a2L, "CQRS.structure.CommentLine");
    /*package*/ static final SConcept EmptyLine$_9 = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x62cb964344649a2L, "CQRS.structure.EmptyLine");
    /*package*/ static final SConcept GenerationSettings$VF = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x58d666bf1654206L, "CQRS.structure.GenerationSettings");
  }
}