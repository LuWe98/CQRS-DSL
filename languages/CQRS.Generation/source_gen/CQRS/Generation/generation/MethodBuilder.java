package CQRS.Generation.generation;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.internal.collections.runtime.ISelector;
import CQRS.behavior.Method__BehaviorDescriptor;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.internal.collections.runtime.Sequence;
import org.jetbrains.mps.openapi.language.SEnumerationLiteral;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SEnumOperations;
import org.jetbrains.mps.openapi.language.SProperty;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import org.jetbrains.mps.openapi.language.SContainmentLink;

public final class MethodBuilder {

  private SNode boundedContext;

  private ParameterBuilder parameterBuilder;

  public MethodBuilder(SNode parameter) {
    this.boundedContext = parameter;
    this.parameterBuilder = new ParameterBuilder(boundedContext);
  }

  public Actual named(String name) {
    SNode method = SConceptOperations.createNewNode(MetaAdapterFactory.getConcept(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x607c1e67c05d1524L, "CQRS.Generation.structure.MethodOutput"));
    SPropertyOperations.set(method, PROPS.name$PRHY, name);
    return new Actual(method, boundedContext, parameterBuilder);
  }

  public Actual with(SNode method) {
    SNode node = SConceptOperations.createNewNode(MetaAdapterFactory.getConcept(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x607c1e67c05d1524L, "CQRS.Generation.structure.MethodOutput"));
    SLinkOperations.setTarget(node, LINKS.originalMethod$uqbp, method);
    SPropertyOperations.set(node, PROPS.name$PRHY, SPropertyOperations.getString(method, PROPS.name$MnvL));
    SPropertyOperations.setEnum(node, PROPS.modifier$GQxw, SPropertyOperations.getEnum(method, PROPS.modifier$TTVg));
    SPropertyOperations.set(node, PROPS.hasVerticallyAlignedParameters$N1Bl, SPropertyOperations.getBoolean(method, PROPS.hasVerticallyAlignedParameters$KOTx));
    ListSequence.fromList(SLinkOperations.getChildren(node, LINKS.parameters$F5jo)).addSequence(ListSequence.fromList(SLinkOperations.getChildren(method, LINKS.parameters$t6h4)).select(new ISelector<SNode, SNode>() {
      public SNode select(SNode it) {
        return parameterBuilder.with(it).hideModifiers(true).build();
      }
    }));
    if ((boolean) Method__BehaviorDescriptor.hasReturnType_id2Np_kyaxbHi.invoke(method)) {
      SLinkOperations.setTarget(node, LINKS.returnType$FbaL, SNodeOperations.copyNode(Method__BehaviorDescriptor.getReturnType_idp4fykIHzze.invoke(method)));
    }
    return new Actual(node, boundedContext, parameterBuilder);
  }

  public Actual with_(SNode method) {
    return new Actual(SNodeOperations.copyNode(method), boundedContext, parameterBuilder);
  }


  public static final class Actual {

    private SNode currentMethod;
    private SNode boundedContext;
    private ParameterBuilder parameterBuilder;

    private Actual(SNode parameter, SNode boundedContext, ParameterBuilder parameterBuilder) {
      this.currentMethod = parameter;
      this.boundedContext = boundedContext;
      this.parameterBuilder = parameterBuilder;
    }

    public Actual setReturnType(SNode type) {
      SLinkOperations.setTarget(currentMethod, LINKS.returnType$FbaL, SNodeOperations.copyNode(type));
      return this;
    }

    public Actual addParameter(SNode parameter) {
      ListSequence.fromList(SLinkOperations.getChildren(currentMethod, LINKS.parameters$F5jo)).addElement(parameter);
      return this;
    }

    public Actual addParameter(ParameterBuilder.Actual builder) {
      ListSequence.fromList(SLinkOperations.getChildren(currentMethod, LINKS.parameters$F5jo)).addElement(builder.hideModifiers(true).build());
      return this;
    }

    public Actual addParameter(String name, SNode type) {
      return addParameter(parameterBuilder.with(name, SNodeOperations.copyNode(type)));
    }

    public Actual addParameter_(SNode parameter) {
      return addParameter(parameterBuilder.with(parameter));
    }

    public Actual addParameters(Iterable<SNode> parameters) {
      ListSequence.fromList(SLinkOperations.getChildren(currentMethod, LINKS.parameters$F5jo)).addSequence(Sequence.fromIterable(parameters));
      return this;
    }

    public Actual addParameters_(Iterable<SNode> parameters) {
      ListSequence.fromList(SLinkOperations.getChildren(currentMethod, LINKS.parameters$F5jo)).addSequence(Sequence.fromIterable(parameters).select(new ISelector<SNode, SNode>() {
        public SNode select(SNode it) {
          return parameterBuilder.with(SNodeOperations.copyNode(it)).hideModifiers(true).build();
        }
      }));
      return this;
    }

    public Actual isOverriding(boolean is) {
      SPropertyOperations.set(currentMethod, PROPS.isOverriding$_pUI, is);
      return this;
    }

    public Actual isInInterface(boolean is) {
      SPropertyOperations.set(currentMethod, PROPS.isInInterface$qwbM, is);
      return this;
    }

