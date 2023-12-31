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
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SEnumOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.openapi.intentions.IntentionDescriptor;
import jetbrains.mps.lang.smodel.EnumerationLiteralsIndex;
import org.jetbrains.mps.openapi.language.SProperty;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public final class ToggleDerivationRuleUsage_Intention extends AbstractIntentionDescriptor implements IntentionFactory {
  private Collection<IntentionExecutable> myCachedExecutable;

  public ToggleDerivationRuleUsage_Intention() {
    super(Kind.NORMAL, false, new SNodePointer("r:ff36ef3b-9652-473a-8811-c1d101cc2db3(CQRS.intentions)", "757976835738407117"));
  }

  @Override
  public String getPresentation() {
    return "ToggleDerivationRuleUsage";
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
      return "Make " + ((SEnumOperations.isMember(SPropertyOperations.getEnum(node, PROPS.usage$2GTC), 0x5d9cf3447c0f9e33L) ? "implicit" : "explicit"));
    }

    @Override
    public void execute(final SNode node, final EditorContext editorContext) {
      switch (enumSwitchIndex.indexNullable(SPropertyOperations.getEnum(node, PROPS.usage$2GTC))) {
        case 0:
          SPropertyOperations.setEnum(node, PROPS.usage$2GTC, 0x5d9cf3447c0f9e32L, "Implicit");
          break;
        case 1:
          SPropertyOperations.setEnum(node, PROPS.usage$2GTC, 0x5d9cf3447c0f9e33L, "Explicit");
          break;
      }
    }

    @Override
    public boolean isApplicable(final SNode node, final EditorContext editorContext) {
      return true;
    }



    @Override
    public IntentionDescriptor getDescriptor() {
      return ToggleDerivationRuleUsage_Intention.this;
    }

  }
  private static final EnumerationLiteralsIndex enumSwitchIndex = EnumerationLiteralsIndex.build(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x5d9cf3447c0f9e31L, 0x5d9cf3447c0f9e33L, 0x5d9cf3447c0f9e32L);

  private static final class PROPS {
    /*package*/ static final SProperty usage$2GTC = MetaAdapterFactory.getProperty(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x12da95fb99e0f983L, 0x5d9cf3447c0f9e36L, "usage");
  }
}
