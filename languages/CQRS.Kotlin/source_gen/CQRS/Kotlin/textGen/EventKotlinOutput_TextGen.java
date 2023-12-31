package CQRS.Kotlin.textGen;

/*Generated by MPS */

import jetbrains.mps.text.rt.TextGenDescriptorBase;
import jetbrains.mps.text.rt.TextGenContext;
import jetbrains.mps.text.impl.TextGenSupport;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import CQRS.Generation.behavior.EventOutput__BehaviorDescriptor;
import CQRS.behavior.IComponentWithParameters__BehaviorDescriptor;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SProperty;

public class EventKotlinOutput_TextGen extends TextGenDescriptorBase {
  @Override
  public void generateText(final TextGenContext ctx) {
    final TextGenSupport tgs = new TextGenSupport(ctx);
    SNode event = SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.event$tUVh);
    String wrapperName = SPropertyOperations.getString(SLinkOperations.getTarget(EventOutput__BehaviorDescriptor.parentEventWrapper_id1DRRhzrq_wB.invoke(ctx.getPrimaryInput()), LINKS.substitudeEvent$ZIb0), PROPS.name$MnvL);

    if ((boolean) IComponentWithParameters__BehaviorDescriptor.hasParameters_id5QsWOhXN7cG.invoke(event)) {
      KotlinTextGenComponents._dataclass(SPropertyOperations.getString(event, PROPS.name$MnvL), ctx);
      tgs.append("(");
      ctx.getBuffer().area().increaseIndent();
      KotlinTextGenComponents.parameters(SLinkOperations.getChildren(ctx.getPrimaryInput(), LINKS.parameters$gIGH), SPropertyOperations.getBoolean(event, PROPS.hasVerticallyAlignedParameters$KOTx), ctx);
      ctx.getBuffer().area().decreaseIndent();
      tgs.append(")");
    } else {
      KotlinTextGenComponents._object(SPropertyOperations.getString(event, PROPS.name$MnvL), ctx);
    }

    tgs.append(": ");
    tgs.append(wrapperName);
  }

  private static final class LINKS {
    /*package*/ static final SReferenceLink event$tUVh = MetaAdapterFactory.getReferenceLink(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x42e485aea772864aL, 0x42e485aea772864dL, "event");
    /*package*/ static final SContainmentLink substitudeEvent$ZIb0 = MetaAdapterFactory.getContainmentLink(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x1a77dd18db67c7adL, 0x1a77dd18dbbe5dd3L, "substitudeEvent");
    /*package*/ static final SContainmentLink parameters$gIGH = MetaAdapterFactory.getContainmentLink(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x42e485aea772864aL, 0x6443e253e200e28L, "parameters");
  }

  private static final class PROPS {
    /*package*/ static final SProperty name$MnvL = MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name");
    /*package*/ static final SProperty hasVerticallyAlignedParameters$KOTx = MetaAdapterFactory.getProperty(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x62cb96433e80624L, 0x3ae7d0b6d87bc75fL, "hasVerticallyAlignedParameters");
  }
}
