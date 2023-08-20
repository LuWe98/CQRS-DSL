package CQRS.Kotlin.textGen;

/*Generated by MPS */

import jetbrains.mps.text.rt.TextGenDescriptorBase;
import jetbrains.mps.text.rt.TextGenContext;
import jetbrains.mps.text.impl.TextGenSupport;
import CQRS.Kotlin.behavior.KotlinFileOutput__BehaviorDescriptor;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import CQRS.Generation.generation.DependencyUtils;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import CQRS.Generation.textGen.CqrsTextGenComponents;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SProperty;

public class EventHandlerSeparatedKotlinOutput_TextGen extends TextGenDescriptorBase {
  @Override
  public void generateText(final TextGenContext ctx) {
    final TextGenSupport tgs = new TextGenSupport(ctx);
    String eventName = KotlinFileOutput__BehaviorDescriptor.converter_id4b$xqUBeLAT.invoke(ctx.getPrimaryInput()).convertEvent(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.event$_EWX));
    String eventHandlerInterface = DependencyUtils.EVENT_HANDLER_INTERFACE_NAME;


    KotlinTextGenComponents.header(ctx.getPrimaryInput(), ctx);

    KotlinTextGenComponents._class(SPropertyOperations.getString(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.event$_EWX), PROPS.name$MnvL) + "Handler", ctx);
    tgs.append("(");
    ctx.getBuffer().area().increaseIndent();
    KotlinTextGenComponents.verticalParameters(SLinkOperations.getChildren(ctx.getPrimaryInput(), LINKS.parameters$DNXU), ctx);
    ctx.getBuffer().area().decreaseIndent();
    tgs.append("): ");
    tgs.append(eventHandlerInterface);
    tgs.append("<");
    tgs.append(eventName);
    tgs.append("> {");
    CqrsTextGenComponents.newLines(2, ctx);
    ctx.getBuffer().area().increaseIndent();
    KotlinTextGenComponents.methods(SLinkOperations.getChildren(ctx.getPrimaryInput(), LINKS.methods$uVEc), ctx);
    ctx.getBuffer().area().decreaseIndent();
    tgs.append("}");
  }

  private static final class LINKS {
    /*package*/ static final SReferenceLink event$_EWX = MetaAdapterFactory.getReferenceLink(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x1a77dd18daf28d4eL, 0x1a77dd18dafb9c9aL, "event");
    /*package*/ static final SContainmentLink parameters$DNXU = MetaAdapterFactory.getContainmentLink(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x1a77dd18daf28d4eL, 0x33fbc5a966bc25ecL, "parameters");
    /*package*/ static final SContainmentLink methods$uVEc = MetaAdapterFactory.getContainmentLink(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x1a77dd18daf28d4eL, 0x1a77dd18db0d137aL, "methods");
  }

  private static final class PROPS {
    /*package*/ static final SProperty name$MnvL = MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name");
  }
}