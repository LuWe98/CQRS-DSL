package CQRS.Kotlin.textGen;

/*Generated by MPS */

import jetbrains.mps.text.rt.TextGenDescriptorBase;
import jetbrains.mps.text.rt.TextGenContext;
import jetbrains.mps.text.impl.TextGenSupport;
import CQRS.Generation.generation.DependencyUtils;
import CQRS.Generation.textGen.CqrsTextGenComponents;

public class QueryHandlerContainerImplKotlinOutput_TextGen extends TextGenDescriptorBase {
  @Override
  public void generateText(final TextGenContext ctx) {
    final TextGenSupport tgs = new TextGenSupport(ctx);
    String query = DependencyUtils.QUERY_INTERFACE_NAME;
    String queryHandler = DependencyUtils.QUERY_HANDLER_INTERFACE_NAME;
    String queryHandlerContainer = DependencyUtils.QUERY_HANDLER_CONTAINER_NAME;
    String queryHandlerContainerImpl = DependencyUtils.QUERY_HANDLER_CONTAINER_IMPL_NAME;

    KotlinTextGenComponents.header(ctx.getPrimaryInput(), ctx);

    KotlinTextGenComponents._class(queryHandlerContainerImpl, ctx);
    tgs.append("(): ");
    tgs.append(queryHandlerContainer);
    tgs.append(" {");
    CqrsTextGenComponents.newLines(2, ctx);
    ctx.getBuffer().area().increaseIndent();
    tgs.indent();
    tgs.append("private val container = mutableMapOf<KClass<*>, ");
    tgs.append(queryHandler);
    tgs.append("<");
    tgs.append(query);
    tgs.append("<*>, *>>()");
    CqrsTextGenComponents.newLines(2, ctx);

    tgs.indent();
    tgs.append("@Suppress(\"UNCHECKED_CAST\")");
    CqrsTextGenComponents.newLine(ctx);
    tgs.indent();
    tgs.append("override fun <Result> registerQueryHandler(clazz: KClass<out ");
    tgs.append(query);
    tgs.append("<Result>>, queryHandler: ");
    tgs.append(queryHandler);
    tgs.append("<out ");
    tgs.append(query);
    tgs.append("<Result>, Result>) {");
    CqrsTextGenComponents.newLine(ctx);
    tgs.indent();
    tgs.indent();
    tgs.append("container[clazz] = queryHandler as ");
    tgs.append(queryHandler);
    tgs.append("<");
    tgs.append(query);
    tgs.append("<*>, *>");
    CqrsTextGenComponents.newLine(ctx);
    tgs.indent();
    tgs.append("}");
    CqrsTextGenComponents.newLines(2, ctx);

    tgs.indent();
    tgs.append("override fun unregisterQueryHandler(clazz: KClass<out ");
    tgs.append(query);
    tgs.append("<*>>) {");
    CqrsTextGenComponents.newLine(ctx);
    tgs.indent();
    tgs.indent();
    tgs.append("container.remove(clazz)");
    CqrsTextGenComponents.newLine(ctx);
    tgs.indent();
    tgs.append("}");
    CqrsTextGenComponents.newLines(2, ctx);

    tgs.indent();
    tgs.append("override fun getRegisteredQueryHandlers(): List<");
    tgs.append(queryHandler);
    tgs.append("<");
    tgs.append(query);
    tgs.append("<*>, *>> {");
    CqrsTextGenComponents.newLine(ctx);
    tgs.indent();
    tgs.indent();
    tgs.append("return container.values.toList()");
    CqrsTextGenComponents.newLine(ctx);
    tgs.indent();
    tgs.append("}");
    CqrsTextGenComponents.newLines(2, ctx);

    tgs.indent();
    tgs.append("@Suppress(\"UNCHECKED_CAST\")");
    CqrsTextGenComponents.newLine(ctx);
    tgs.indent();
    tgs.append("override fun <Result> findQueryHandler(clazz: KClass<out ");
    tgs.append(query);
    tgs.append("<Result>>): ");
    tgs.append(queryHandler);
    tgs.append("<");
    tgs.append(query);
    tgs.append("<Result>, Result>? {");
    CqrsTextGenComponents.newLine(ctx);
    tgs.indent();
    tgs.indent();
    tgs.append("return container[clazz] as ");
    tgs.append(queryHandler);
    tgs.append("<");
    tgs.append(query);
    tgs.append("<Result>, Result>?");
    CqrsTextGenComponents.newLine(ctx);
    tgs.indent();
    tgs.append("}");
    CqrsTextGenComponents.newLines(2, ctx);
    ctx.getBuffer().area().decreaseIndent();
    tgs.append("}");
  }
}
