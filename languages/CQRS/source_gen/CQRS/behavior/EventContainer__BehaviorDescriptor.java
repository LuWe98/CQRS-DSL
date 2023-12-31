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
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SEnumOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import java.util.Objects;
import jetbrains.mps.core.aspects.behaviour.api.SConstructor;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.core.aspects.behaviour.api.BHMethodNotFoundException;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SProperty;

public final class EventContainer__BehaviorDescriptor extends BaseBHDescriptor {
  private static final SAbstractConcept CONCEPT = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x73da50864411af9fL, "CQRS.structure.EventContainer");

  public static final SMethod<Iterable<SNode>> events_idoGImgOKqqA = new SMethodBuilder<Iterable<SNode>>(new SJavaCompoundTypeImpl((Class<Iterable<SNode>>) ((Class) Object.class))).name("events").modifiers(0, AccessPrivileges.PUBLIC).concept(CONCEPT).baseMethodId(444934303235810982L).languageId(0x9401426cad0a8857L, 0xfe04f903cef2451dL).build2();
  public static final SMethod<Boolean> isEventBlock_id5jZDGTdmVwI = new SMethodBuilder<Boolean>(new SJavaCompoundTypeImpl(Boolean.TYPE)).name("isEventBlock").modifiers(0, AccessPrivileges.PUBLIC).concept(CONCEPT).baseMethodId(6124797423238494254L).languageId(0x9401426cad0a8857L, 0xfe04f903cef2451dL).build2();
  public static final SMethod<Boolean> isEventHandler_id5jZDGTdmWlV = new SMethodBuilder<Boolean>(new SJavaCompoundTypeImpl(Boolean.TYPE)).name("isEventHandler").modifiers(0, AccessPrivileges.PUBLIC).concept(CONCEPT).baseMethodId(6124797423238497659L).languageId(0x9401426cad0a8857L, 0xfe04f903cef2451dL).build2();
  public static final SMethod<String> getEventContainerName_id5jZDGTdpgfc = new SMethodBuilder<String>(new SJavaCompoundTypeImpl(String.class)).name("getEventContainerName").modifiers(0, AccessPrivileges.PUBLIC).concept(CONCEPT).baseMethodId(6124797423239103436L).languageId(0x9401426cad0a8857L, 0xfe04f903cef2451dL).build2();
  public static final SMethod<String> getPlaceholderText_id2RbvdOLeryC = new SMethodBuilder<String>(new SJavaCompoundTypeImpl(String.class)).name("getPlaceholderText").modifiers(8, AccessPrivileges.PUBLIC).concept(CONCEPT).baseMethodId(3299868441434503336L).languageId(0x9401426cad0a8857L, 0xfe04f903cef2451dL).build2();
  public static final SMethod<String> getToggleChildComponentKeywordsIntentionDescription_id5jZDGTgijt$ = new SMethodBuilder<String>(new SJavaCompoundTypeImpl(String.class)).name("getToggleChildComponentKeywordsIntentionDescription").modifiers(8, AccessPrivileges.PUBLIC).concept(CONCEPT).baseMethodId(6124797423287613284L).languageId(0x9401426cad0a8857L, 0xfe04f903cef2451dL).build2(SMethodBuilder.createJavaParameter(Boolean.TYPE, ""));
  public static final SMethod<Boolean> areReferencesOnChildrenAllowed_idomljbwD$pt = new SMethodBuilder<Boolean>(new SJavaCompoundTypeImpl(Boolean.TYPE)).name("areReferencesOnChildrenAllowed").modifiers(8, AccessPrivileges.PUBLIC).concept(CONCEPT).baseMethodId(438631690720921181L).languageId(0x9401426cad0a8857L, 0xfe04f903cef2451dL).build2();

  private static final List<SMethod<?>> BH_METHODS = Arrays.<SMethod<?>>asList(events_idoGImgOKqqA, isEventBlock_id5jZDGTdmVwI, isEventHandler_id5jZDGTdmWlV, getEventContainerName_id5jZDGTdpgfc, getPlaceholderText_id2RbvdOLeryC, getToggleChildComponentKeywordsIntentionDescription_id5jZDGTgijt$, areReferencesOnChildrenAllowed_idomljbwD$pt);

  private static void ___init___(@NotNull SNode __thisNode__) {
  }

  /*package*/ static Iterable<SNode> events_idoGImgOKqqA(@NotNull SNode __thisNode__) {
    return SNodeOperations.ofConcept(SLinkOperations.getChildren(__thisNode__, LINKS.components$8m$6), CONCEPTS.Event$7G);
  }
  /*package*/ static boolean isEventBlock_id5jZDGTdmVwI(@NotNull SNode __thisNode__) {
    return SEnumOperations.isMember(SPropertyOperations.getEnum(__thisNode__, PROPS.type$Ad2l), 0x3eecc5f46b5fc366L);
  }
  /*package*/ static boolean isEventHandler_id5jZDGTdmWlV(@NotNull SNode __thisNode__) {
    return SEnumOperations.isMember(SPropertyOperations.getEnum(__thisNode__, PROPS.type$Ad2l), 0x3eecc5f46b5fc367L);
  }
  /*package*/ static String getEventContainerName_id5jZDGTdpgfc(@NotNull SNode __thisNode__) {
    if (((boolean) IComponentWithNamePlaceholder__BehaviorDescriptor.isNameSet_id2RbvdOM0nGV.invoke(__thisNode__))) {
      return IComponentWithNamePlaceholder__BehaviorDescriptor.getName_id2RbvdOM0peT.invoke(__thisNode__);
    }

    if (Objects.equals(SPropertyOperations.getString(SLinkOperations.getTarget(SLinkOperations.getTarget(__thisNode__, LINKS.aggregateReference$Zvu9), LINKS.aggregate$D_P$), PROPS.name$MnvL), null)) {
      return null;
    }

    return SPropertyOperations.getString(SLinkOperations.getTarget(SLinkOperations.getTarget(__thisNode__, LINKS.aggregateReference$Zvu9), LINKS.aggregate$D_P$), PROPS.name$MnvL) + "EventHandler";
  }
  /*package*/ static String getPlaceholderText_id2RbvdOLeryC(@NotNull SNode __thisNode__) {
    String aggregateName = SPropertyOperations.getString(SLinkOperations.getTarget(SLinkOperations.getTarget(__thisNode__, LINKS.aggregateReference$Zvu9), LINKS.aggregate$D_P$), PROPS.name$MnvL);
    if (Objects.equals(aggregateName, null)) {
      return " - ";
    }
    return aggregateName + "EventHandler";
  }
  /*package*/ static String getToggleChildComponentKeywordsIntentionDescription_id5jZDGTgijt$(@NotNull SNode __thisNode__, boolean isShow) {
    return ((isShow ? "Show" : "Hide")) + " event keyword of all events.";
  }
  /*package*/ static boolean areReferencesOnChildrenAllowed_idomljbwD$pt(@NotNull SNode __thisNode__) {
    return ((boolean) EventContainer__BehaviorDescriptor.isEventBlock_id5jZDGTdmVwI.invoke(__thisNode__));
  }

  /*package*/ EventContainer__BehaviorDescriptor() {
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
        return (T) ((Iterable<SNode>) events_idoGImgOKqqA(node));
      case 1:
        return (T) ((Boolean) isEventBlock_id5jZDGTdmVwI(node));
      case 2:
        return (T) ((Boolean) isEventHandler_id5jZDGTdmWlV(node));
      case 3:
        return (T) ((String) getEventContainerName_id5jZDGTdpgfc(node));
      case 4:
        return (T) ((String) getPlaceholderText_id2RbvdOLeryC(node));
      case 5:
        return (T) ((String) getToggleChildComponentKeywordsIntentionDescription_id5jZDGTgijt$(node, ((boolean) (Boolean) parameters[0])));
      case 6:
        return (T) ((Boolean) areReferencesOnChildrenAllowed_idomljbwD$pt(node));
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
    /*package*/ static final SContainmentLink components$8m$6 = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x73da50864411af9fL, 0x73da50864411afa2L, "components");
    /*package*/ static final SContainmentLink aggregateReference$Zvu9 = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x73da50864411af9fL, 0x14db6835d8e753d5L, "aggregateReference");
    /*package*/ static final SReferenceLink aggregate$D_P$ = MetaAdapterFactory.getReferenceLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x4f0a0db9ac16f8f2L, 0x4f0a0db9ac16f8f3L, "aggregate");
  }

  private static final class CONCEPTS {
    /*package*/ static final SConcept Event$7G = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x73da5086440e2438L, "CQRS.structure.Event");
  }

  private static final class PROPS {
    /*package*/ static final SProperty type$Ad2l = MetaAdapterFactory.getProperty(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x73da50864411af9fL, 0x54ffa6ce4d17aa8cL, "type");
    /*package*/ static final SProperty name$MnvL = MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name");
  }
}
