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
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.core.aspects.behaviour.api.SConstructor;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.core.aspects.behaviour.api.BHMethodNotFoundException;
import org.jetbrains.mps.openapi.language.SReferenceLink;

public final class PropertyReference__BehaviorDescriptor extends BaseBHDescriptor {
  private static final SAbstractConcept CONCEPT = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x73da508643ec8131L, "CQRS.structure.PropertyReference");

  public static final SMethod<SNode> getReferencedVariable_id4LpUh3V3HC0 = new SMethodBuilder<SNode>(new SJavaCompoundTypeImpl((Class<SNode>) ((Class) Object.class))).name("getReferencedVariable").modifiers(8, AccessPrivileges.PUBLIC).concept(CONCEPT).baseMethodId(5501684678950574592L).languageId(0x9401426cad0a8857L, 0xfe04f903cef2451dL).build2();

  private static final List<SMethod<?>> BH_METHODS = Arrays.<SMethod<?>>asList(getReferencedVariable_id4LpUh3V3HC0);

  private static void ___init___(@NotNull SNode __thisNode__) {
  }

  /*package*/ static SNode getReferencedVariable_id4LpUh3V3HC0(@NotNull SNode __thisNode__) {
    return SLinkOperations.getTarget(__thisNode__, LINKS.property$JWl4);
  }

  /*package*/ PropertyReference__BehaviorDescriptor() {
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
        return (T) ((SNode) getReferencedVariable_id4LpUh3V3HC0(node));
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
    /*package*/ static final SReferenceLink property$JWl4 = MetaAdapterFactory.getReferenceLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x73da508643ec8131L, 0x73da508643ec8132L, "property");
  }
}
