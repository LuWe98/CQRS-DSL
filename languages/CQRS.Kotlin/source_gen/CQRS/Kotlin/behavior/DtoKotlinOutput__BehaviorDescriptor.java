package CQRS.Kotlin.behavior;

/*Generated by MPS */

import jetbrains.mps.core.aspects.behaviour.BaseBHDescriptor;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.core.aspects.behaviour.api.SMethod;
import java.util.Set;
import CQRS.Generation.generation.DependencyImport;
import jetbrains.mps.core.aspects.behaviour.SMethodBuilder;
import jetbrains.mps.core.aspects.behaviour.SJavaCompoundTypeImpl;
import jetbrains.mps.core.aspects.behaviour.AccessPrivileges;
import java.util.List;
import java.util.Arrays;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.internal.collections.runtime.SetSequence;
import java.util.HashSet;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.internal.collections.runtime.ITranslator2;
import CQRS.Generation.behavior.ComponentOutput__BehaviorDescriptor;
import jetbrains.mps.core.aspects.behaviour.api.SConstructor;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.core.aspects.behaviour.api.BHMethodNotFoundException;
import org.jetbrains.mps.openapi.language.SContainmentLink;

public final class DtoKotlinOutput__BehaviorDescriptor extends BaseBHDescriptor {
  private static final SAbstractConcept CONCEPT = MetaAdapterFactory.getConcept(0x21c0c49f06c045cbL, 0x990e6280d48112f6L, 0x42e485aea7468e01L, "CQRS.Kotlin.structure.DtoKotlinOutput");

  public static final SMethod<Set<DependencyImport>> getImports_id4yUYSn0sW9K = new SMethodBuilder<Set<DependencyImport>>(new SJavaCompoundTypeImpl((Class<Set<DependencyImport>>) ((Class) Object.class))).name("getImports").modifiers(8, AccessPrivileges.PUBLIC).concept(CONCEPT).baseMethodId(5240777668277027440L).languageId(0x8484525ea753e78bL, 0x273bc31819694c83L).build2();

  private static final List<SMethod<?>> BH_METHODS = Arrays.<SMethod<?>>asList(getImports_id4yUYSn0sW9K);

  private static void ___init___(@NotNull SNode __thisNode__) {
  }

  /*package*/ static Set<DependencyImport> getImports_id4yUYSn0sW9K(@NotNull SNode __thisNode__) {
    Set<DependencyImport> imports = SetSequence.fromSet(new HashSet<DependencyImport>());
    SetSequence.fromSet(imports).addSequence(ListSequence.fromList(SLinkOperations.getChildren(__thisNode__, LINKS.parameters$X2kE)).translate(new ITranslator2<SNode, DependencyImport>() {
      public Iterable<DependencyImport> translate(SNode it) {
        return (Set<DependencyImport>) ComponentOutput__BehaviorDescriptor.getImports_id4yUYSn0sW9K.invoke(it);
      }
    }));
    SetSequence.fromSet(imports).addSequence(ListSequence.fromList(SLinkOperations.getChildren(__thisNode__, LINKS.methods$HNRC)).translate(new ITranslator2<SNode, DependencyImport>() {
      public Iterable<DependencyImport> translate(SNode it) {
        return (Set<DependencyImport>) ComponentOutput__BehaviorDescriptor.getImports_id4yUYSn0sW9K.invoke(it);
      }
    }));
    return imports;
  }

  /*package*/ DtoKotlinOutput__BehaviorDescriptor() {
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
        return (T) ((Set<DependencyImport>) getImports_id4yUYSn0sW9K(node));
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
    /*package*/ static final SContainmentLink parameters$X2kE = MetaAdapterFactory.getContainmentLink(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x42e485aea742a568L, 0x48ae87bda2d38a50L, "parameters");
    /*package*/ static final SContainmentLink methods$HNRC = MetaAdapterFactory.getContainmentLink(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x42e485aea742a568L, 0x6443e253e202304L, "methods");
  }
}