    public Actual withModifier(SEnumerationLiteral modifier) {
      SPropertyOperations.setEnum(currentMethod, PROPS.modifier$GQxw, modifier);
      return this;
    }

    public Actual withPrivateModifier() {
      return withModifier(SEnumOperations.getMember(MetaAdapterFactory.getEnumeration(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x2a075c4547294c1L, "CQRS.structure.MethodModifier"), 0x2a075c4547294cfL, "private"));
    }

    public Actual withPublicModifier() {
      return withModifier(SEnumOperations.getMember(MetaAdapterFactory.getEnumeration(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x2a075c4547294c1L, "CQRS.structure.MethodModifier"), 0x2a075c4547294cdL, "public"));
    }

    public Actual withOriginalMethod(SNode method) {
      SLinkOperations.setTarget(currentMethod, LINKS.originalMethod$uqbp, method);
      return this;
    }

    public Actual withProperty(SNode property) {
      SLinkOperations.setTarget(currentMethod, LINKS.property$h$fI, property);
      return this;
    }

    public Actual hasVerticallyAlignedParameters(boolean has) {
      SPropertyOperations.set(currentMethod, PROPS.hasVerticallyAlignedParameters$N1Bl, has);
      return this;
    }

    public Actual forSide(SEnumerationLiteral side) {
      SPropertyOperations.setEnum(currentMethod, PROPS.applicationSide$w7lC, side);
      return this;
    }

    public Actual forCommandSide() {
      return forSide(SEnumOperations.getMember(MetaAdapterFactory.getEnumeration(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x2cd9954889e49a89L, "CQRS.Generation.structure.ApplicationSide"), 0x2cd9954889e49a8aL, "COMMAND_SIDE"));
    }

    public Actual forQuerySide() {
      return forSide(SEnumOperations.getMember(MetaAdapterFactory.getEnumeration(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x2cd9954889e49a89L, "CQRS.Generation.structure.ApplicationSide"), 0x2cd9954889e49a8bL, "QUERY_SIDE"));
    }


    public SNode build() {
      SLinkOperations.setTarget(currentMethod, LINKS.boundedContext$bmqW, boundedContext);
      return currentMethod;
    }
  }

  private static final class PROPS {
    /*package*/ static final SProperty name$PRHY = MetaAdapterFactory.getProperty(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x607c1e67c05d1524L, 0x1a77dd18daeac9edL, "name");
    /*package*/ static final SProperty name$MnvL = MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name");
    /*package*/ static final SProperty modifier$GQxw = MetaAdapterFactory.getProperty(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x607c1e67c05d1524L, 0x6443e252ebba4d0L, "modifier");
    /*package*/ static final SProperty modifier$TTVg = MetaAdapterFactory.getProperty(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x73da508643f0517eL, 0x2a075c4547294d8L, "modifier");
    /*package*/ static final SProperty hasVerticallyAlignedParameters$N1Bl = MetaAdapterFactory.getProperty(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x607c1e67c05d1524L, 0x6443e252ef7adb4L, "hasVerticallyAlignedParameters");
    /*package*/ static final SProperty hasVerticallyAlignedParameters$KOTx = MetaAdapterFactory.getProperty(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x62cb96433e80624L, 0x3ae7d0b6d87bc75fL, "hasVerticallyAlignedParameters");
    /*package*/ static final SProperty isOverriding$_pUI = MetaAdapterFactory.getProperty(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x607c1e67c05d1524L, 0x2cd995488a1f3a2dL, "isOverriding");
    /*package*/ static final SProperty isInInterface$qwbM = MetaAdapterFactory.getProperty(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x607c1e67c05d1524L, 0x2cd995488a013454L, "isInInterface");
    /*package*/ static final SProperty applicationSide$w7lC = MetaAdapterFactory.getProperty(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x607c1e67c05d1524L, 0x2cd9954889e7084dL, "applicationSide");
  }

  private static final class LINKS {
    /*package*/ static final SReferenceLink originalMethod$uqbp = MetaAdapterFactory.getReferenceLink(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x607c1e67c05d1524L, 0x6443e252eeba878L, "originalMethod");
    /*package*/ static final SContainmentLink parameters$F5jo = MetaAdapterFactory.getContainmentLink(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x607c1e67c05d1524L, 0x1a77dd18dac2db35L, "parameters");
    /*package*/ static final SContainmentLink parameters$t6h4 = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x62cb96433e80624L, 0x62cb96433e80625L, "parameters");
    /*package*/ static final SContainmentLink returnType$FbaL = MetaAdapterFactory.getContainmentLink(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x607c1e67c05d1524L, 0x1a77dd18dac2db39L, "returnType");
    /*package*/ static final SReferenceLink property$h$fI = MetaAdapterFactory.getReferenceLink(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x607c1e67c05d1524L, 0x2cd995488a1f6bceL, "property");
    /*package*/ static final SReferenceLink boundedContext$bmqW = MetaAdapterFactory.getReferenceLink(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x2cd995488a0177afL, 0x2cd995488a7b76f9L, "boundedContext");
  }
}
