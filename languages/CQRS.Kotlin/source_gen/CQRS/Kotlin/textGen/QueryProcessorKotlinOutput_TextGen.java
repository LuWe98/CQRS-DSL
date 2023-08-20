package CQRS.Kotlin.textGen;

/*Generated by MPS */

import jetbrains.mps.text.rt.TextGenDescriptorBase;
import jetbrains.mps.text.rt.TextGenContext;
import jetbrains.mps.text.impl.TextGenSupport;
import CQRS.Generation.generation.DependencyTextConverter;
import CQRS.Kotlin.behavior.KotlinFileOutput__BehaviorDescriptor;
import CQRS.Generation.generation.DependencyUtils;
import CQRS.Generation.textGen.CqrsTextGenComponents;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.internal.collections.runtime.IVisitor;
import org.jetbrains.mps.openapi.model.SNode;
import CQRS.Generation.util.StringUtil;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SReferenceLink;

public class QueryProcessorKotlinOutput_TextGen extends TextGenDescriptorBase {
  @Override
  public void generateText(final TextGenContext ctx) {
    final TextGenSupport tgs = new TextGenSupport(ctx);
    final DependencyTextConverter converter = KotlinFileOutput__BehaviorDescriptor.converter_id4b$xqUBeLAT.invoke(ctx.getPrimaryInput());
    String query = DependencyUtils.QUERY_INTERFACE_NAME;
    String queryProcessor = DependencyUtils.QUERY_PROCESSOR_NAME;
    String queryProcessorImpl = DependencyUtils.QUERY_PROCESSOR_IMPL_NAME;
    String queryContainer = DependencyUtils.QUERY_HANDLER_CONTAINER_NAME;
    String queryContainerImpl = DependencyUtils.QUERY_HANDLER_CONTAINER_IMPL_NAME;

    KotlinTextGenComponents.header(ctx.getPrimaryInput(), ctx);

    KotlinTextGenComponents._interface(queryProcessor, ctx);
    tgs.append(" {");
    CqrsTextGenComponents.newLine(ctx);
    ctx.getBuffer().area().increaseIndent();
    tgs.indent();
    tgs.append("fun <Result> process(query: ");
    tgs.append(query);
    tgs.append("<Result>): Result");
    CqrsTextGenComponents.newLine(ctx);
    ctx.getBuffer().area().decreaseIndent();
    tgs.append("}");
    CqrsTextGenComponents.newLines(2, ctx);


    // Generation of init function to fill the processor with handlers.
    tgs.append("fun initProcessor(");
    CqrsTextGenComponents.newLine(ctx);
    ctx.getBuffer().area().increaseIndent();
    Sequence.fromIterable(SLinkOperations.collect(SLinkOperations.getChildren(ctx.getPrimaryInput(), LINKS.queryReferences$fHmi), LINKS.query$ROy$)).visitAll(new IVisitor<SNode>() {
      public void visit(SNode query) {
        String queryHandlerName = converter.convertQueryHandlerSeparated(query);
        tgs.indent();
        tgs.append(StringUtil.firstToLower(queryHandlerName));
        tgs.append(": ");
        tgs.append(queryHandlerName);
        tgs.append(",");
        CqrsTextGenComponents.newLine(ctx);
      }
    });

    tgs.indent();
    tgs.append("queryContainer: ");
    tgs.append(queryContainer);
    tgs.append(" = ");
    tgs.append(queryContainerImpl);
    tgs.append("()");
    CqrsTextGenComponents.newLine(ctx);
    ctx.getBuffer().area().decreaseIndent();
    tgs.append("): ");
    tgs.append(queryProcessor);
    tgs.append(" {");
    CqrsTextGenComponents.newLine(ctx);
    ctx.getBuffer().area().increaseIndent();
    Sequence.fromIterable(SLinkOperations.collect(SLinkOperations.getChildren(ctx.getPrimaryInput(), LINKS.queryReferences$fHmi), LINKS.query$ROy$)).visitAll(new IVisitor<SNode>() {
      public void visit(SNode query) {
        String queryName = converter.convertQuery(query);
        String queryHandlerName = converter.convertQueryHandlerSeparated(query);
        tgs.indent();
        tgs.append("queryContainer.registerQueryHandler(");
        tgs.append(queryName);
        tgs.append("::class, ");
        tgs.append(StringUtil.firstToLower(queryHandlerName));
        tgs.append(")");
        CqrsTextGenComponents.newLine(ctx);
      }
    });

    tgs.indent();
    tgs.append("return ");
    tgs.append(queryProcessorImpl);
    tgs.append("(queryContainer)");
    CqrsTextGenComponents.newLine(ctx);
    ctx.getBuffer().area().decreaseIndent();
    tgs.append("}");
  }

  private static final class LINKS {
    /*package*/ static final SContainmentLink queryReferences$fHmi = MetaAdapterFactory.getContainmentLink(0x273bc31819694c83L, 0x8484525ea753e78bL, 0x7849637c48cd1e42L, 0x7849637c48cd1e51L, "queryReferences");
    /*package*/ static final SReferenceLink query$ROy$ = MetaAdapterFactory.getReferenceLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x73da5086440e2447L, 0x73da5086440e2448L, "query");
  }
}
