package language_name.lang.strategies;

import org.strategoxt.lang.Strategy;
import org.spoofax.interpreter.terms.IStrategoTerm;
import org.strategoxt.lang.Context;
import org.example.language_name.EditorServices;

public class editor_analyze_0_0 extends Strategy{
  public static final editor_analyze_0_0 instance = new editor_analyze_0_0();

  @Override
  public IStrategoTerm invoke(Context context, IStrategoTerm current) {
    return EditorServices.editorAnalyze(context, current);
  }
}
