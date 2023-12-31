package CQRS.Kotlin.textGen;

/*Generated by MPS */

import jetbrains.mps.text.rt.TextGenDescriptorBase;
import jetbrains.mps.text.rt.TextGenContext;
import jetbrains.mps.text.impl.TextGenSupport;
import CQRS.behavior.CommandContainer__BehaviorDescriptor;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import CQRS.Generation.textGen.CqrsTextGenComponents;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SContainmentLink;

public class CommandHandlerGroupedKotlinOutput_TextGen extends TextGenDescriptorBase {
  @Override
  public void generateText(final TextGenContext ctx) {
    final TextGenSupport tgs = new TextGenSupport(ctx);
    String name = CommandContainer__BehaviorDescriptor.getCommandContainerName_id51Z40Vzx6GO.invoke(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.container$uWWL));

    KotlinTextGenComponents.header(ctx.getPrimaryInput(), ctx);

    KotlinTextGenComponents._class(name, ctx);
    tgs.append("(");
    ctx.getBuffer().area().increaseIndent();
    KotlinTextGenComponents.verticalParameters(SLinkOperations.getChildren(ctx.getPrimaryInput(), LINKS.parameters$KWzU), ctx);
    ctx.getBuffer().area().decreaseIndent();
    tgs.append("): ");
    tgs.append("I" + name);
    tgs.append(" {");
    CqrsTextGenComponents.newLines(2, ctx);
    ctx.getBuffer().area().increaseIndent();
    KotlinTextGenComponents.methods(SLinkOperations.getChildren(ctx.getPrimaryInput(), LINKS.methods$xhyf), ctx);
    ctx.getBuffer().area().decreaseIndent();
    tgs.append("}");
  }

  private static final class LINKS {
    /*package*/ static final SReferenceLink container$uWWL = MetaAdapterFactory.getReferenceLink(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x33fbc5a9591d98baL, 0x507f100eeef73cc7L, "container");
    /*package*/ static final SContainmentLink parameters$KWzU = MetaAdapterFactory.getContainmentLink(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x33fbc5a9591d98baL, 0x33fbc5a95c6ef487L, "parameters");
    /*package*/ static final SContainmentLink methods$xhyf = MetaAdapterFactory.getContainmentLink(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x33fbc5a9591d98baL, 0x33fbc5a9591d98bbL, "methods");
  }
}
