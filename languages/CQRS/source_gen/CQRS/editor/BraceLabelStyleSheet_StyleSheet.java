package CQRS.editor;

/*Generated by MPS */

import jetbrains.mps.editor.runtime.style.AbstractStyleClass;
import jetbrains.mps.openapi.editor.EditorContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.editor.runtime.descriptor.EditorBuilderEnvironment;
import jetbrains.mps.openapi.editor.style.Style;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.nodeEditor.MPSFonts;

public class BraceLabelStyleSheet_StyleSheet {
  public static class BodyBracesMatchingLabelStyleClass extends AbstractStyleClass {
    public BodyBracesMatchingLabelStyleClass(EditorContext editorContext, SNode node) {
      super(editorContext, node);
    }
    public BodyBracesMatchingLabelStyleClass(EditorBuilderEnvironment builderEnv) {
      super(builderEnv);
    }

    @Override
    public void apply(Style style, EditorCell editorCell) {
      style.set(StyleAttributes.MATCHING_LABEL, "body-braces");
    }

  }
  public static class ConstructorBracesMatchingLabelStyleClass extends AbstractStyleClass {
    public ConstructorBracesMatchingLabelStyleClass(EditorContext editorContext, SNode node) {
      super(editorContext, node);
    }
    public ConstructorBracesMatchingLabelStyleClass(EditorBuilderEnvironment builderEnv) {
      super(builderEnv);
    }

    @Override
    public void apply(Style style, EditorCell editorCell) {
      style.set(StyleAttributes.MATCHING_LABEL, "constructor-braces");
    }

  }
  public static class TypeBracesMatchingLabelStyleClass extends AbstractStyleClass {
    public TypeBracesMatchingLabelStyleClass(EditorContext editorContext, SNode node) {
      super(editorContext, node);
    }
    public TypeBracesMatchingLabelStyleClass(EditorBuilderEnvironment builderEnv) {
      super(builderEnv);
    }

    @Override
    public void apply(Style style, EditorCell editorCell) {
      style.set(StyleAttributes.MATCHING_LABEL, "type-braces");
    }

  }
  public static class MethodDeclarationBracesStyleClass extends AbstractStyleClass {
    public MethodDeclarationBracesStyleClass(EditorContext editorContext, SNode node) {
      super(editorContext, node);
    }
    public MethodDeclarationBracesStyleClass(EditorBuilderEnvironment builderEnv) {
      super(builderEnv);
    }

    @Override
    public void apply(Style style, EditorCell editorCell) {
      style.set(StyleAttributes.MATCHING_LABEL, "method-braces");
    }

  }
  public static class CommaSeparatorStyleClass extends AbstractStyleClass {
    public CommaSeparatorStyleClass(EditorContext editorContext, SNode node) {
      super(editorContext, node);
    }
    public CommaSeparatorStyleClass(EditorBuilderEnvironment builderEnv) {
      super(builderEnv);
    }

    @Override
    public void apply(Style style, EditorCell editorCell) {
      style.set(StyleAttributes.INDENT_LAYOUT_NO_WRAP, true);
      style.set(StyleAttributes.FONT_STYLE, MPSFonts.PLAIN);
      style.set(StyleAttributes.PUNCTUATION_LEFT, true);
    }

  }
  public static class AngleBracketStyleClass extends AbstractStyleClass {
    public AngleBracketStyleClass(EditorContext editorContext, SNode node) {
      super(editorContext, node);
    }
    public AngleBracketStyleClass(EditorBuilderEnvironment builderEnv) {
      super(builderEnv);
    }

    @Override
    public void apply(Style style, EditorCell editorCell) {
      style.set(StyleAttributes.MATCHING_LABEL, "angle-bracket");
      style.set(StyleAttributes.INDENT_LAYOUT_NO_WRAP, true);
      style.set(StyleAttributes.FONT_STYLE, MPSFonts.BOLD);
    }

  }
  public static class RightAngleBracketStyleClass extends AbstractStyleClass {
    public RightAngleBracketStyleClass(EditorContext editorContext, SNode node) {
      super(editorContext, node);
    }
    public RightAngleBracketStyleClass(EditorBuilderEnvironment builderEnv) {
      super(builderEnv);
    }

    @Override
    public void apply(Style style, EditorCell editorCell) {
      new AngleBracketStyleClass(this).apply(style, editorCell);
      style.set(StyleAttributes.PUNCTUATION_LEFT, true);
    }

  }
  public static class LeftAngleBracketStyleClass extends AbstractStyleClass {
    public LeftAngleBracketStyleClass(EditorContext editorContext, SNode node) {
      super(editorContext, node);
    }
    public LeftAngleBracketStyleClass(EditorBuilderEnvironment builderEnv) {
      super(builderEnv);
    }

    @Override
    public void apply(Style style, EditorCell editorCell) {
      new AngleBracketStyleClass(this).apply(style, editorCell);
      style.set(StyleAttributes.PUNCTUATION_RIGHT, true);
    }

  }
  public static class LeftAngleBracketAfterNameStyleClass extends AbstractStyleClass {
    public LeftAngleBracketAfterNameStyleClass(EditorContext editorContext, SNode node) {
      super(editorContext, node);
    }
    public LeftAngleBracketAfterNameStyleClass(EditorBuilderEnvironment builderEnv) {
      super(builderEnv);
    }

