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
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import CQRS.util.JavaTypeCheckUtils;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import java.util.Objects;
import jetbrains.mps.core.aspects.behaviour.api.SConstructor;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.core.aspects.behaviour.api.BHMethodNotFoundException;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SContainmentLink;

public final class IPrimitiveType__BehaviorDescriptor extends BaseBHDescriptor {
  private static final SAbstractConcept CONCEPT = MetaAdapterFactory.getInterfaceConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x4cfae7e929829c9fL, "CQRS.structure.IPrimitiveType");

  public static final SMethod<Boolean> hasSameDatatype_id3DbZR$NHBwn = new SMethodBuilder<Boolean>(new SJavaCompoundTypeImpl(Boolean.TYPE)).name("hasSameDatatype").modifiers(8, AccessPrivileges.PUBLIC).concept(CONCEPT).baseMethodId(4200731973476841495L).languageId(0x9401426cad0a8857L, 0xfe04f903cef2451dL).build2(SMethodBuilder.createJavaParameter((Class<SNode>) ((Class) Object.class), ""));

  private static final List<SMethod<?>> BH_METHODS = Arrays.<SMethod<?>>asList(hasSameDatatype_id3DbZR$NHBwn);

  private static void ___init___(@NotNull SNode __thisNode__) {
  }

  /*package*/ static boolean hasSameDatatype_id3DbZR$NHBwn(@NotNull SNode __thisNode__, SNode otherDataType) {

    {
      final SNode javaType = otherDataType;
      if (SNodeOperations.isInstanceOf(javaType, CONCEPTS.JavaDataType$MU)) {
        return JavaTypeCheckUtils.doesJavaTypeMatchPrimitiveType(SLinkOperations.getTarget(javaType, LINKS.actualType$WqWC), __thisNode__);
      }
    }

    return Objects.equals(SNodeOperations.getConcept(__thisNode__), SNodeOperations.getConcept(otherDataType));
  }

  /*package*/ IPrimitiveType__BehaviorDescriptor() {
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

  private static final class CONCEPTS {
    /*package*/ static final SConcept JavaDataType$MU = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x53a29a8dae148659L, "CQRS.structure.JavaDataType");
  }

  private static final class LINKS {
    /*package*/ static final SContainmentLink actualType$WqWC = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x53a29a8dae148659L, 0x53a29a8dae14865eL, "actualType");
  }
}
