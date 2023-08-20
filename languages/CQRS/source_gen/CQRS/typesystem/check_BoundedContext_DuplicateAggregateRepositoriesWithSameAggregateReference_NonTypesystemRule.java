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
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.internal.collections.runtime.MapSequence;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.Objects;
import jetbrains.mps.internal.collections.runtime.IVisitor;
import jetbrains.mps.errors.messageTargets.MessageTarget;
import jetbrains.mps.errors.messageTargets.NodeMessageTarget;
import jetbrains.mps.errors.IErrorReporter;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import org.jetbrains.mps.openapi.language.SProperty;
import org.jetbrains.mps.openapi.language.SConcept;

public class check_BoundedContext_DuplicateAggregateRepositoriesWithSameAggregateReference_NonTypesystemRule extends AbstractNonTypesystemRule_Runtime implements NonTypesystemRule_Runtime {
  public check_BoundedContext_DuplicateAggregateRepositoriesWithSameAggregateReference_NonTypesystemRule() {
  }
  public void applyRule(final SNode boundedContext, final TypeCheckingContext typeCheckingContext, IsApplicableStatus status) {
    Map<SNode, List<SNode>> grouping = CollectionUtils.groupBy(BoundedContext__BehaviorDescriptor.aggregateRootRepositories_idawtshklq0$.invoke(boundedContext), (SNode repository) -> SLinkOperations.getTarget(SLinkOperations.getTarget(repository, LINKS.aggregateReference$1ZNc), LINKS.aggregate$D_P$));

    for (final SNode key : MapSequence.fromMap(grouping).keySet()) {
      List<SNode> repositories = MapSequence.fromMap(grouping).get(key);

      if (ListSequence.fromList(repositories).count() > 1 && !(Objects.equals(key, null))) {
        ListSequence.fromList(repositories).visitAll(new IVisitor<SNode>() {
          public void visit(SNode component) {
            {
              final MessageTarget errorTarget = new NodeMessageTarget();
              IErrorReporter _reporter_2309309498 = typeCheckingContext.reportTypeError(component, "Another aggregate repository is already referencing '" + SPropertyOperations.getString(key, PROPS.name$MnvL) + "'", "r:536879c6-46f8-4c9c-860d-b388e5bcaaf0(CQRS.typesystem)", "4421886450478531115", null, errorTarget);
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

  private static final class LINKS {
    /*package*/ static final SContainmentLink aggregateReference$1ZNc = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x73da5086441fb19dL, 0x5e223a0a09fe3269L, "aggregateReference");
    /*package*/ static final SReferenceLink aggregate$D_P$ = MetaAdapterFactory.getReferenceLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x4f0a0db9ac16f8f2L, 0x4f0a0db9ac16f8f3L, "aggregate");
  }

  private static final class PROPS {
    /*package*/ static final SProperty name$MnvL = MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name");
  }

  private static final class CONCEPTS {
    /*package*/ static final SConcept BoundedContext$RF = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x49ba7df3e302f916L, "CQRS.structure.BoundedContext");
  }
}
