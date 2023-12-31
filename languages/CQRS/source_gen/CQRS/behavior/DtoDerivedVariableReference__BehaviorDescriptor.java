package CQRS.behavior;

/*Generated by MPS */

import jetbrains.mps.core.aspects.behaviour.BaseBHDescriptor;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.core.aspects.behaviour.api.SMethod;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.core.aspects.behaviour.SMethodBuilder;
import jetbrains.mps.core.aspects.behaviour.SJavaCompoundTypeImpl;
import jetbrains.mps.core.aspects.behaviour.AccessPrivileges;
import java.util.List;
import java.util.Arrays;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import CQRS.helper.VariableWrapper;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import java.util.Objects;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.core.aspects.behaviour.api.SConstructor;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.core.aspects.behaviour.api.BHMethodNotFoundException;
import org.jetbrains.mps.openapi.language.SInterfaceConcept;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import org.jetbrains.mps.openapi.language.SProperty;

public final class DtoDerivedVariableReference__BehaviorDescriptor extends BaseBHDescriptor {
  private static final SAbstractConcept CONCEPT = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x5d9cf3447d900a56L, "CQRS.structure.DtoDerivedVariableReference");

  public static final SMethod<SNode> getDtoDerivition_id7z5h98SA6jF = new SMethodBuilder<SNode>(new SJavaCompoundTypeImpl((Class<SNode>) ((Class) Object.class))).name("getDtoDerivition").modifiers(0, AccessPrivileges.PUBLIC).concept(CONCEPT).baseMethodId(8702437249768776939L).languageId(0x9401426cad0a8857L, 0xfe04f903cef2451dL).build2();
  public static final SMethod<SNode> getReferencedVariable_id4LpUh3V3HC0 = new SMethodBuilder<SNode>(new SJavaCompoundTypeImpl((Class<SNode>) ((Class) Object.class))).name("getReferencedVariable").modifiers(8, AccessPrivileges.PUBLIC).concept(CONCEPT).baseMethodId(5501684678950574592L).languageId(0x9401426cad0a8857L, 0xfe04f903cef2451dL).build2();
  public static final SMethod<SNode> convert_id5QsWOhX$4rF = new SMethodBuilder<SNode>(new SJavaCompoundTypeImpl((Class<SNode>) ((Class) Object.class))).name("convert").modifiers(1, AccessPrivileges.PUBLIC).concept(CONCEPT).baseMethodId(6745533817384093419L).languageId(0x9401426cad0a8857L, 0xfe04f903cef2451dL).build2(SMethodBuilder.createJavaParameter((Class<SNode>) ((Class) Object.class), ""));
  public static final SMethod<String> getDerivedVariablePresentation_id25wIjMt0u77 = new SMethodBuilder<String>(new SJavaCompoundTypeImpl(String.class)).name("getDerivedVariablePresentation").modifiers(0, AccessPrivileges.PUBLIC).concept(CONCEPT).baseMethodId(2405125870999167431L).languageId(0x9401426cad0a8857L, 0xfe04f903cef2451dL).build2();

  private static final List<SMethod<?>> BH_METHODS = Arrays.<SMethod<?>>asList(getDtoDerivition_id7z5h98SA6jF, getReferencedVariable_id4LpUh3V3HC0, convert_id5QsWOhX$4rF, getDerivedVariablePresentation_id25wIjMt0u77);

  private static void ___init___(@NotNull SNode __thisNode__) {
  }

  /*package*/ static SNode getDtoDerivition_id7z5h98SA6jF(@NotNull SNode __thisNode__) {
    return SNodeOperations.getNodeAncestor(__thisNode__, CONCEPTS.IDtoDerivation$Yg, true, false);
  }
  /*package*/ static SNode getReferencedVariable_id4LpUh3V3HC0(@NotNull SNode __thisNode__) {
    return SLinkOperations.getTarget(__thisNode__, LINKS.variable$633A);
  }
  /*package*/ static SNode convert_id5QsWOhX$4rF(@NotNull SAbstractConcept __thisConcept__, SNode variable) {
    SNode reference = SConceptOperations.createNewNode(MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x5d9cf3447d900a56L, "CQRS.structure.DtoDerivedVariableReference"));
    SLinkOperations.setTarget(reference, LINKS.variable$633A, variable);
    return reference;
  }
  /*package*/ static String getDerivedVariablePresentation_id25wIjMt0u77(@NotNull final SNode __thisNode__) {
    SNode derivition = DtoDerivedVariableReference__BehaviorDescriptor.getDtoDerivition_id7z5h98SA6jF.invoke(__thisNode__);
    VariableWrapper wrapper = Sequence.fromIterable(IDtoDerivation__BehaviorDescriptor.getAvailableVariableWrappers_id1vyzkEMqlbX.invoke(derivition)).findFirst(new IWhereFilter<VariableWrapper>() {
      public boolean accept(VariableWrapper it) {
        return it.getWrappedVariable() == SLinkOperations.getTarget(__thisNode__, LINKS.variable$633A);
      }
    });
    return (Objects.equals(wrapper, null) ? SPropertyOperations.getString(SLinkOperations.getTarget(__thisNode__, LINKS.variable$633A), PROPS.name$MnvL) : wrapper.getVariableName());
  }

  /*package*/ DtoDerivedVariableReference__BehaviorDescriptor() {
  }

  @Override
  protected void initNode(@NotNull SNode node, @NotNull SConstructor constructor, @Nullable Object[] parameters) {
    ___init___(node);
  }

  @Override
  protected <T> T invokeSpecial0(@NotNull SNode node, @NotNull SMethod<T> method, @Nullable Object[] parameters) {
    int methodIndex = BH_METHODS.indexOf(method);
    if (methodIndex < 0) {
      throw new BHMethodNotFoundException(this, method);
    }
    switch (methodIndex) {
      case 0:
        return (T) ((SNode) getDtoDerivition_id7z5h98SA6jF(node));
      case 1:
        return (T) ((SNode) getReferencedVariable_id4LpUh3V3HC0(node));
      case 3:
        return (T) ((String) getDerivedVariablePresentation_id25wIjMt0u77(node));
      default:
        throw new BHMethodNotFoundException(this, method);
    }
  }

  @Override
  protected <T> T invokeSpecial0(@NotNull SAbstractConcept concept, @NotNull SMethod<T> method, @Nullable Object[] parameters) {
    int methodIndex = BH_METHODS.indexOf(method);
    if (methodIndex < 0) {
      throw new BHMethodNotFoundException(this, method);
    }
    switch (methodIndex) {
      case 2:
        return (T) ((SNode) convert_id5QsWOhX$4rF(concept, (SNode) parameters[0]));
      default:
        throw new BHMethodNotFoundException(this, method);
    }
  }

  @NotNull
  @Override
  public List<SMethod<?>> getDeclaredMethods() {
    return BH_METHODS;
  }

  @NotNull
  @Override
  public SAbstractConcept getConcept() {
    return CONCEPT;
  }

  private static final class CONCEPTS {
    /*package*/ static final SInterfaceConcept IDtoDerivation$Yg = MetaAdapterFactory.getInterfaceConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x3cfd70789857e2b7L, "CQRS.structure.IDtoDerivation");
  }

  private static final class LINKS {
    /*package*/ static final SReferenceLink variable$633A = MetaAdapterFactory.getReferenceLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x5d9cf3447d900a56L, 0x5d9cf3447d900a59L, "variable");
  }

  private static final class PROPS {
    /*package*/ static final SProperty name$MnvL = MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name");
  }
}
