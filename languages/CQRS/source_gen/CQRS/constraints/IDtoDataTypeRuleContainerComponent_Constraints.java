package CQRS.constraints;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.base.BaseConstraintsDescriptor;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SInterfaceConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class IDtoDataTypeRuleContainerComponent_Constraints extends BaseConstraintsDescriptor {
  public IDtoDataTypeRuleContainerComponent_Constraints() {
    super(CONCEPTS.IDtoDataTypeRuleContainerComponent$5N);
  }

  @Override
  public SConcept getDefaultConcreteConcept() {
    return CONCEPTS.EmptyLine$_9;
  }

  private static final class CONCEPTS {
    /*package*/ static final SInterfaceConcept IDtoDataTypeRuleContainerComponent$5N = MetaAdapterFactory.getInterfaceConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0xa84dfea89294288L, "CQRS.structure.IDtoDataTypeRuleContainerComponent");
    /*package*/ static final SConcept EmptyLine$_9 = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x62cb964344649a2L, "CQRS.structure.EmptyLine");
  }
}
