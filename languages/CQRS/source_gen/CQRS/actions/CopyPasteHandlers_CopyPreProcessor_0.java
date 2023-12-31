package CQRS.actions;

/*Generated by MPS */

import jetbrains.mps.openapi.actions.descriptor.CopyPreProcessor;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import org.jetbrains.mps.openapi.language.SConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public final class CopyPasteHandlers_CopyPreProcessor_0 implements CopyPreProcessor {
  @Override
  public SAbstractConcept getApplicableConcept() {
    return CONCEPTS.DescriptionLine$l7;
  }
  @Override
  public void preProcessNode(SNode copy, SNode original) {
    // Replaces the original node with the copy so it will not be removed when a cut action is invoked
    SNodeOperations.replaceWithAnother(original, copy);
  }

  private static final class CONCEPTS {
    /*package*/ static final SConcept DescriptionLine$l7 = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x6165532e34e22efL, "CQRS.structure.DescriptionLine");
  }
}
