package CQRS.actions;

/*Generated by MPS */

import jetbrains.mps.openapi.actions.descriptor.PasteWrapper;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.model.SNode;
import CQRS.behavior.IVariable__BehaviorDescriptor;
import org.jetbrains.mps.openapi.language.SConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SInterfaceConcept;

public final class PasteWrappers_PasteWrapper_3 implements PasteWrapper {
  @Override
  public SAbstractConcept getSourceConcept() {
    return CONCEPTS.Parameter$as;
  }
  @Override
  public SAbstractConcept getTargetConcept() {
    return CONCEPTS.IEntityComponent$hR;
  }
  @Override
  public SNode wrap(SNode sourceNode) {
    return (SNode) IVariable__BehaviorDescriptor.toProperty_id4V91Il8jbXp.invoke(sourceNode);
  }

  private static final class CONCEPTS {
    /*package*/ static final SConcept Parameter$as = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x73da508643ca7d84L, "CQRS.structure.Parameter");
    /*package*/ static final SInterfaceConcept IEntityComponent$hR = MetaAdapterFactory.getInterfaceConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x73da508643ef0772L, "CQRS.structure.IEntityComponent");
  }
}