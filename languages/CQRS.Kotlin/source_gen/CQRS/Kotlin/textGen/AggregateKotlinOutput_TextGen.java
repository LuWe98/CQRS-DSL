package CQRS.Kotlin.textGen;

/*Generated by MPS */

import jetbrains.mps.text.rt.TextGenDescriptorBase;
import jetbrains.mps.text.rt.TextGenContext;
import jetbrains.mps.text.impl.TextGenSupport;
import CQRS.Generation.generation.ConceptMapper;
import CQRS.Kotlin.behavior.KotlinFileOutput__BehaviorDescriptor;
import CQRS.Generation.generation.DependencyTextConverter;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import CQRS.Generation.generation.DependencyUtils;
import CQRS.Generation.textGen.CqrsTextGenComponents;
import CQRS.behavior.AggregateRoot__BehaviorDescriptor;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SProperty;

public class AggregateKotlinOutput_TextGen extends TextGenDescriptorBase {
  @Override
  public void generateText(final TextGenContext ctx) {
    final TextGenSupport tgs = new TextGenSupport(ctx);
    ConceptMapper mapper = KotlinFileOutput__BehaviorDescriptor.mapper_idSy32QQY46b.invoke(ctx.getPrimaryInput());
    DependencyTextConverter converter = KotlinFileOutput__BehaviorDescriptor.converter_id4b$xqUBeLAT.invoke(ctx.getPrimaryInput());
    SNode aggregate = SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.aggregate$k52A);
    String idType = converter.convertType(SLinkOperations.getTarget(aggregate, LINKS.idType$EoIp));
    String eventType = converter.convertEvent(SLinkOperations.getTarget(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.eventWrapper$57wl), LINKS.substitudeEvent$ZIb0));
    String interfaceName = converter.convertAggregateConcreteInterface(aggregate);

    KotlinTextGenComponents.header(ctx.getPrimaryInput(), ctx);

    KotlinTextGenComponents._class(SPropertyOperations.getString(aggregate, PROPS.name$MnvL), ctx);
    tgs.append("(");
    ctx.getBuffer().area().increaseIndent();
    KotlinTextGenComponents.parameters(SLinkOperations.getChildren(ctx.getPrimaryInput(), LINKS.parameters$tIoa), SPropertyOperations.getBoolean(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.aggregate$k52A), PROPS.hasVerticallyAlignedParameters$KOTx), ctx);
    ctx.getBuffer().area().decreaseIndent();
    tgs.append("): ");
    tgs.append(interfaceName);
    tgs.append(", ");
    tgs.append(DependencyUtils.BASE_EVENT_AGGREGATE_NAME);
    tgs.append("<");
    tgs.append(idType);
    tgs.append(", ");
    tgs.append(eventType);
    tgs.append(">(id) {");
    CqrsTextGenComponents.newLines(2, ctx);

    ctx.getBuffer().area().increaseIndent();
    KotlinTextGenComponents.properties(AggregateRoot__BehaviorDescriptor.properties_id3DbZR$NYzvO.invoke(aggregate), mapper, ctx);
    KotlinTextGenComponents.methods(SLinkOperations.getChildren(ctx.getPrimaryInput(), LINKS.methods$L6U8), ctx);
    ctx.getBuffer().area().decreaseIndent();
    tgs.append("}");
  }

  private static final class LINKS {
    /*package*/ static final SReferenceLink aggregate$k52A = MetaAdapterFactory.getReferenceLink(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x42e485aea7491039L, 0x42e485aea749103cL, "aggregate");
    /*package*/ static final SContainmentLink idType$EoIp = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x4cfae7e929829c99L, 0x4cfae7e929829cc6L, "idType");
    /*package*/ static final SReferenceLink eventWrapper$57wl = MetaAdapterFactory.getReferenceLink(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x42e485aea7491039L, 0x1a77dd18dba2aebfL, "eventWrapper");
    /*package*/ static final SContainmentLink substitudeEvent$ZIb0 = MetaAdapterFactory.getContainmentLink(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x1a77dd18db67c7adL, 0x1a77dd18dbbe5dd3L, "substitudeEvent");
    /*package*/ static final SContainmentLink parameters$tIoa = MetaAdapterFactory.getContainmentLink(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x42e485aea7491039L, 0x6443e253cd78280L, "parameters");
    /*package*/ static final SContainmentLink methods$L6U8 = MetaAdapterFactory.getContainmentLink(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x42e485aea7491039L, 0x1a77dd18dd16f8b7L, "methods");
  }

  private static final class PROPS {
    /*package*/ static final SProperty name$MnvL = MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name");
    /*package*/ static final SProperty hasVerticallyAlignedParameters$KOTx = MetaAdapterFactory.getProperty(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x62cb96433e80624L, 0x3ae7d0b6d87bc75fL, "hasVerticallyAlignedParameters");
  }
}
