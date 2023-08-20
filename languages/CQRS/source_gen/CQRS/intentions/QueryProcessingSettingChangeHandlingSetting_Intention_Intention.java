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
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import CQRS.behavior.QueryGenerationSettings__BehaviorDescriptor;
import CQRS.behavior.QueryProcessingSetting__BehaviorDescriptor;
import CQRS.behavior.QueryHandlingSetting__BehaviorDescriptor;
import jetbrains.mps.openapi.intentions.IntentionDescriptor;
import org.jetbrains.mps.openapi.language.SProperty;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public final class QueryProcessingSettingChangeHandlingSetting_Intention_Intention extends AbstractIntentionDescriptor implements IntentionFactory {
  private Collection<IntentionExecutable> myCachedExecutable;

  public QueryProcessingSettingChangeHandlingSetting_Intention_Intention() {
    super(Kind.ERROR, false, new SNodePointer("r:ff36ef3b-9652-473a-8811-c1d101cc2db3(CQRS.intentions)", "6242459752546080416"));
  }

  @Override
  public String getPresentation() {
    return "QueryProcessingSettingChangeHandlingSetting_Intention";
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
      return "Change query 'handling' to 'separated'";
    }

    @Override
    public void execute(final SNode node, final EditorContext editorContext) {
      SPropertyOperations.setEnum(QueryGenerationSettings__BehaviorDescriptor.getQueryHandlingSetting_id5qxF18ESB_u.invoke(QueryProcessingSetting__BehaviorDescriptor.getQuerySettings_id5qxF18F4gHy.invoke(node)), PROPS.handlingType$_h8g, 0x6165532e273c8c1L, "Separated");
    }

    @Override
    public boolean isApplicable(final SNode node, final EditorContext editorContext) {
      if (!(isApplicableToNode(node, editorContext))) {
        return false;
      }
      return true;
    }

    private boolean isApplicableToNode(final SNode node, final EditorContext editorContext) {
      SNode querySettings = QueryProcessingSetting__BehaviorDescriptor.getQuerySettings_id5qxF18F4gHy.invoke(node);
      return SPropertyOperations.getBoolean(node, PROPS.useProcessingImplementation$lPWW) && (boolean) QueryGenerationSettings__BehaviorDescriptor.isQueryHandlingSettingDefined_id5qxF18ESB_m.invoke(querySettings) && (boolean) QueryHandlingSetting__BehaviorDescriptor.isGroupedHandling_id5qxF18FbHLJ.invoke(QueryGenerationSettings__BehaviorDescriptor.getQueryHandlingSetting_id5qxF18ESB_u.invoke(querySettings));
    }


    @Override
    public IntentionDescriptor getDescriptor() {
      return QueryProcessingSettingChangeHandlingSetting_Intention_Intention.this;
    }

  }

  private static final class PROPS {
    /*package*/ static final SProperty handlingType$_h8g = MetaAdapterFactory.getProperty(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x56a1ac122ac5a076L, 0x56a1ac122acede1eL, "handlingType");
    /*package*/ static final SProperty useProcessingImplementation$lPWW = MetaAdapterFactory.getProperty(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x56a1ac122acef4d6L, 0x56a1ac122aebcd3fL, "useProcessingImplementation");
  }
}