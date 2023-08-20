package CQRS.Kotlin.textGen;

/*Generated by MPS */

import jetbrains.mps.text.rt.TextGenDescriptorBase;
import jetbrains.mps.text.rt.TextGenContext;
import jetbrains.mps.text.impl.TextGenSupport;
import CQRS.behavior.QueryContainer__BehaviorDescriptor;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import CQRS.Generation.textGen.CqrsTextGenComponents;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SContainmentLink;

public class QueryHandlerGroupedKotlinOutput_TextGen extends TextGenDescriptorBase {
  @Override
  public void generateText(final TextGenContext ctx) {
    final TextGenSupport tgs = new TextGenSupport(ctx);
    String queryContainerName = QueryContainer__BehaviorDescriptor.getQueryContainerName_id2RbvdOKU0GT.invoke(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.container$PNh7));


    KotlinTextGenComponents.header(ctx.getPrimaryInput(), ctx);

    KotlinTextGenComponents._class(queryContainerName, ctx);
    tgs.append("(");
    ctx.getBuffer().area().increaseIndent();
    KotlinTextGenComponents.verticalParameters(SLinkOperations.getChildren(ctx.getPrimaryInput(), LINKS.parameters$HkDQ), ctx);
    ctx.getBuffer().area().decreaseIndent();
    tgs.append("): ");
    tgs.append("I" + queryContainerName);
    tgs.append(" {");
    CqrsTextGenComponents.newLines(2, ctx);
    ctx.getBuffer().area().increaseIndent();
    KotlinTextGenComponents.methods(SLinkOperations.getChildren(ctx.getPrimaryInput(), LINKS.methods$HkbO), ctx);
    ctx.getBuffer().area().decreaseIndent();
    tgs.append("}");
  }

  private static final class LINKS {
    /*package*/ static final SReferenceLink container$PNh7 = MetaAdapterFactory.getReferenceLink(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x33fbc5a96964f0a3L, 0x507f100ef01e81beL, "container");
    /*package*/ static final SContainmentLink parameters$HkDQ = MetaAdapterFactory.getContainmentLink(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x33fbc5a96964f0a3L, 0x33fbc5a96964f0abL, "parameters");
    /*package*/ static final SContainmentLink methods$HkbO = MetaAdapterFactory.getContainmentLink(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x33fbc5a96964f0a3L, 0x33fbc5a96964f0a9L, "methods");
  }
}