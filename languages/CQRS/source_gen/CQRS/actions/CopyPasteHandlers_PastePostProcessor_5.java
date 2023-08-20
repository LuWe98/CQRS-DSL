package CQRS.actions;

/*Generated by MPS */

import jetbrains.mps.openapi.actions.descriptor.PastePostProcessor;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.model.SNode;
import CQRS.behavior.IRepositoryReference__BehaviorDescriptor;
import org.jetbrains.mps.openapi.language.SConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public final class CopyPasteHandlers_PastePostProcessor_5 implements PastePostProcessor {
  @Override
  public SAbstractConcept getApplicableConcept() {
    return CONCEPTS.DtoRepositoryReference$up;
  }
  @Override
  public void postProcessNode(SNode pastedNode) {
    IRepositoryReference__BehaviorDescriptor.onRepositoryReferencePasted_idmdpAJOmqph.invoke(pastedNode);
  }

  private static final class CONCEPTS {
    /*package*/ static final SConcept DtoRepositoryReference$up = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x642187fedbd24164L, "CQRS.structure.DtoRepositoryReference");
  }
}