    @Override
    public void apply(Style style, EditorCell editorCell) {
      new LeftAngleBracketStyleClass(this).apply(style, editorCell);
      style.set(StyleAttributes.PUNCTUATION_LEFT, true);
    }

  }
  public static class BraceStyleClass extends AbstractStyleClass {
    public BraceStyleClass(EditorContext editorContext, SNode node) {
      super(editorContext, node);
    }
    public BraceStyleClass(EditorBuilderEnvironment builderEnv) {
      super(builderEnv);
    }

    @Override
    public void apply(Style style, EditorCell editorCell) {
      style.set(StyleAttributes.MATCHING_LABEL, "brace");
      style.set(StyleAttributes.INDENT_LAYOUT_NO_WRAP, true);
      style.set(StyleAttributes.FONT_STYLE, MPSFonts.PLAIN);
    }

  }
  public static class LeftBraceStyleClass extends AbstractStyleClass {
    public LeftBraceStyleClass(EditorContext editorContext, SNode node) {
      super(editorContext, node);
    }
    public LeftBraceStyleClass(EditorBuilderEnvironment builderEnv) {
      super(builderEnv);
    }

    @Override
    public void apply(Style style, EditorCell editorCell) {
      new BraceStyleClass(this).apply(style, editorCell);
      style.set(StyleAttributes.PUNCTUATION_RIGHT, true);
    }

  }
  public static class LeftBraceAfterNameStyleClass extends AbstractStyleClass {
    public LeftBraceAfterNameStyleClass(EditorContext editorContext, SNode node) {
      super(editorContext, node);
    }
    public LeftBraceAfterNameStyleClass(EditorBuilderEnvironment builderEnv) {
      super(builderEnv);
    }

    @Override
    public void apply(Style style, EditorCell editorCell) {
      new LeftBraceStyleClass(this).apply(style, editorCell);
      style.set(StyleAttributes.PUNCTUATION_LEFT, true);
    }

  }
  public static class RightBraceStyleClass extends AbstractStyleClass {
    public RightBraceStyleClass(EditorContext editorContext, SNode node) {
      super(editorContext, node);
    }
    public RightBraceStyleClass(EditorBuilderEnvironment builderEnv) {
      super(builderEnv);
    }

    @Override
    public void apply(Style style, EditorCell editorCell) {
      new BraceStyleClass(this).apply(style, editorCell);
      style.set(StyleAttributes.PUNCTUATION_LEFT, true);
    }

  }
  public static class SquareBraceStyleClass extends AbstractStyleClass {
    public SquareBraceStyleClass(EditorContext editorContext, SNode node) {
      super(editorContext, node);
    }
    public SquareBraceStyleClass(EditorBuilderEnvironment builderEnv) {
      super(builderEnv);
    }

    @Override
    public void apply(Style style, EditorCell editorCell) {
      style.set(StyleAttributes.MATCHING_LABEL, "square-brace");
      style.set(StyleAttributes.INDENT_LAYOUT_NO_WRAP, true);
      style.set(StyleAttributes.FONT_STYLE, MPSFonts.PLAIN);
    }

  }
  public static class LeftSquareBraceStyleClass extends AbstractStyleClass {
    public LeftSquareBraceStyleClass(EditorContext editorContext, SNode node) {
      super(editorContext, node);
    }
    public LeftSquareBraceStyleClass(EditorBuilderEnvironment builderEnv) {
      super(builderEnv);
    }

    @Override
    public void apply(Style style, EditorCell editorCell) {
      new SquareBraceStyleClass(this).apply(style, editorCell);
      style.set(StyleAttributes.PUNCTUATION_RIGHT, true);
    }

  }
  public static class LeftSquareBraceAfterNameStyleClass extends AbstractStyleClass {
    public LeftSquareBraceAfterNameStyleClass(EditorContext editorContext, SNode node) {
      super(editorContext, node);
    }
    public LeftSquareBraceAfterNameStyleClass(EditorBuilderEnvironment builderEnv) {
      super(builderEnv);
    }

    @Override
    public void apply(Style style, EditorCell editorCell) {
      new LeftSquareBraceStyleClass(this).apply(style, editorCell);
      style.set(StyleAttributes.PUNCTUATION_LEFT, true);
    }

  }
  public static class RightSquareBraceStyleClass extends AbstractStyleClass {
    public RightSquareBraceStyleClass(EditorContext editorContext, SNode node) {
      super(editorContext, node);
    }
    public RightSquareBraceStyleClass(EditorBuilderEnvironment builderEnv) {
      super(builderEnv);
    }

    @Override
    public void apply(Style style, EditorCell editorCell) {
      new SquareBraceStyleClass(this).apply(style, editorCell);
      style.set(StyleAttributes.PUNCTUATION_LEFT, true);
    }

  }
  public static class BodyBraceStyleClass extends AbstractStyleClass {
    public BodyBraceStyleClass(EditorContext editorContext, SNode node) {
      super(editorContext, node);
    }
    public BodyBraceStyleClass(EditorBuilderEnvironment builderEnv) {
      super(builderEnv);
    }

    @Override
    public void apply(Style style, EditorCell editorCell) {
      style.set(StyleAttributes.MATCHING_LABEL, "body-brace");
      style.set(StyleAttributes.INDENT_LAYOUT_NO_WRAP, true);
      style.set(StyleAttributes.FONT_STYLE, MPSFonts.PLAIN);
    }

  }
}
