package CQRS.Kotlin.textGen;

/*Generated by MPS */

import jetbrains.mps.text.rt.TextGenDescriptorBase;
import jetbrains.mps.text.rt.TextGenContext;
import jetbrains.mps.text.impl.TextGenSupport;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import CQRS.Kotlin.behavior.KotlinElementOutput__BehaviorDescriptor;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SProperty;

public class PropertyKotlinOutput_TextGen extends TextGenDescriptorBase {
  @Override
  public void generateText(final TextGenContext ctx) {
    final TextGenSupport tgs = new TextGenSupport(ctx);
    tgs.append("private var ");
    tgs.append(SPropertyOperations.getString(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.property$3pth), PROPS.name$MnvL));
    tgs.append(" : ");
    tgs.appendNode(KotlinElementOutput__BehaviorDescriptor.mapper_id2Np_kya0npo.invoke(ctx.getPrimaryInput()).mapDataType(SLinkOperations.getTarget(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.property$3pth), LINKS.type$AxAW)));
    tgs.append(" = TODO(\"Not yet implemented\")");
  }

  private static final class LINKS {
    /*package*/ static final SReferenceLink property$3pth = MetaAdapterFactory.getReferenceLink(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x1a77dd18dd171b74L, 0x1a77dd18dd171b77L, "property");
    /*package*/ static final SContainmentLink type$AxAW = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x4c59e910fb0ed95eL, 0x4c59e910fe2b0ee9L, "type");
  }

  private static final class PROPS {
    /*package*/ static final SProperty name$MnvL = MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name");
  }
}
