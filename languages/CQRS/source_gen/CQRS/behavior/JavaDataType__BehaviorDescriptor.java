package CQRS.behavior;

/*Generated by MPS */

import jetbrains.mps.core.aspects.behaviour.BaseBHDescriptor;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.core.aspects.behaviour.api.SMethod;
import jetbrains.mps.core.aspects.behaviour.SMethodBuilder;
import jetbrains.mps.core.aspects.behaviour.SJavaCompoundTypeImpl;
import jetbrains.mps.core.aspects.behaviour.AccessPrivileges;
import org.jetbrains.mps.openapi.model.SNode;
import java.util.List;
import java.util.Arrays;
import org.jetbrains.annotations.NotNull;
import CQRS.util.JavaTypeCheckUtils;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import CQRS.util.JavaTypeQualifiedNameUtils;
import jetbrains.mps.core.aspects.behaviour.api.SConstructor;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.core.aspects.behaviour.api.BHMethodNotFoundException;
import org.jetbrains.mps.openapi.language.SContainmentLink;

public final class JavaDataType__BehaviorDescriptor extends BaseBHDescriptor {
  private static final SAbstractConcept CONCEPT = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x53a29a8dae148659L, "CQRS.structure.JavaDataType");

  public static final SMethod<Boolean> hasSameDatatype_id3DbZR$NHBwn = new SMethodBuilder<Boolean>(new SJavaCompoundTypeImpl(Boolean.TYPE)).name("hasSameDatatype").modifiers(8, AccessPrivileges.PUBLIC).concept(CONCEPT).baseMethodId(4200731973476841495L).languageId(0x9401426cad0a8857L, 0xfe04f903cef2451dL).build2(SMethodBuilder.createJavaParameter((Class<SNode>) ((Class) Object.class), ""));
  public static final SMethod<String> getQualifiedName_id2QCVoC4catj = new SMethodBuilder<String>(new SJavaCompoundTypeImpl(String.class)).name("getQualifiedName").modifiers(0, AccessPrivileges.PUBLIC).concept(CONCEPT).baseMethodId(3290140704825714515L).languageId(0x9401426cad0a8857L, 0xfe04f903cef2451dL).build2();

  private static final List<SMethod<?>> BH_METHODS = Arrays.<SMethod<?>>asList(hasSameDatatype_id3DbZR$NHBwn, getQualifiedName_id2QCVoC4catj);

  private static void ___init___(@NotNull SNode __thisNode__) {
  }

  /*package*/ static boolean hasSameDatatype_id3DbZR$NHBwn(@NotNull SNode __thisNode__, SNode otherDataType) {
    return JavaTypeCheckUtils.doesJavaTypeMatchDataType(SLinkOperations.getTarget(__thisNode__, LINKS.actualType$WqWC), otherDataType);
  }
  /*package*/ static String getQualifiedName_id2QCVoC4catj(@NotNull SNode __thisNode__) {
    return JavaTypeQualifiedNameUtils.getQualifiedNameOf(__thisNode__);
  }

  /*package*/ JavaDataType__BehaviorDescriptor() {
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
        return (T) ((Boolean) hasSameDatatype_id3DbZR$NHBwn(node, (SNode) parameters[0]));
      case 1:
        return (T) ((String) getQualifiedName_id2QCVoC4catj(node));
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

  private static final class LINKS {
    /*package*/ static final SContainmentLink actualType$WqWC = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x53a29a8dae148659L, 0x53a29a8dae14865eL, "actualType");
  }
}
