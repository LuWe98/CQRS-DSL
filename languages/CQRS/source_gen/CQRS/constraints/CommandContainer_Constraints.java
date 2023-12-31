package CQRS.constraints;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.base.BaseConstraintsDescriptor;
import jetbrains.mps.smodel.runtime.base.BasePropertyConstraintsDescriptor;
import jetbrains.mps.smodel.runtime.ConstraintsDescriptor;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import org.jetbrains.mps.openapi.language.SEnumerationLiteral;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SEnumOperations;
import CQRS.behavior.IComponentWithRepositoryReferences__BehaviorDescriptor;
import java.util.Objects;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import CQRS.behavior.IComponentWithNamePlaceholder__BehaviorDescriptor;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import java.util.Map;
import org.jetbrains.mps.openapi.language.SProperty;
import jetbrains.mps.smodel.runtime.PropertyConstraintsDescriptor;
import java.util.HashMap;
import org.jetbrains.mps.openapi.language.SConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SContainmentLink;

public class CommandContainer_Constraints extends BaseConstraintsDescriptor {
  public CommandContainer_Constraints() {
    super(CONCEPTS.CommandContainer$3C);
  }

  public static class Type_Property extends BasePropertyConstraintsDescriptor {
    public Type_Property(ConstraintsDescriptor container) {
      super(PROPS.type$SAFo, container, false, true, false);
    }
    @Override
    public void setPropertyValue(SNode node, Object propertyValue) {
      staticSetPropertyValue(node, SPropertyOperations.castEnummember(propertyValue));
    }
    private static void staticSetPropertyValue(SNode node, SEnumerationLiteral propertyValue) {
      SEnumerationLiteral previousValue = SPropertyOperations.getEnum(node, PROPS.type$SAFo);
      SPropertyOperations.setEnum(node, PROPS.type$SAFo, propertyValue);

      if (previousValue == propertyValue) {
        return;
      }

      if (SEnumOperations.isMember(propertyValue, 0x71e6ab63d0d883L)) {
        IComponentWithRepositoryReferences__BehaviorDescriptor.resetAndMergeChildRepositoryReferences_idd$u27T68WS.invoke(node);
        if (Objects.equals(SLinkOperations.getTarget(node, LINKS.nameWrapper$X65Q), null) && !(SPropertyOperations.getBoolean(node, PROPS.shouldDisplayAggregate$eU79))) {
          IComponentWithNamePlaceholder__BehaviorDescriptor.setName_id2RbvdOMpYd2.invoke(node, null);
        }
      }

      if (SEnumOperations.isMember(propertyValue, 0x71e6ab63d0d882L)) {
        if (!(Objects.equals(SLinkOperations.getTarget(node, LINKS.nameWrapper$X65Q), null))) {
          SNodeOperations.deleteNode(SLinkOperations.getTarget(node, LINKS.nameWrapper$X65Q));
        }
      }
    }
  }
  @Override
  protected Map<SProperty, PropertyConstraintsDescriptor> getSpecifiedProperties() {
    Map<SProperty, PropertyConstraintsDescriptor> properties = new HashMap<SProperty, PropertyConstraintsDescriptor>();
    properties.put(PROPS.type$SAFo, new Type_Property(this));
    return properties;
  }

  private static final class CONCEPTS {
    /*package*/ static final SConcept CommandContainer$3C = MetaAdapterFactory.getConcept(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x2a075c454595567L, "CQRS.structure.CommandContainer");
  }

  private static final class PROPS {
    /*package*/ static final SProperty type$SAFo = MetaAdapterFactory.getProperty(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x2a075c454595567L, 0x71e6ab63d0d9fcL, "type");
    /*package*/ static final SProperty shouldDisplayAggregate$eU79 = MetaAdapterFactory.getProperty(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x2a075c454595567L, 0x507f100ee0ae3ec7L, "shouldDisplayAggregate");
  }

  private static final class LINKS {
    /*package*/ static final SContainmentLink nameWrapper$X65Q = MetaAdapterFactory.getContainmentLink(0xfe04f903cef2451dL, 0x9401426cad0a8857L, 0x71e6ab661db3f2L, 0x2dcb7cdd32004e34L, "nameWrapper");
  }
}
