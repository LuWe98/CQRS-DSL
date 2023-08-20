package CQRS.Kotlin.textGen;

/*Generated by MPS */

import jetbrains.mps.text.rt.TextGenDescriptorBase;
import jetbrains.mps.text.rt.TextGenContext;
import jetbrains.mps.text.impl.TextGenSupport;
import CQRS.Generation.generation.DependencyTextConverter;
import CQRS.Kotlin.behavior.KotlinFileOutput__BehaviorDescriptor;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import CQRS.Generation.generation.DependencyUtils;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import CQRS.Generation.textGen.CqrsTextGenComponents;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SProperty;

public class AggregateConcreteInterfaceKotlinOutput_TextGen extends TextGenDescriptorBase {
  @Override
  public void generateText(final TextGenContext ctx) {
    final TextGenSupport tgs = new TextGenSupport(ctx);
    DependencyTextConverter converter = KotlinFileOutput__BehaviorDescriptor.converter_id4b$xqUBeLAT.invoke(ctx.getPrimaryInput());
    String idType = converter.convertType(SLinkOperations.getTarget(SLinkOperations.getTarget(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.g_aggregate$Xf87), LINKS.aggregate$k52A), LINKS.idType$EoIp));
    String eventType = converter.convertEvent(SLinkOperations.getTarget(SLinkOperations.getTarget(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.g_aggregate$Xf87), LINKS.eventWrapper$57wl), LINKS.substitudeEvent$ZIb0));

    KotlinTextGenComponents.header(ctx.getPrimaryInput(), ctx);

    KotlinTextGenComponents._interface("I" + SPropertyOperations.getString(SLinkOperations.getTarget(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.g_aggregate$Xf87), LINKS.aggregate$k52A), PROPS.name$MnvL), ctx);
    tgs.append(": ");
    tgs.append(DependencyUtils.EVENT_AGGREGATE_INTERFACE_NAME);
    tgs.append("<");
    tgs.append(idType);
    tgs.append(", ");
    tgs.append(eventType);
    tgs.append(">");

    if (ListSequence.fromList(SLinkOperations.getChildren(ctx.getPrimaryInput(), LINKS.methods$YQSw)).isEmpty()) {
      return;
    }

    tgs.append(" { ");
    CqrsTextGenComponents.newLines(2, ctx);
    ctx.getBuffer().area().increaseIndent();
    KotlinTextGenComponents.methods(SLinkOperations.getChildren(ctx.getPrimaryInput(), LINKS.methods$YQSw), ctx);
    ctx.getBuffer().area().decreaseIndent();
    tgs.append("}");
  }

  private static final class LINKS {
    /*package*/ static final SReferenceLink g_aggregate$Xf87 = MetaAdapterFactory.getReferenceLink(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x1a77dd18dc10802cL, 0x1a77dd18dc108030L, "g_aggregate");
    /*package*/ static final SReferenceLink aggregate$k52A = MetaAdapterFactory.getReferenceLink(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x42e485aea7491039L, 0x42e485aea749103cL, "aggregate");
    /*package*/ static final SContainmentLink idType$EoIp = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x4cfae7e929829c99L, 0x4cfae7e929829cc6L, "idType");
    /*package*/ static final SReferenceLink eventWrapper$57wl = MetaAdapterFactory.getReferenceLink(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x42e485aea7491039L, 0x1a77dd18dba2aebfL, "eventWrapper");
    /*package*/ static final SContainmentLink substitudeEvent$ZIb0 = MetaAdapterFactory.getContainmentLink(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x1a77dd18db67c7adL, 0x1a77dd18dbbe5dd3L, "substitudeEvent");
    /*package*/ static final SContainmentLink methods$YQSw = MetaAdapterFactory.getContainmentLink(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x1a77dd18dc10802cL, 0x1a77dd18dc13bc20L, "methods");
  }

  private static final class PROPS {
    /*package*/ static final SProperty name$MnvL = MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name");
  }
}
