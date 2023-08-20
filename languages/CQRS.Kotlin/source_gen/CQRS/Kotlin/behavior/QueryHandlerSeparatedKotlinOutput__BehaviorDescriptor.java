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
import CQRS.Generation.generation.DependencyResolver;
import jetbrains.mps.internal.collections.runtime.SetSequence;
import java.util.HashSet;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.internal.collections.runtime.ITranslator2;
import CQRS.Generation.behavior.ComponentOutput__BehaviorDescriptor;
import jetbrains.mps.core.aspects.behaviour.api.SConstructor;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.core.aspects.behaviour.api.BHMethodNotFoundException;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import org.jetbrains.mps.openapi.language.SContainmentLink;

public final class QueryHandlerSeparatedKotlinOutput__BehaviorDescriptor extends BaseBHDescriptor {
  private static final SAbstractConcept CONCEPT = MetaAdapterFactory.getConcept(0x21c0c49f06c045cbL, 0x990e6280d48112f6L, 0x1a77dd18db1da0f8L, "CQRS.Kotlin.structure.QueryHandlerSeparatedKotlinOutput");

  public static final SMethod<Set<DependencyImport>> getImports_id4yUYSn0sW9K = new SMethodBuilder<Set<DependencyImport>>(new SJavaCompoundTypeImpl((Class<Set<DependencyImport>>) ((Class) Object.class))).name("getImports").modifiers(8, AccessPrivileges.PUBLIC).concept(CONCEPT).baseMethodId(5240777668277027440L).languageId(0x8484525ea753e78bL, 0x273bc31819694c83L).build2();

  private static final List<SMethod<?>> BH_METHODS = Arrays.<SMethod<?>>asList(getImports_id4yUYSn0sW9K);

  private static void ___init___(@NotNull SNode __thisNode__) {
  }

  /*package*/ static Set<DependencyImport> getImports_id4yUYSn0sW9K(@NotNull SNode __thisNode__) {
    DependencyResolver resolver = KotlinFileOutput__BehaviorDescriptor.resolver_id4b$xqUBa5Fw.invoke(__thisNode__);

    Set<DependencyImport> imports = SetSequence.fromSet(new HashSet<DependencyImport>());
    SetSequence.fromSet(imports).addElement(resolver.resolveQueryHandlerInterface());
    SetSequence.fromSet(imports).addElement(resolver.resolveQuery(SLinkOperations.getTarget(__thisNode__, LINKS.query$ysaA)));
    SetSequence.fromSet(imports).addSequence(SetSequence.fromSet(resolver.resolveType(SLinkOperations.getTarget(SLinkOperations.getTarget(__thisNode__, LINKS.query$ysaA), LINKS.returnType$WTqX))));
    SetSequence.fromSet(imports).addSequence(ListSequence.fromList(SLinkOperations.getChildren(__thisNode__, LINKS.methods$ysCC)).translate(new ITranslator2<SNode, DependencyImport>() {
      public Iterable<DependencyImport> translate(SNode it) {
        return (Set<DependencyImport>) ComponentOutput__BehaviorDescriptor.getImports_id4yUYSn0sW9K.invoke(it);
      }
    }));
    SetSequence.fromSet(imports).addSequence(ListSequence.fromList(SLinkOperations.getChildren(__thisNode__, LINKS.parameters$FrbZ)).translate(new ITranslator2<SNode, DependencyImport>() {
      public Iterable<DependencyImport> translate(SNode it) {
        return (Set<DependencyImport>) ComponentOutput__BehaviorDescriptor.getImports_id4yUYSn0sW9K.invoke(it);
      }
    }));
    return imports;
  }

  /*package*/ QueryHandlerSeparatedKotlinOutput__BehaviorDescriptor() {
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
    /*package*/ static final SReferenceLink query$ysaA = MetaAdapterFactory.getReferenceLink(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x1a77dd18db1da0fbL, 0x1a77dd18db1da0feL, "query");
    /*package*/ static final SContainmentLink returnType$WTqX = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x73da5086440e2444L, 0x3a4bff79340ab979L, "returnType");
    /*package*/ static final SContainmentLink methods$ysCC = MetaAdapterFactory.getContainmentLink(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x1a77dd18db1da0fbL, 0x1a77dd18db1da100L, "methods");
    /*package*/ static final SContainmentLink parameters$FrbZ = MetaAdapterFactory.getContainmentLink(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x1a77dd18db1da0fbL, 0x33fbc5a97479e82fL, "parameters");
  }
}