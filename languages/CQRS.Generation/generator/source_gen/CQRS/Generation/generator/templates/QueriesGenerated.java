package CQRS.Generation.generator.templates;

/*Generated by MPS */

import jetbrains.mps.generator.runtime.Generated;
import jetbrains.mps.generator.impl.query.QueryProviderBase;
import jetbrains.mps.generator.template.MappingScriptContext;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SModelOperations;
import jetbrains.mps.internal.collections.runtime.IVisitor;
import org.jetbrains.mps.openapi.model.SNode;
import CQRS.Generation.generation.ClassGenerator;
import jetbrains.mps.generator.template.TemplateQueryContext;
import java.util.Map;
import jetbrains.mps.generator.impl.query.ScriptCodeBlock;
import java.util.HashMap;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.generator.impl.query.QueryKey;
import jetbrains.mps.generator.impl.GenerationFailureException;
import jetbrains.mps.generator.impl.query.MapConfigurationCondition;
import org.jetbrains.mps.openapi.language.SConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

@Generated
public class QueriesGenerated extends QueryProviderBase {
  public QueriesGenerated() {
    super(1);
  }
  public static void mappingScript_CodeBlock_1(final MappingScriptContext _context) {
    ListSequence.fromList(SModelOperations.roots(_context.getModel(), CONCEPTS.BoundedContext$RF)).visitAll(new IVisitor<SNode>() {
      public void visit(SNode boundedContext) {
        new ClassGenerator(boundedContext, _context.getModel()).generate();
      }
    });
  }
  public static boolean mc_Condition_0(final TemplateQueryContext _context) {
    return true;
  }
  private final Map<String, ScriptCodeBlock> mscbMethods = new HashMap<String, ScriptCodeBlock>();
  {
    int i = 0;
    mscbMethods.put("3818776725665950363", new SCB(i++));
  }
  @Override
  @NotNull
  public ScriptCodeBlock getScriptCodeBlock(@NotNull QueryKey identity) {
    ScriptCodeBlock query = identity.forTemplateNode(mscbMethods);
    return (query != null ? query : super.getScriptCodeBlock(identity));
  }
  private static class SCB implements ScriptCodeBlock {
    private final int methodKey;
    public SCB(int methodKey) {
      this.methodKey = methodKey;
    }
    @Override
    public void invoke(MappingScriptContext ctx) throws GenerationFailureException {
      switch (methodKey) {
        case 0:
          QueriesGenerated.mappingScript_CodeBlock_1(ctx);
          return;
        default:
          throw new GenerationFailureException(String.format("There's no code block with method index %d ", methodKey));
      }
    }
  }
  private final Map<String, MapConfigurationCondition> mccMethods = new HashMap<String, MapConfigurationCondition>();
  {
    int i = 0;
    mccMethods.put("3818776725665950330", new MCC(i++));
  }
  @Override
  @NotNull
  public MapConfigurationCondition getMapConfigurationCondition(@NotNull QueryKey identity) {
    MapConfigurationCondition query = identity.forTemplateNode(mccMethods);
    return (query != null ? query : super.getMapConfigurationCondition(identity));
  }
  private static class MCC implements MapConfigurationCondition {
    private final int methodKey;
    public MCC(int methodKey) {
      this.methodKey = methodKey;
    }
    @Override
    public boolean check(TemplateQueryContext ctx) throws GenerationFailureException {
      switch (methodKey) {
        case 0:
          return QueriesGenerated.mc_Condition_0(ctx);
        default:
          throw new GenerationFailureException(String.format("Inconsistent QueriesGenerated: there's no condition method for map configuration %s (key: #%d)", ctx.getTemplateReference(), methodKey));
      }
    }
  }

  private static final class CONCEPTS {
    /*package*/ static final SConcept BoundedContext$RF = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x49ba7df3e302f916L, "CQRS.structure.BoundedContext");
  }
}
