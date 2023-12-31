package CQRS.Kotlin.textGen;

/*Generated by MPS */

import jetbrains.mps.text.rt.TextGenDescriptorBase;
import jetbrains.mps.text.rt.TextGenContext;
import jetbrains.mps.text.impl.TextGenSupport;
import CQRS.Generation.generation.DependencyUtils;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import CQRS.Generation.textGen.CqrsTextGenComponents;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class EventHandlerGroupedKotlinOutput_TextGen extends TextGenDescriptorBase {
  @Override
  public void generateText(final TextGenContext ctx) {
    final TextGenSupport tgs = new TextGenSupport(ctx);
    KotlinTextGenComponents.header(ctx.getPrimaryInput(), ctx);

    KotlinTextGenComponents._class(DependencyUtils.GROUPED_EVENT_HANDLER_NAME, ctx);
    tgs.append("(");
    ctx.getBuffer().area().increaseIndent();
    KotlinTextGenComponents.verticalParameters(SLinkOperations.getChildren(ctx.getPrimaryInput(), LINKS.parameters$RRO$), ctx);
    ctx.getBuffer().area().decreaseIndent();
    tgs.append("): ");
    tgs.append("I" + DependencyUtils.GROUPED_EVENT_HANDLER_NAME);
    tgs.append(" {");
    CqrsTextGenComponents.newLines(2, ctx);
    ctx.getBuffer().area().increaseIndent();
    KotlinTextGenComponents.methods(SLinkOperations.getChildren(ctx.getPrimaryInput(), LINKS.methods$9Lm4), ctx);
    ctx.getBuffer().area().decreaseIndent();
    tgs.append("}");
  }

  private static final class LINKS {
    /*package*/ static final SContainmentLink parameters$RRO$ = MetaAdapterFactory.getContainmentLink(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x1a77dd18dbbe5dd0L, 0x33fbc5a9664da19aL, "parameters");
    /*package*/ static final SContainmentLink methods$9Lm4 = MetaAdapterFactory.getContainmentLink(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x1a77dd18dbbe5dd0L, 0x33fbc5a966473286L, "methods");
  }
}
