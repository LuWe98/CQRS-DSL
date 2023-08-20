package CQRS.actions;

/*Generated by MPS */

import jetbrains.mps.openapi.actions.descriptor.PastePostProcessor;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import CQRS.behavior.IElementOfBoundedContext__BehaviorDescriptor;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.internal.collections.runtime.IVisitor;
import org.jetbrains.mps.openapi.language.SConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SContainmentLink;

public final class CopyPasteHandlers_PastePostProcessor_8 implements PastePostProcessor {
  @Override
  public SAbstractConcept getApplicableConcept() {
    return CONCEPTS.GenerationSettings$VF;
  }
  @Override
  public void postProcessNode(final SNode pastedNode) {
    Iterable<SNode> generationSettings = SNodeOperations.ofConcept(SLinkOperations.getChildren(IElementOfBoundedContext__BehaviorDescriptor.boundedContext_id3VGLvhEO$iA.invoke(pastedNode), LINKS.components$8ymK), CONCEPTS.GenerationSettings$VF);

    Sequence.fromIterable(generationSettings).where(new IWhereFilter<SNode>() {
      public boolean accept(SNode it) {
        return it != pastedNode;
      }
    }).visitAll(new IVisitor<SNode>() {
      public void visit(SNode it) {
        SNodeOperations.deleteNode(it);
      }
    });
  }

  private static final class CONCEPTS {
    /*package*/ static final SConcept GenerationSettings$VF = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x58d666bf1654206L, "CQRS.structure.GenerationSettings");
  }

  private static final class LINKS {
    /*package*/ static final SContainmentLink components$8ymK = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x49ba7df3e302f916L, 0x4cfae7e92982f50eL, "components");
  }
}