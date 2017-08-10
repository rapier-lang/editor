import 'package:js/js_util.dart';
import 'package:rapier_editor/monaco.dart' as monaco;

final monaco.IMonarchLanguage rapierLanguage = new monaco.IMonarchLanguage(
  brackets: [
    new monaco.IMonarchLanguageBracket(open: '{', close: '}', token: 'delimiter.curly'),
  ],
  tokenizer: jsify(
    <String, List<monaco.IMonarchLanguageRule>>{
      'root': [
        new monaco.IMonarchLanguageRule(
          regex: r'//[^\n]*',
          action: new monaco.IMonarchLanguageAction(
            token: 'comment',
          ),
        ),
        new monaco.IMonarchLanguageRule(
          regex: '-?[0-9]+(\\.[0-9]+)?((E|e)[0-9]+)?',
          action: new monaco.IMonarchLanguageAction(
            token: 'number',
          ),
        ),
        new monaco.IMonarchLanguageRule(
          regex: '"(([^"\n])|(\\"))*"',
          action: new monaco.IMonarchLanguageAction(
            token: 'string',
          ),
        ),
        new monaco.IMonarchLanguageRule(
          regex: "'(([^'\n])|(\\'))*'",
          action: new monaco.IMonarchLanguageAction(
            token: 'string',
          ),
        ),
        new monaco.IMonarchLanguageRule(
          regex:
              '\\b(fn|struct|try|catch|if|else|while|throw|for|return|import|as|new|var)\\b',
          action: new monaco.IMonarchLanguageAction(
            token: 'keyword',
          ),
        ),
        new monaco.IMonarchLanguageRule(
          regex: '\\b(([A-Z][A-Za-z0-9_]*)|(string|num|void|bool))\\b',
          action: new monaco.IMonarchLanguageAction(
            token: 'type.identifier',
          ),
        ),
      ],
    },
  ),
);
