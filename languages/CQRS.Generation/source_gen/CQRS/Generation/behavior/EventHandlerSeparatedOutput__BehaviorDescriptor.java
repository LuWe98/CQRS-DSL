package CQRS.Generation.behavior;

/*Generated by MPS */

import jetbrains.mps.core.aspects.behaviour.BaseBHDescriptor;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.core.aspects.behaviour.api.SMethod;
import CQRS.Generation.generation.DependencyImport;
import jetbrains.mps.core.aspects.behaviour.SMethodBuilder;
import jetbrains.mps.core.aspects.behaviour.SJavaCompoundTypeImpl;
import jetbrains.mps.core.aspects.behaviour.AccessPrivileges;
import CQRS.Generation.generation.GenerationTarget;
import java.util.List;
import java.util.Arrays;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.core.aspects.behaviour.api.SConstructor;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.core.aspects.behaviour.api.BHMethodNotFoundException;
import org.jetbrains.mps.openapi.language.SReferenceLink;

public final class EventHandlerSeparatedOutput__BehaviorDescriptor extends BaseBHDescriptor {
  private static final SAbstractConcept CONCEPT = MetaAdapterFactory.getConcept(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x1a77dd18daf28d4eL, "CQRS.Generation.structure.EventHandlerSeparatedOutput");

  public static final SMethod<DependencyImport> getImport_idSy32QQYkNm = new SMethodBuilder<DependencyImport>(new SJavaCompoundTypeImpl(DependencyImport.class)).name("getImport").modifiers(8, AccessPrivileges.PUBLIC).concept(CONCEPT).baseMethodId(1018389856222006486L).languageId(0x8484525ea753e78bL, 0x273bc31819694c83L).build2(SMethodBuilder.createJavaParameter(GenerationTarget.class, ""));

  private static final List<SMethod<?>> BH_METHODS = Arrays.<SMethod<?>>asList(getImport_idSy32QQYkNm);

  private static void ___init___(@NotNull SNode __thisNode__) {
  }

  /*package*/ static DependencyImport getImport_idSy32QQYkNm(@NotNull SNode __thisNode__, GenerationTarget target) {
    return ComponentOutput__BehaviorDescriptor.resolver_id4b$xqUBa0Kt.invoke(__thisNode__, target).resolveEventHandlerSpecific(SLinkOperations.getTarget(__thisNode__, LINKS.event$_EWX));
  }

  /*package*/ EventHandlerSeparatedOutput__BehaviorDescriptor() {
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
        return (T) ((DependencyImport) getImport_idSy32QQYkNm(node, (GenerationTarget) parameters[0]));
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
    /*package*/ static final SReferenceLink event$_EWX = MetaAdapterFactory.getReferenceLink(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x1a77dd18daf28d4eL, 0x1a77dd18dafb9c9aL, "event");
  }
}
