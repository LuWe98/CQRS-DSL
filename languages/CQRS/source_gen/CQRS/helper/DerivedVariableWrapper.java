package CQRS.helper;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.references.Reference;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SEnumOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import CQRS.behavior.IComponentWithNamePlaceholder__BehaviorDescriptor;
import java.util.Objects;
import CQRS.behavior.IDtoDerivation__BehaviorDescriptor;
import org.jetbrains.mps.openapi.language.SProperty;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class DerivedVariableWrapper implements VariableWrapper {

  private SNode myFlatteringRule;
  public SNode getFlatteringRule() {
    return this.myFlatteringRule;
  }
  private void _setFlatteringRule(SNode value) {
    this.myFlatteringRule = value;
  }
  private SNode setFlatteringRule(SNode value) {
    _setFlatteringRule(value);
    return value;
  }
  private Reference<SNode> refToFlatteringRule() {
    return new Reference<SNode>() {
      public SNode get() {
        return getFlatteringRule();
      }
      public void set(SNode value) {
        _setFlatteringRule(value);
      }
    };
  }
  private VariableWrapper myVariableWrapper;
  public VariableWrapper getVariableWrapper() {
    return this.myVariableWrapper;
  }
  private void _setVariableWrapper(VariableWrapper value) {
    this.myVariableWrapper = value;
  }
  private VariableWrapper setVariableWrapper(VariableWrapper value) {
    _setVariableWrapper(value);
    return value;
  }
  private Reference<VariableWrapper> refToVariableWrapper() {
    return new Reference<VariableWrapper>() {
      public VariableWrapper get() {
        return getVariableWrapper();
      }
      public void set(VariableWrapper value) {
        _setVariableWrapper(value);
      }
    };
  }

  private DerivedVariableWrapper(SNode flatteningRule, VariableWrapper variableWrapper) {
    this.setFlatteringRule(flatteningRule);
    this.setVariableWrapper(variableWrapper);
  }

  @Override
  public String getVariableName() {
    String subVariableName = getVariableWrapper().getVariableName();

    if (SEnumOperations.isMember(SPropertyOperations.getEnum(getFlatteringRule(), PROPS.nameConvention$LtCG), 0x3cfd70789afeffaaL)) {
      return subVariableName;
    }

    String preOrSuffix = ((boolean) IComponentWithNamePlaceholder__BehaviorDescriptor.isNameSet_id2RbvdOM0nGV.invoke(getFlatteringRule()) ? IComponentWithNamePlaceholder__BehaviorDescriptor.getName_id2RbvdOM0peT.invoke(getFlatteringRule()) : IComponentWithNamePlaceholder__BehaviorDescriptor.getPlaceholderText_id2RbvdOLeryC.invoke(getFlatteringRule()));

    if (SEnumOperations.isMember(SPropertyOperations.getEnum(getFlatteringRule(), PROPS.nameConvention$LtCG), 0x3cfd70789afeffabL)) {
      return subVariableName + preOrSuffix;
    }

    if (Objects.equals(subVariableName, null) || subVariableName.length() < 1) {
      return preOrSuffix;
    }

    String firstChar = String.valueOf(subVariableName.charAt(0));
    String updatedSubVariableName = firstChar.toUpperCase() + ((subVariableName.length() <= 1 ? "" : subVariableName.substring(1)));
    return preOrSuffix + updatedSubVariableName;
  }

  @Override
  public SNode getWrappedVariable() {
    return getVariableWrapper().getWrappedVariable();
  }

  public SNode findVariableOrigin() {
    VariableWrapper currentWrapper = this;
    while (!(Objects.equals(currentWrapper, null))) {
      if (currentWrapper instanceof SimpleVariableWrapper) {
        return null;
      }

      DerivedVariableWrapper derivedWrapper = as_3zx2sd_a0a2a1a81(currentWrapper, DerivedVariableWrapper.class);
      if (derivedWrapper.getVariableWrapper() instanceof SimpleVariableWrapper) {
        return IDtoDerivation__BehaviorDescriptor.getDtoDerivable_id3NXs7yomd17.invoke(derivedWrapper.getFlatteringRule());
      }

      currentWrapper = as_3zx2sd_a0a0f0b0s(currentWrapper, DerivedVariableWrapper.class).getVariableWrapper();
    }
    return null;
  }

  public static DerivedVariableWrapper of(SNode fromRule, VariableWrapper variable) {
    return new DerivedVariableWrapper(fromRule, variable);
  }

  private static <T> T as_3zx2sd_a0a2a1a81(Object o, Class<T> type) {
    return (type.isInstance(o) ? (T) o : null);
  }
  private static <T> T as_3zx2sd_a0a0f0b0s(Object o, Class<T> type) {
    return (type.isInstance(o) ? (T) o : null);
  }

  private static final class PROPS {
    /*package*/ static final SProperty nameConvention$LtCG = MetaAdapterFactory.getProperty(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x12da95fb99e0f985L, 0x3cfd70789aff025eL, "nameConvention");
  }
}
