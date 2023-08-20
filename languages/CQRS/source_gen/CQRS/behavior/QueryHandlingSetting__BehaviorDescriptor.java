package CQRS.behavior;

/*Generated by MPS */

import jetbrains.mps.core.aspects.behaviour.BaseBHDescriptor;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.core.aspects.behaviour.api.SMethod;
import jetbrains.mps.core.aspects.behaviour.SMethodBuilder;
import jetbrains.mps.core.aspects.behaviour.SJavaCompoundTypeImpl;
import jetbrains.mps.core.aspects.behaviour.AccessPrivileges;
import java.util.List;
import java.util.Arrays;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SEnumOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.core.aspects.behaviour.api.SConstructor;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.core.aspects.behaviour.api.BHMethodNotFoundException;
import org.jetbrains.mps.openapi.language.SProperty;

public final class QueryHandlingSetting__BehaviorDescriptor extends BaseBHDescriptor {
  private static final SAbstractConcept CONCEPT = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x56a1ac122ac5a076L, "CQRS.structure.QueryHandlingSetting");

  public static final SMethod<Boolean> isGroupedHandling_id5qxF18FbHLJ = new SMethodBuilder<Boolean>(new SJavaCompoundTypeImpl(Boolean.TYPE)).name("isGroupedHandling").modifiers(0, AccessPrivileges.PUBLIC).concept(CONCEPT).baseMethodId(6242459752546098287L).languageId(0x9401426cad0a8857L, 0xfe04f903cef2451dL).build2();
  public static final SMethod<Boolean> isSeparatedHandling_id5qxF18FbINt = new SMethodBuilder<Boolean>(new SJavaCompoundTypeImpl(Boolean.TYPE)).name("isSeparatedHandling").modifiers(0, AccessPrivileges.PUBLIC).concept(CONCEPT).baseMethodId(6242459752546102493L).languageId(0x9401426cad0a8857L, 0xfe04f903cef2451dL).build2();

  private static final List<SMethod<?>> BH_METHODS = Arrays.<SMethod<?>>asList(isGroupedHandling_id5qxF18FbHLJ, isSeparatedHandling_id5qxF18FbINt);

  private static void ___init___(@NotNull SNode __thisNode__) {
  }

  /*package*/ static boolean isGroupedHandling_id5qxF18FbHLJ(@NotNull SNode __thisNode__) {
    return SEnumOperations.isMember(SPropertyOperations.getEnum(__thisNode__, PROPS.handlingType$_h8g), 0x6165532e273c8c2L);
  }
  /*package*/ static boolean isSeparatedHandling_id5qxF18FbINt(@NotNull SNode __thisNode__) {
    return SEnumOperations.isMember(SPropertyOperations.getEnum(__thisNode__, PROPS.handlingType$_h8g), 0x6165532e273c8c1L);
  }

  /*package*/ QueryHandlingSetting__BehaviorDescriptor() {
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
        return (T) ((Boolean) isGroupedHandling_id5qxF18FbHLJ(node));
      case 1:
        return (T) ((Boolean) isSeparatedHandling_id5qxF18FbINt(node));
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

  private static final class PROPS {
    /*package*/ static final SProperty handlingType$_h8g = MetaAdapterFactory.getProperty(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x56a1ac122ac5a076L, 0x56a1ac122acede1eL, "handlingType");
  }
}