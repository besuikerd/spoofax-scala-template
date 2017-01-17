package org.example.language_name

import org.metaborg.scalaterms.spoofax._
import org.strategoxt.lang.Context

object EditorServices extends EditorServices{
  override def editorHover(focusedStrategyInput: FocusedStrategyInput)(implicit context: Context): Option[HoverResult] =
    Some(HoverResult(s"Hovering: ${focusedStrategyInput.node}"))

  override def editorAnalyze(generalStrategyInput: GeneralStrategyInput)(implicit context: Context): AnalysisResult = AnalysisResult(generalStrategyInput.ast, Seq.empty, Seq.empty, Seq.empty)

  override def editorResolve(focusedStrategyInput: FocusedStrategyInput)(implicit context: Context): Option[ResolutionResult] = None
}
