package CQRS.Kotlin.textGen;

/*Generated by MPS */

import jetbrains.mps.text.rt.TextGenDescriptorBase;
import jetbrains.mps.text.rt.TextGenContext;
import jetbrains.mps.text.impl.TextGenSupport;
import CQRS.Generation.generation.DependencyTextConverter;
import CQRS.Kotlin.behavior.KotlinFileOutput__BehaviorDescriptor;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import CQRS.behavior.AggregateRootRepository__BehaviorDescriptor;
import CQRS.Generation.textGen.CqrsTextGenComponents;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SContainmentLink;

public class AggregateRepositoryKotlinOutput_TextGen extends TextGenDescriptorBase {
  @Override
  public void generateText(final TextGenContext ctx) {
    final TextGenSupport tgs = new TextGenSupport(ctx);
    DependencyTextConverter converter = KotlinFileOutput__BehaviorDescriptor.converter_id4b$xqUBeLAT.invoke(ctx.getPrimaryInput());
    String repositoryInterfaceName = converter.convertAggregateConcreteRepositoryInterface(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.repository$o2pF));

    KotlinTextGenComponents.header(ctx.getPrimaryInput(), ctx);

    KotlinTextGenComponents._class(AggregateRootRepository__BehaviorDescriptor.repositoryName_id5qxF18G6I2Y.invoke(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.repository$o2pF)), ctx);
    tgs.append("(): ");
    tgs.append(repositoryInterfaceName);
    tgs.append(" {");
    CqrsTextGenComponents.newLines(2, ctx);
    ctx.getBuffer().area().increaseIndent();
    KotlinTextGenComponents.methods(SLinkOperations.getChildren(ctx.getPrimaryInput(), LINKS.methods$TSUr), ctx);
    ctx.getBuffer().area().decreaseIndent();
    tgs.append("}");
  }

  private static final class LINKS {
    /*package*/ static final SReferenceLink repository$o2pF = MetaAdapterFactory.getReferenceLink(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x1a77dd18de31fc1dL, 0x507f100eefdfdf4eL, "repository");
    /*package*/ static final SContainmentLink methods$TSUr = MetaAdapterFactory.getContainmentLink(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x1a77dd18de31fc1dL, 0x1a77dd18ded863a4L, "methods");
  }
}