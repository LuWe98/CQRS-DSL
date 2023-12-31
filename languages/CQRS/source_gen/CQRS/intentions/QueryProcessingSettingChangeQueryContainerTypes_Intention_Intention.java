package CQRS.intentions;

/*Generated by MPS */

import jetbrains.mps.intentions.AbstractIntentionDescriptor;
import jetbrains.mps.openapi.intentions.IntentionFactory;
import java.util.Collection;
import jetbrains.mps.openapi.intentions.IntentionExecutable;
import jetbrains.mps.openapi.intentions.Kind;
import jetbrains.mps.smodel.SNodePointer;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.openapi.editor.EditorContext;
import java.util.Collections;
import jetbrains.mps.intentions.AbstractIntentionExecutable;
import jetbrains.mps.internal.collections.runtime.Sequence;
import CQRS.behavior.BoundedContext__BehaviorDescriptor;
import CQRS.behavior.IElementOfBoundedContext__BehaviorDescriptor;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import CQRS.behavior.QueryContainer__BehaviorDescriptor;
import jetbrains.mps.internal.collections.runtime.IVisitor;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.openapi.intentions.IntentionDescriptor;
import org.jetbrains.mps.openapi.language.SProperty;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public final class QueryProcessingSettingChangeQueryContainerTypes_Intention_Intention extends AbstractIntentionDescriptor implements IntentionFactory {
  private Collection<IntentionExecutable> myCachedExecutable;

  public QueryProcessingSettingChangeQueryContainerTypes_Intention_Intention() {
    super(Kind.ERROR, false, new SNodePointer("r:ff36ef3b-9652-473a-8811-c1d101cc2db3(CQRS.intentions)", "6242459752545422524"));
  }

  @Override
  public String getPresentation() {
    return "QueryProcessingSettingChangeQueryContainerTypes_Intention";
  }

  @Override
  public boolean isSurroundWith() {
    return false;
  }

  public Collection<IntentionExecutable> instances(final SNode node, final EditorContext context) {
    if (myCachedExecutable == null) {
      myCachedExecutable = Collections.<IntentionExecutable>singletonList(new IntentionImplementation());
    }
    return myCachedExecutable;
  }
  /*package*/ final class IntentionImplementation extends AbstractIntentionExecutable {
    public IntentionImplementation() {
    }

    @Override
    public String getDescription(final SNode node, final EditorContext editorContext) {
      return "Transform all 'query services' and 'query handler' into 'query blocks'.";
    }

    @Override
    public void execute(final SNode node, final EditorContext editorContext) {
      Sequence.fromIterable(BoundedContext__BehaviorDescriptor.queryContainers_id3DbZR$O3FhA.invoke(IElementOfBoundedContext__BehaviorDescriptor.boundedContext_id3VGLvhEO$iA.invoke(node))).where(new IWhereFilter<SNode>() {
        public boolean accept(SNode it) {
          return !((boolean) QueryContainer__BehaviorDescriptor.isQueriesBlock_id6gxxZVtebNx.invoke(it));
        }
      }).visitAll(new IVisitor<SNode>() {
        public void visit(SNode it) {
          SPropertyOperations.setEnum(it, PROPS.type$7YBQ, 0x1f11be867ad316e7L, "QueryBlock");
        }
      });
    }

    @Override
    public boolean isApplicable(final SNode node, final EditorContext editorContext) {
      if (!(isApplicableToNode(node, editorContext))) {
        return false;
      }
      return true;
    }

    private boolean isApplicableToNode(final SNode node, final EditorContext editorContext) {
      return SPropertyOperations.getBoolean(node, PROPS.useProcessingImplementation$lPWW) && Sequence.fromIterable(BoundedContext__BehaviorDescriptor.queryContainers_id3DbZR$O3FhA.invoke(IElementOfBoundedContext__BehaviorDescriptor.boundedContext_id3VGLvhEO$iA.invoke(node))).any(new IWhereFilter<SNode>() {
        public boolean accept(SNode it) {
          return !((boolean) QueryContainer__BehaviorDescriptor.isQueriesBlock_id6gxxZVtebNx.invoke(it));
        }
      });
    }


    @Override
    public IntentionDescriptor getDescriptor() {
      return QueryProcessingSettingChangeQueryContainerTypes_Intention_Intention.this;
    }

  }

  private static final class PROPS {
    /*package*/ static final SProperty type$7YBQ = MetaAdapterFactory.getProperty(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x3a4bff7934079ff4L, 0x1f11be867ad316efL, "type");
    /*package*/ static final SProperty useProcessingImplementation$lPWW = MetaAdapterFactory.getProperty(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x56a1ac122acef4d6L, 0x56a1ac122aebcd3fL, "useProcessingImplementation");
  }
}
