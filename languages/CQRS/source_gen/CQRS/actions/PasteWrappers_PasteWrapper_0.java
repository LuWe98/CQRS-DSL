package CQRS.actions;

/*Generated by MPS */

import jetbrains.mps.openapi.actions.descriptor.PasteWrapper;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.model.SNode;
import CQRS.behavior.IVariable__BehaviorDescriptor;
import org.jetbrains.mps.openapi.language.SConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public final class PasteWrappers_PasteWrapper_0 implements PasteWrapper {
  @Override
  public SAbstractConcept getSourceConcept() {
    return CONCEPTS.Property$lE;
  }
  @Override
  public SAbstractConcept getTargetConcept() {
    return CONCEPTS.Parameter$as;
  }
  @Override
  public SNode wrap(SNode sourceNode) {
    return (SNode) IVariable__BehaviorDescriptor.toParameter_id4V91Il8jc9j.invoke(sourceNode);
  }

  private static final class CONCEPTS {
    /*package*/ static final SConcept Property$lE = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x73da508643ec6f33L, "CQRS.structure.Property");
    /*package*/ static final SConcept Parameter$as = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x73da508643ca7d84L, "CQRS.structure.Parameter");
  }
}
