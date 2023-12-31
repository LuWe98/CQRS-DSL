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
import jetbrains.mps.openapi.editor.EditorContext;
import java.util.List;
import java.util.Arrays;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SEnumOperations;
import java.util.Objects;
import jetbrains.mps.core.aspects.behaviour.api.SConstructor;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.core.aspects.behaviour.api.BHMethodNotFoundException;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import org.jetbrains.mps.openapi.language.SProperty;
import org.jetbrains.mps.openapi.language.SConcept;

public final class CommandContainer__BehaviorDescriptor extends BaseBHDescriptor {
  private static final SAbstractConcept CONCEPT = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x2a075c454595567L, "CQRS.structure.CommandContainer");

  public static final SMethod<String> getCommandContainerName_id51Z40Vzx6GO = new SMethodBuilder<String>(new SJavaCompoundTypeImpl(String.class)).name("getCommandContainerName").modifiers(0, AccessPrivileges.PUBLIC).concept(CONCEPT).baseMethodId(5800372501209180980L).languageId(0x9401426cad0a8857L, 0xfe04f903cef2451dL).build2();
  public static final SMethod<Iterable<SNode>> commands_idoGImgOKxc1 = new SMethodBuilder<Iterable<SNode>>(new SJavaCompoundTypeImpl((Class<Iterable<SNode>>) ((Class) Object.class))).name("commands").modifiers(0, AccessPrivileges.PUBLIC).concept(CONCEPT).baseMethodId(444934303235838721L).languageId(0x9401426cad0a8857L, 0xfe04f903cef2451dL).build2();
  public static final SMethod<Boolean> isCommandsBlock_id1LTEHzOe0y = new SMethodBuilder<Boolean>(new SJavaCompoundTypeImpl(Boolean.TYPE)).name("isCommandsBlock").modifiers(0, AccessPrivileges.PUBLIC).concept(CONCEPT).baseMethodId(32060296156733474L).languageId(0x9401426cad0a8857L, 0xfe04f903cef2451dL).build2();
  public static final SMethod<Boolean> isCommandHandler_id1LTEHzOfCt = new SMethodBuilder<Boolean>(new SJavaCompoundTypeImpl(Boolean.TYPE)).name("isCommandHandler").modifiers(0, AccessPrivileges.PUBLIC).concept(CONCEPT).baseMethodId(32060296156740125L).languageId(0x9401426cad0a8857L, 0xfe04f903cef2451dL).build2();
  public static final SMethod<Boolean> isAggregateCommandHandler_id51Z40V$BJAY = new SMethodBuilder<Boolean>(new SJavaCompoundTypeImpl(Boolean.TYPE)).name("isAggregateCommandHandler").modifiers(0, AccessPrivileges.PUBLIC).concept(CONCEPT).baseMethodId(5800372501227698622L).languageId(0x9401426cad0a8857L, 0xfe04f903cef2451dL).build2();
  public static final SMethod<SNode> getReferencedAggregate_id3PtG$LHuKCW = new SMethodBuilder<SNode>(new SJavaCompoundTypeImpl((Class<SNode>) ((Class) Object.class))).name("getReferencedAggregate").modifiers(0, AccessPrivileges.PUBLIC).concept(CONCEPT).baseMethodId(4421886450471733820L).languageId(0x9401426cad0a8857L, 0xfe04f903cef2451dL).build2();
  public static final SMethod<String> getToggleChildComponentKeywordsIntentionDescription_id5jZDGTgijt$ = new SMethodBuilder<String>(new SJavaCompoundTypeImpl(String.class)).name("getToggleChildComponentKeywordsIntentionDescription").modifiers(8, AccessPrivileges.PUBLIC).concept(CONCEPT).baseMethodId(6124797423287613284L).languageId(0x9401426cad0a8857L, 0xfe04f903cef2451dL).build2(SMethodBuilder.createJavaParameter(Boolean.TYPE, ""));
  public static final SMethod<Boolean> areReferencesOnChildrenAllowed_idomljbwD$pt = new SMethodBuilder<Boolean>(new SJavaCompoundTypeImpl(Boolean.TYPE)).name("areReferencesOnChildrenAllowed").modifiers(8, AccessPrivileges.PUBLIC).concept(CONCEPT).baseMethodId(438631690720921181L).languageId(0x9401426cad0a8857L, 0xfe04f903cef2451dL).build2();
  public static final SMethod<Boolean> canExecuteRequiresTransformation_idomljbxf$Pf = new SMethodBuilder<Boolean>(new SJavaCompoundTypeImpl(Boolean.TYPE)).name("canExecuteRequiresTransformation").modifiers(8, AccessPrivileges.PUBLIC).concept(CONCEPT).baseMethodId(438631690730884431L).languageId(0x9401426cad0a8857L, 0xfe04f903cef2451dL).build2(SMethodBuilder.createJavaParameter(EditorContext.class, ""), SMethodBuilder.createJavaParameter((Class<SNode>) ((Class) Object.class), ""));
  public static final SMethod<String> getPlaceholderText_id2RbvdOLeryC = new SMethodBuilder<String>(new SJavaCompoundTypeImpl(String.class)).name("getPlaceholderText").modifiers(8, AccessPrivileges.PUBLIC).concept(CONCEPT).baseMethodId(3299868441434503336L).languageId(0x9401426cad0a8857L, 0xfe04f903cef2451dL).build2();

  private static final List<SMethod<?>> BH_METHODS = Arrays.<SMethod<?>>asList(getCommandContainerName_id51Z40Vzx6GO, commands_idoGImgOKxc1, isCommandsBlock_id1LTEHzOe0y, isCommandHandler_id1LTEHzOfCt, isAggregateCommandHandler_id51Z40V$BJAY, getReferencedAggregate_id3PtG$LHuKCW, getToggleChildComponentKeywordsIntentionDescription_id5jZDGTgijt$, areReferencesOnChildrenAllowed_idomljbwD$pt, canExecuteRequiresTransformation_idomljbxf$Pf, getPlaceholderText_id2RbvdOLeryC);

  private static void ___init___(@NotNull SNode __thisNode__) {
  }

  /*package*/ static String getCommandContainerName_id51Z40Vzx6GO(@NotNull SNode __thisNode__) {
    if (((boolean) IComponentWithNamePlaceholder__BehaviorDescriptor.isNameSet_id2RbvdOM0nGV.invoke(__thisNode__))) {
      return IComponentWithNamePlaceholder__BehaviorDescriptor.getName_id2RbvdOM0peT.invoke(__thisNode__);
    }

    if ((SLinkOperations.getTarget(__thisNode__, LINKS.aggregateReference$V1gV) == null) || (SLinkOperations.getTarget(SLinkOperations.getTarget(__thisNode__, LINKS.aggregateReference$V1gV), LINKS.aggregate$D_P$) == null)) {
      return null;
    }

    return SPropertyOperations.getString(SLinkOperations.getTarget(SLinkOperations.getTarget(__thisNode__, LINKS.aggregateReference$V1gV), LINKS.aggregate$D_P$), PROPS.name$MnvL) + "CommandHandler";
  }
  /*package*/ static Iterable<SNode> commands_idoGImgOKxc1(@NotNull SNode __thisNode__) {
    return SNodeOperations.ofConcept(SLinkOperations.getChildren(__thisNode__, LINKS.components$95b6), CONCEPTS.Command$kL);
  }
  /*package*/ static boolean isCommandsBlock_id1LTEHzOe0y(@NotNull SNode __thisNode__) {
    return SEnumOperations.isMember(SPropertyOperations.getEnum(__thisNode__, PROPS.type$SAFo), 0x71e6ab63d0d882L);
  }
  /*package*/ static boolean isCommandHandler_id1LTEHzOfCt(@NotNull SNode __thisNode__) {
    return SEnumOperations.isMember(SPropertyOperations.getEnum(__thisNode__, PROPS.type$SAFo), 0x71e6ab63d0d883L);
  }
  /*package*/ static boolean isAggregateCommandHandler_id51Z40V$BJAY(@NotNull SNode __thisNode__) {
    return !(Objects.equals(SLinkOperations.getTarget(__thisNode__, LINKS.aggregateReference$V1gV), null));
  }
  /*package*/ static SNode getReferencedAggregate_id3PtG$LHuKCW(@NotNull SNode __thisNode__) {
    if ((SLinkOperations.getTarget(__thisNode__, LINKS.aggregateReference$V1gV) == null) || (SLinkOperations.getTarget(SLinkOperations.getTarget(__thisNode__, LINKS.aggregateReference$V1gV), LINKS.aggregate$D_P$) == null)) {
      return null;
    }
    return SLinkOperations.getTarget(SLinkOperations.getTarget(__thisNode__, LINKS.aggregateReference$V1gV), LINKS.aggregate$D_P$);
  }
  /*package*/ static String getToggleChildComponentKeywordsIntentionDescription_id5jZDGTgijt$(@NotNull SNode __thisNode__, boolean isShow) {
    return ((isShow ? "Show" : "Hide")) + " command keyword of all commands";
  }
  /*package*/ static boolean areReferencesOnChildrenAllowed_idomljbwD$pt(@NotNull SNode __thisNode__) {
    return ((boolean) CommandContainer__BehaviorDescriptor.isCommandsBlock_id1LTEHzOe0y.invoke(__thisNode__));
  }
  /*package*/ static boolean canExecuteRequiresTransformation_idomljbxf$Pf(@NotNull SNode __thisNode__, EditorContext editorContext, SNode node) {
    if (editorContext.getSelectedCell().getCellId().equals("containerTypeCellId")) {
      return ((boolean) CommandContainer__BehaviorDescriptor.isCommandsBlock_id1LTEHzOe0y.invoke(__thisNode__)) && !(SPropertyOperations.getBoolean(__thisNode__, PROPS.shouldDisplayReferences$PJ7j));
    }
    return !(SPropertyOperations.getBoolean(__thisNode__, PROPS.shouldDisplayReferences$PJ7j));
  }
  /*package*/ static String getPlaceholderText_id2RbvdOLeryC(@NotNull SNode __thisNode__) {
    if ((SLinkOperations.getTarget(__thisNode__, LINKS.aggregateReference$V1gV) == null) || (SLinkOperations.getTarget(SLinkOperations.getTarget(__thisNode__, LINKS.aggregateReference$V1gV), LINKS.aggregate$D_P$) == null)) {
      return " - ";
    }
    return SPropertyOperations.getString(SLinkOperations.getTarget(SLinkOperations.getTarget(__thisNode__, LINKS.aggregateReference$V1gV), LINKS.aggregate$D_P$), PROPS.name$MnvL) + "CommandHandler";
  }

  /*package*/ CommandContainer__BehaviorDescriptor() {
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
        return (T) ((String) getCommandContainerName_id51Z40Vzx6GO(node));
      case 1:
        return (T) ((Iterable<SNode>) commands_idoGImgOKxc1(node));
      case 2:
        return (T) ((Boolean) isCommandsBlock_id1LTEHzOe0y(node));
      case 3:
        return (T) ((Boolean) isCommandHandler_id1LTEHzOfCt(node));
      case 4:
        return (T) ((Boolean) isAggregateCommandHandler_id51Z40V$BJAY(node));
      case 5:
        return (T) ((SNode) getReferencedAggregate_id3PtG$LHuKCW(node));
      case 6:
        return (T) ((String) getToggleChildComponentKeywordsIntentionDescription_id5jZDGTgijt$(node, ((boolean) (Boolean) parameters[0])));
      case 7:
        return (T) ((Boolean) areReferencesOnChildrenAllowed_idomljbwD$pt(node));
      case 8:
        return (T) ((Boolean) canExecuteRequiresTransformation_idomljbxf$Pf(node, (EditorContext) parameters[0], (SNode) parameters[1]));
      case 9:
        return (T) ((String) getPlaceholderText_id2RbvdOLeryC(node));
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
    /*package*/ static final SContainmentLink aggregateReference$V1gV = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x2a075c454595567L, 0x7849637c487da2bcL, "aggregateReference");
    /*package*/ static final SReferenceLink aggregate$D_P$ = MetaAdapterFactory.getReferenceLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x4f0a0db9ac16f8f2L, 0x4f0a0db9ac16f8f3L, "aggregate");
    /*package*/ static final SContainmentLink components$95b6 = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x2a075c454595567L, 0x2a075c45459556aL, "components");
  }

  private static final class PROPS {
    /*package*/ static final SProperty name$MnvL = MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name");
    /*package*/ static final SProperty type$SAFo = MetaAdapterFactory.getProperty(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x2a075c454595567L, 0x71e6ab63d0d9fcL, "type");
    /*package*/ static final SProperty shouldDisplayReferences$PJ7j = MetaAdapterFactory.getProperty(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x54ffa6ce505e12ecL, 0x54ffa6ce525323cbL, "shouldDisplayReferences");
  }

  private static final class CONCEPTS {
    /*package*/ static final SConcept Command$kL = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x73da5086440e243eL, "CQRS.structure.Command");
  }
}
