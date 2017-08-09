@JS()
library monaco;

import "package:js/js.dart";
import "package:func/func.dart";
import "package:meta/meta.dart";
import "dart:html" show KeyboardEvent, HtmlElement, MouseEvent, Element;

/// !-----------------------------------------------------------
/// Copyright (c) Microsoft Corporation. All rights reserved.
/// Type definitions for monaco-editor v0.9.0
/// Released under the MIT license
/// -----------------------------------------------------------
/// ---------------------------------------------------------------------------------------------
/// Copyright (c) Microsoft Corporation. All rights reserved.
/// Licensed under the MIT License. See License.txt in the project root for license information.
/// --------------------------------------------------------------------------------------------

// Module monaco
@anonymous
@JS()
abstract class Thenable<T> {
  /// Attaches callbacks for the resolution and/or rejection of the Promise.
  /*external Thenable<TResult> then<TResult>([TResult|Thenable<TResult> onfulfilled(T value), TResult|Thenable<TResult> onrejected(dynamic reason)]);*/
  /*external Thenable<TResult> then<TResult>([TResult|Thenable<TResult> onfulfilled(T value), void onrejected(dynamic reason)]);*/
  external Thenable<dynamic/*=TResult*/ > then/*<TResult>*/(
      [dynamic /*TResult|Thenable<TResult>*/ onfulfilled(T value),
      Function /*Func1<dynamic, TResult|Thenable<TResult>>|VoidFunc1<dynamic>*/ onrejected]);
}

@anonymous
@JS()
abstract class IDisposable {
  external void dispose();
}

typedef IDisposable IEvent<T>(dynamic listener(T e), [dynamic thisArg]);

/// A helper that allows to emit and listen to typed events
@JS("monaco.Emitter")
class Emitter<T> {
  // @Ignore
  Emitter.fakeConstructor$();
  external factory Emitter();
  external IEvent<T> get event;
  external set event(IEvent<T> v);
  external void fire([T event]);
  external void dispose();
}

@JS("monaco.Severity")
class Severity {
  external static num get Ignore;
  external static num get Info;
  external static num get Warning;
  external static num get Error;
}

/// The value callback to complete a promise
typedef void TValueCallback<T>(T value);
typedef dynamic ProgressCallback(dynamic progress);

/// A Promise implementation that supports progress and cancelation.
@JS("monaco.Promise")
class Promise<V> {
  // @Ignore
  Promise.fakeConstructor$();
  external factory Promise(
      void init(TValueCallback<V> complete, void error(dynamic err),
          ProgressCallback progress),
      [dynamic oncancel]);
  /*external Promise<U> then<U>([Promise<U> success(V value), Promise<U> error(dynamic err), ProgressCallback progress]);*/
  /*external Promise<U> then<U>([Promise<U> success(V value), Promise<U>|U error(dynamic err), ProgressCallback progress]);*/
  /*external Promise<U> then<U>([Promise<U> success(V value), U error(dynamic err), ProgressCallback progress]);*/
  /*external Promise<U> then<U>([Promise<U> success(V value), void error(dynamic err), ProgressCallback progress]);*/
  /*external Promise<U> then<U>([Promise<U>|U success(V value), Promise<U> error(dynamic err), ProgressCallback progress]);*/
  /*external Promise<U> then<U>([Promise<U>|U success(V value), Promise<U>|U error(dynamic err), ProgressCallback progress]);*/
  /*external Promise<U> then<U>([Promise<U>|U success(V value), U error(dynamic err), ProgressCallback progress]);*/
  /*external Promise<U> then<U>([Promise<U>|U success(V value), void error(dynamic err), ProgressCallback progress]);*/
  /*external Promise<U> then<U>([U success(V value), Promise<U> error(dynamic err), ProgressCallback progress]);*/
  /*external Promise<U> then<U>([U success(V value), Promise<U>|U error(dynamic err), ProgressCallback progress]);*/
  /*external Promise<U> then<U>([U success(V value), U error(dynamic err), ProgressCallback progress]);*/
  /*external Promise<U> then<U>([U success(V value), void error(dynamic err), ProgressCallback progress]);*/
  external Promise<dynamic/*=U*/ > then/*<U>*/(
      [Function /*Func1<V, Promise<U>>|Func1<V, Promise<U>|U>|Func1<V, U>*/ success,
      Function /*Func1<dynamic, Promise<U>>|Func1<dynamic, Promise<U>|U>|Func1<dynamic, U>|VoidFunc1<dynamic>*/ error,
      ProgressCallback progress]);
  external void done(
      [void success(V value),
      dynamic error(dynamic err),
      ProgressCallback progress]);
  external void cancel();
  /*external static Promise<Null> JS$as(Null value);*/
  /*external static Promise<dynamic> JS$as(dynamic value);*/
  /*external static Promise<ValueType> JS$as<ValueType>(Promise<ValueType> value);*/
  /*external static Thenable<ValueType> JS$as<ValueType>(Thenable<ValueType> value);*/
  /*external static Promise<ValueType> JS$as<ValueType>(ValueType value);*/
  external dynamic /*Promise<Null>|Promise<dynamic>|Promise<ValueType>|Thenable<ValueType>*/ JS$as/*<ValueType>*/(
      dynamic /*dynamic|Promise<ValueType>|Thenable<ValueType>|ValueType*/ value);
  external static bool /*value is Thenable<dynamic>*/ JS$is(dynamic value);
  external static Promise<Null> timeout(num delay);
  /*external static Promise<List<ValueType>> join<ValueType>(List<Promise<ValueType>> promises);*/
  /*external static Thenable<List<ValueType>> join<ValueType>(List<Thenable<ValueType>> promises);*/
  /*external static Promise<JSMap of <String,ValueType>> join<ValueType>(JSMap of <String,Promise<ValueType>> promises);*/
  external dynamic /*Promise<List<ValueType>>|Thenable<List<ValueType>>|Promise<JSMap of <String,ValueType>>*/ join/*<ValueType>*/(
      dynamic /*List<Promise<ValueType>>|List<Thenable<ValueType>>|JSMap of <String,Promise<ValueType>>*/ promises);
  external static Promise<
          dynamic /*{ key: string; value: Promise<ValueType>; }*/ >
      any/*<ValueType>*/(List<Promise<dynamic/*=ValueType*/ >> promises);
  /*external static Promise<ValueType> wrap<ValueType>(Thenable<ValueType> value);*/
  /*external static Promise<ValueType> wrap<ValueType>(ValueType value);*/
  external Promise<dynamic/*=ValueType*/ > wrap/*<ValueType>*/(
      dynamic /*Thenable<ValueType>|ValueType*/ value);
  external static Promise<dynamic/*=ValueType*/ > wrapError/*<ValueType>*/(
      Error error);
}

@JS("monaco.CancellationTokenSource")
class CancellationTokenSource {
  // @Ignore
  CancellationTokenSource.fakeConstructor$();
  external CancellationToken get token;
  external set token(CancellationToken v);
  external void cancel();
  external void dispose();
}

@anonymous
@JS()
abstract class CancellationToken {
  external bool get isCancellationRequested;
  external set isCancellationRequested(bool v);

  /// An event emitted when cancellation is requested
  /// @event
  external IEvent<dynamic> get onCancellationRequested;
  external set onCancellationRequested(IEvent<dynamic> v);
  external factory CancellationToken(
      {bool isCancellationRequested, IEvent<dynamic> onCancellationRequested});
}

/// Uniform Resource Identifier (Uri) http://tools.ietf.org/html/rfc3986.
/// This class is a simple parser which creates the basic component paths
/// (http://tools.ietf.org/html/rfc3986#section-3) with minimal validation
/// and encoding.
/// foo://example.com:8042/over/there?name=ferret#nose
/// \_/   \______________/\_________/ \_________/ \__/
/// |           |            |            |        |
/// scheme     authority       path        query   fragment
/// |   _____________________|__
/// / \ /                        \
/// urn:example:animal:ferret:nose
@JS("monaco.Uri")
class Uri {
  // @Ignore
  Uri.fakeConstructor$();
  external static bool /*thing is Uri*/ isUri(dynamic thing);
  external factory Uri();

  /// scheme is the 'http' part of 'http://www.msft.com/some/path?query#fragment'.
  /// The part before the first colon.
  external String get scheme;
  external set scheme(String v);

  /// authority is the 'www.msft.com' part of 'http://www.msft.com/some/path?query#fragment'.
  /// The part between the first double slashes and the next slash.
  external String get authority;
  external set authority(String v);

  /// path is the '/some/path' part of 'http://www.msft.com/some/path?query#fragment'.
  external String get path;
  external set path(String v);

  /// query is the 'query' part of 'http://www.msft.com/some/path?query#fragment'.
  external String get query;
  external set query(String v);

  /// fragment is the 'fragment' part of 'http://www.msft.com/some/path?query#fragment'.
  external String get fragment;
  external set fragment(String v);

  /// Returns a string representing the corresponding file system path of this Uri.
  /// Will handle UNC paths and normalize windows drive letters to lower-case. Also
  /// uses the platform specific path separator. Will *not* validate the path for
  /// invalid characters and semantics. Will *not* look at the scheme of this Uri.
  external String get fsPath;
  external set fsPath(String v);
  external Uri JS$with(
      dynamic
          /*{
            scheme?: string;
            authority?: string;
            path?: string;
            query?: string;
            fragment?: string;
        }*/
          change);
  external static Uri parse(String value);
  external static Uri file(String path);
  external static Uri from(
      dynamic
          /*{
            scheme?: string;
            authority?: string;
            path?: string;
            query?: string;
            fragment?: string;
        }*/
          components);
  external String toString([bool skipEncoding]);
  external dynamic toJSON();
  external static Uri revive(dynamic data);
}

/// Virtual Key Codes, the value does not hold any inherent meaning.
/// Inspired somewhat from https://msdn.microsoft.com/en-us/library/windows/desktop/dd375731(v=vs.85).aspx
/// But these are "more general", as they should work across browsers & OS`s.
@JS("monaco.KeyCode")
class KeyCode {
  external static num get

      /// Placed first to cover the 0 value of the enum.
      Unknown;
  external static num get Backspace;
  external static num get Tab;
  external static num get Enter;
  external static num get Shift;
  external static num get Ctrl;
  external static num get Alt;
  external static num get PauseBreak;
  external static num get CapsLock;
  external static num get Escape;
  external static num get Space;
  external static num get PageUp;
  external static num get PageDown;
  external static num get End;
  external static num get Home;
  external static num get LeftArrow;
  external static num get UpArrow;
  external static num get RightArrow;
  external static num get DownArrow;
  external static num get Insert;
  external static num get Delete;
  external static num get KEY_0;
  external static num get KEY_1;
  external static num get KEY_2;
  external static num get KEY_3;
  external static num get KEY_4;
  external static num get KEY_5;
  external static num get KEY_6;
  external static num get KEY_7;
  external static num get KEY_8;
  external static num get KEY_9;
  external static num get KEY_A;
  external static num get KEY_B;
  external static num get KEY_C;
  external static num get KEY_D;
  external static num get KEY_E;
  external static num get KEY_F;
  external static num get KEY_G;
  external static num get KEY_H;
  external static num get KEY_I;
  external static num get KEY_J;
  external static num get KEY_K;
  external static num get KEY_L;
  external static num get KEY_M;
  external static num get KEY_N;
  external static num get KEY_O;
  external static num get KEY_P;
  external static num get KEY_Q;
  external static num get KEY_R;
  external static num get KEY_S;
  external static num get KEY_T;
  external static num get KEY_U;
  external static num get KEY_V;
  external static num get KEY_W;
  external static num get KEY_X;
  external static num get KEY_Y;
  external static num get KEY_Z;
  external static num get Meta;
  external static num get ContextMenu;
  external static num get F1;
  external static num get F2;
  external static num get F3;
  external static num get F4;
  external static num get F5;
  external static num get F6;
  external static num get F7;
  external static num get F8;
  external static num get F9;
  external static num get F10;
  external static num get F11;
  external static num get F12;
  external static num get F13;
  external static num get F14;
  external static num get F15;
  external static num get F16;
  external static num get F17;
  external static num get F18;
  external static num get F19;
  external static num get NumLock;
  external static num get ScrollLock;
  external static num get

      /// Used for miscellaneous characters; it can vary by keyboard.
      /// For the US standard keyboard, the ';:' key
      US_SEMICOLON;
  external static num get

      /// For any country/region, the '+' key
      /// For the US standard keyboard, the '=+' key
      US_EQUAL;
  external static num get

      /// For any country/region, the ',' key
      /// For the US standard keyboard, the ',<' key
      US_COMMA;
  external static num get

      /// For any country/region, the '-' key
      /// For the US standard keyboard, the '-_' key
      US_MINUS;
  external static num get

      /// For any country/region, the '.' key
      /// For the US standard keyboard, the '.>' key
      US_DOT;
  external static num get

      /// Used for miscellaneous characters; it can vary by keyboard.
      /// For the US standard keyboard, the '/?' key
      US_SLASH;
  external static num get

      /// Used for miscellaneous characters; it can vary by keyboard.
      /// For the US standard keyboard, the '`~' key
      US_BACKTICK;
  external static num get

      /// Used for miscellaneous characters; it can vary by keyboard.
      /// For the US standard keyboard, the '[{' key
      US_OPEN_SQUARE_BRACKET;
  external static num get

      /// Used for miscellaneous characters; it can vary by keyboard.
      /// For the US standard keyboard, the '\|' key
      US_BACKSLASH;
  external static num get

      /// Used for miscellaneous characters; it can vary by keyboard.
      /// For the US standard keyboard, the ']}' key
      US_CLOSE_SQUARE_BRACKET;
  external static num get

      /// Used for miscellaneous characters; it can vary by keyboard.
      /// For the US standard keyboard, the ''"' key
      US_QUOTE;
  external static num get

      /// Used for miscellaneous characters; it can vary by keyboard.
      OEM_8;
  external static num get

      /// Either the angle bracket key or the backslash key on the RT 102-key keyboard.
      OEM_102;
  external static num get NUMPAD_0;
  external static num get NUMPAD_1;
  external static num get NUMPAD_2;
  external static num get NUMPAD_3;
  external static num get NUMPAD_4;
  external static num get NUMPAD_5;
  external static num get NUMPAD_6;
  external static num get NUMPAD_7;
  external static num get NUMPAD_8;
  external static num get NUMPAD_9;
  external static num get NUMPAD_MULTIPLY;
  external static num get NUMPAD_ADD;
  external static num get NUMPAD_SEPARATOR;
  external static num get NUMPAD_SUBTRACT;
  external static num get NUMPAD_DECIMAL;
  external static num get NUMPAD_DIVIDE;
  external static num get

      /// Cover all key codes when IME is processing input.
      KEY_IN_COMPOSITION;
  external static num get ABNT_C1;
  external static num get ABNT_C2;
  external static num get

      /// Placed last to cover the length of the enum.
      /// Please do not depend on this value!
      MAX_VALUE;
}

@JS("monaco.KeyMod")
class KeyMod {
  // @Ignore
  KeyMod.fakeConstructor$();
  external static num get CtrlCmd;
  external static set CtrlCmd(num v);
  external static num get Shift;
  external static set Shift(num v);
  external static num get Alt;
  external static set Alt(num v);
  external static num get WinCtrl;
  external static set WinCtrl(num v);
  external static num chord(num firstPart, num secondPart);
}

/// MarkedString can be used to render human readable text. It is either a markdown string
/// or a code-block that provides a language and a code snippet. Note that
/// markdown strings will be sanitized - that means html will be escaped.
/*export type MarkedString = string | {
        readonly language: string;
        readonly value: string;
    };*/
@anonymous
@JS()
abstract class IKeyboardEvent {
  external KeyboardEvent get browserEvent;
  external set browserEvent(KeyboardEvent v);
  external HtmlElement get target;
  external set target(HtmlElement v);
  external bool get ctrlKey;
  external set ctrlKey(bool v);
  external bool get shiftKey;
  external set shiftKey(bool v);
  external bool get altKey;
  external set altKey(bool v);
  external bool get metaKey;
  external set metaKey(bool v);
  external num /*enum KeyCode*/ get keyCode;
  external set keyCode(num /*enum KeyCode*/ v);
  external String get code;
  external set code(String v);
  external bool equals(num keybinding);
  external void preventDefault();
  external void stopPropagation();
}

@anonymous
@JS()
abstract class IMouseEvent {
  external MouseEvent get browserEvent;
  external set browserEvent(MouseEvent v);
  external bool get leftButton;
  external set leftButton(bool v);
  external bool get middleButton;
  external set middleButton(bool v);
  external bool get rightButton;
  external set rightButton(bool v);
  external HtmlElement get target;
  external set target(HtmlElement v);
  external num get detail;
  external set detail(num v);
  external num get posx;
  external set posx(num v);
  external num get posy;
  external set posy(num v);
  external bool get ctrlKey;
  external set ctrlKey(bool v);
  external bool get shiftKey;
  external set shiftKey(bool v);
  external bool get altKey;
  external set altKey(bool v);
  external bool get metaKey;
  external set metaKey(bool v);
  external num get timestamp;
  external set timestamp(num v);
  external void preventDefault();
  external void stopPropagation();
}

@anonymous
@JS()
abstract class IScrollEvent {
  external num get scrollTop;
  external set scrollTop(num v);
  external num get scrollLeft;
  external set scrollLeft(num v);
  external num get scrollWidth;
  external set scrollWidth(num v);
  external num get scrollHeight;
  external set scrollHeight(num v);
  external bool get scrollTopChanged;
  external set scrollTopChanged(bool v);
  external bool get scrollLeftChanged;
  external set scrollLeftChanged(bool v);
  external bool get scrollWidthChanged;
  external set scrollWidthChanged(bool v);
  external bool get scrollHeightChanged;
  external set scrollHeightChanged(bool v);
  external factory IScrollEvent(
      {num scrollTop,
      num scrollLeft,
      num scrollWidth,
      num scrollHeight,
      bool scrollTopChanged,
      bool scrollLeftChanged,
      bool scrollWidthChanged,
      bool scrollHeightChanged});
}

/// A position in the editor. This interface is suitable for serialization.
@anonymous
@JS()
abstract class IPosition {
  /// line number (starts at 1)
  external num get lineNumber;
  external set lineNumber(num v);

  /// column (the first character in a line is between column 1 and column 2)
  external num get column;
  external set column(num v);
  external factory IPosition({num lineNumber, num column});
}

/// A position in the editor.
@JS("monaco.Position")
class Position {
  // @Ignore
  Position.fakeConstructor$();

  /// line number (starts at 1)
  external num get lineNumber;
  external set lineNumber(num v);

  /// column (the first character in a line is between column 1 and column 2)
  external num get column;
  external set column(num v);
  external factory Position(num lineNumber, num column);

  /// Test if this position equals other position
  /*external bool equals(IPosition other);*/
  /// Test if position `a` equals position `b`
  /*external static bool equals(IPosition a, IPosition b);*/
  external bool equals(IPosition other_a, [IPosition b]);

  /// Test if this position is before other position.
  /// If the two positions are equal, the result will be false.
  /*external bool isBefore(IPosition other);*/
  /// Test if position `a` is before position `b`.
  /// If the two positions are equal, the result will be false.
  /*external static bool isBefore(IPosition a, IPosition b);*/
  external bool isBefore(IPosition other_a, [IPosition b]);

  /// Test if this position is before other position.
  /// If the two positions are equal, the result will be true.
  /*external bool isBeforeOrEqual(IPosition other);*/
  /// Test if position `a` is before position `b`.
  /// If the two positions are equal, the result will be true.
  /*external static bool isBeforeOrEqual(IPosition a, IPosition b);*/
  external bool isBeforeOrEqual(IPosition other_a, [IPosition b]);

  /// A function that compares positions, useful for sorting
  external static num compare(IPosition a, IPosition b);

  /// Clone this position.
  external Position clone();

  /// Convert to a human-readable representation.
  external String toString();

  /// Create a `Position` from an `IPosition`.
  external static Position lift(IPosition pos);

  /// Test if `obj` is an `IPosition`.
  external static bool /*obj is IPosition*/ isIPosition(dynamic obj);
}

/// A range in the editor. This interface is suitable for serialization.
@anonymous
@JS()
abstract class IRange {
  /// Line number on which the range starts (starts at 1).
  external num get startLineNumber;
  external set startLineNumber(num v);

  /// Column on which the range starts in line `startLineNumber` (starts at 1).
  external num get startColumn;
  external set startColumn(num v);

  /// Line number on which the range ends.
  external num get endLineNumber;
  external set endLineNumber(num v);

  /// Column on which the range ends in line `endLineNumber`.
  external num get endColumn;
  external set endColumn(num v);
  external factory IRange(
      {num startLineNumber, num startColumn, num endLineNumber, num endColumn});
}

/// A range in the editor. (startLineNumber,startColumn) is <= (endLineNumber,endColumn)
@JS("monaco.Range")
class Range {
  // @Ignore
  Range.fakeConstructor$();

  /// Line number on which the range starts (starts at 1).
  external num get startLineNumber;
  external set startLineNumber(num v);

  /// Column on which the range starts in line `startLineNumber` (starts at 1).
  external num get startColumn;
  external set startColumn(num v);

  /// Line number on which the range ends.
  external num get endLineNumber;
  external set endLineNumber(num v);

  /// Column on which the range ends in line `endLineNumber`.
  external num get endColumn;
  external set endColumn(num v);
  external factory Range(
      num startLineNumber, num startColumn, num endLineNumber, num endColumn);

  /// Test if this range is empty.
  /*external bool isEmpty();*/
  /// Test if `range` is empty.
  /*external static bool isEmpty(IRange range);*/
  external bool isEmpty([IRange range]);

  /// Test if position is in this range. If the position is at the edges, will return true.
  /*external bool containsPosition(IPosition position);*/
  /// Test if `position` is in `range`. If the position is at the edges, will return true.
  /*external static bool containsPosition(IRange range, IPosition position);*/
  external bool containsPosition(dynamic /*IPosition|IRange*/ position_range,
      [IPosition position]);

  /// Test if range is in this range. If the range is equal to this range, will return true.
  /*external bool containsRange(IRange range);*/
  /// Test if `otherRange` is in `range`. If the ranges are equal, will return true.
  /*external static bool containsRange(IRange range, IRange otherRange);*/
  external bool containsRange(IRange range, [IRange otherRange]);

  /// A reunion of the two ranges.
  /// The smallest position will be used as the start point, and the largest one as the end point.
  /*external Range plusRange(IRange range);*/
  /// A reunion of the two ranges.
  /// The smallest position will be used as the start point, and the largest one as the end point.
  /*external static Range plusRange(IRange a, IRange b);*/
  external Range plusRange(IRange range_a, [IRange b]);

  /// A intersection of the two ranges.
  /*external Range intersectRanges(IRange range);*/
  /// A intersection of the two ranges.
  /*external static Range intersectRanges(IRange a, IRange b);*/
  external Range intersectRanges(IRange range_a, [IRange b]);

  /// Test if this range equals other.
  /*external bool equalsRange(IRange other);*/
  /// Test if range `a` equals `b`.
  /*external static bool equalsRange(IRange a, IRange b);*/
  external bool equalsRange(IRange other_a, [IRange b]);

  /// Return the end position (which will be after or equal to the start position)
  external Position getEndPosition();

  /// Return the start position (which will be before or equal to the end position)
  external Position getStartPosition();

  /// Clone this range.
  external Range cloneRange();

  /// Transform to a user presentable string representation.
  external String toString();

  /// Create a new range using this range's start position, and using endLineNumber and endColumn as the end position.
  external Range setEndPosition(num endLineNumber, num endColumn);

  /// Create a new range using this range's end position, and using startLineNumber and startColumn as the start position.
  external Range setStartPosition(num startLineNumber, num startColumn);

  /// Create a new empty range using this range's start position.
  /*external Range collapseToStart();*/
  /// Create a new empty range using this range's start position.
  /*external static Range collapseToStart(IRange range);*/
  external Range collapseToStart([IRange range]);
  external static Range fromPositions(IPosition start, [IPosition end]);

  /// Create a `Range` from an `IRange`.
  external static Range lift(IRange range);

  /// Test if `obj` is an `IRange`.
  external static bool /*obj is IRange*/ isIRange(dynamic obj);

  /// Test if the two ranges are touching in any way.
  external static bool areIntersectingOrTouching(IRange a, IRange b);

  /// A function that compares ranges, useful for sorting ranges
  /// It will first compare ranges on the startPosition and then on the endPosition
  external static num compareRangesUsingStarts(IRange a, IRange b);

  /// A function that compares ranges, useful for sorting ranges
  /// It will first compare ranges on the endPosition and then on the startPosition
  external static num compareRangesUsingEnds(IRange a, IRange b);

  /// Test if the range spans multiple lines.
  external static bool spansMultipleLines(IRange range);
}

/// A selection in the editor.
/// The selection is a range that has an orientation.
@anonymous
@JS()
abstract class ISelection {
  /// The line number on which the selection has started.
  external num get selectionStartLineNumber;
  external set selectionStartLineNumber(num v);

  /// The column on `selectionStartLineNumber` where the selection has started.
  external num get selectionStartColumn;
  external set selectionStartColumn(num v);

  /// The line number on which the selection has ended.
  external num get positionLineNumber;
  external set positionLineNumber(num v);

  /// The column on `positionLineNumber` where the selection has ended.
  external num get positionColumn;
  external set positionColumn(num v);
  external factory ISelection(
      {num selectionStartLineNumber,
      num selectionStartColumn,
      num positionLineNumber,
      num positionColumn});
}

/// A selection in the editor.
/// The selection is a range that has an orientation.
@JS("monaco.Selection")
class Selection extends Range {
  // @Ignore
  Selection.fakeConstructor$() : super.fakeConstructor$();

  /// The line number on which the selection has started.
  external num get selectionStartLineNumber;
  external set selectionStartLineNumber(num v);

  /// The column on `selectionStartLineNumber` where the selection has started.
  external num get selectionStartColumn;
  external set selectionStartColumn(num v);

  /// The line number on which the selection has ended.
  external num get positionLineNumber;
  external set positionLineNumber(num v);

  /// The column on `positionLineNumber` where the selection has ended.
  external num get positionColumn;
  external set positionColumn(num v);
  external factory Selection(num selectionStartLineNumber,
      num selectionStartColumn, num positionLineNumber, num positionColumn);

  /// Clone this selection.
  external Selection clone();

  /// Transform to a human-readable representation.
  external String toString();

  /// Test if equals other selection.
  external bool equalsSelection(ISelection other);

  /// Test if the two selections are equal.
  external static bool selectionsEqual(ISelection a, ISelection b);

  /// Get directions (LTR or RTL).
  external num /*enum SelectionDirection*/ getDirection();

  /// Create a new selection with a different `positionLineNumber` and `positionColumn`.
  external Selection setEndPosition(num endLineNumber, num endColumn);

  /// Get the position at `positionLineNumber` and `positionColumn`.
  external Position getPosition();

  /// Create a new selection with a different `selectionStartLineNumber` and `selectionStartColumn`.
  external Selection setStartPosition(num startLineNumber, num startColumn);

  /// Create a `Selection` from one or two positions
  external static Selection fromPositions(IPosition start, [IPosition end]);

  /// Create a `Selection` from an `ISelection`.
  external static Selection liftSelection(ISelection sel);

  /// `a` equals `b`.
  external static bool selectionsArrEqual(
      List<ISelection> a, List<ISelection> b);

  /// Test if `obj` is an `ISelection`.
  external static bool /*obj is ISelection*/ isISelection(dynamic obj);

  /// Create with a direction.
  external static Selection createWithDirection(
      num startLineNumber,
      num startColumn,
      num endLineNumber,
      num endColumn,
      num /*enum SelectionDirection*/ direction);
}

/// The direction of a selection.
@JS("monaco.SelectionDirection")
class SelectionDirection {
  external static num get

      /// The selection starts above where it ends.
      LTR;
  external static num get

      /// The selection starts below where it ends.
      RTL;
}

@JS("monaco.Token")
class Token {
  // @Ignore
  Token.fakeConstructor$();
  external get JS$_tokenBrand;
  external set JS$_tokenBrand(v);
  external num get offset;
  external set offset(num v);
  external String get type;
  external set type(String v);
  external String get language;
  external set language(String v);
  external factory Token(num offset, String type, String language);
  external String toString();
}

// Module editor
/// Create a new editor under `domElement`.
/// `domElement` should be empty (not contain other dom nodes).
/// The editor will read the size of `domElement`.
@JS("monaco.editor.create")
external IStandaloneCodeEditor create(HtmlElement domElement,
    [IEditorConstructionOptions options, IEditorOverrideServices override]);

/// Emitted when an editor is created.
/// Creating a diff editor might cause this listener to be invoked with the two editors.
/// @event
@JS("monaco.editor.onDidCreateEditor")
external IDisposable onDidCreateEditor(void listener(ICodeEditor codeEditor));

/// Create a new diff editor under `domElement`.
/// `domElement` should be empty (not contain other dom nodes).
/// The editor will read the size of `domElement`.
@JS("monaco.editor.createDiffEditor")
external IStandaloneDiffEditor createDiffEditor(HtmlElement domElement,
    [IDiffEditorConstructionOptions options, IEditorOverrideServices override]);

@anonymous
@JS()
abstract class IDiffNavigator {
  external bool get revealFirst;
  external set revealFirst(bool v);
  external bool canNavigate();
  external void next();
  external void previous();
  external void dispose();
}

@anonymous
@JS()
abstract class IDiffNavigatorOptions {
  external bool get followsCaret;
  external set followsCaret(bool v);
  external bool get ignoreCharChanges;
  external set ignoreCharChanges(bool v);
  external bool get alwaysRevealFirst;
  external set alwaysRevealFirst(bool v);
  external factory IDiffNavigatorOptions(
      {bool followsCaret, bool ignoreCharChanges, bool alwaysRevealFirst});
}

@JS("monaco.editor.createDiffNavigator")
external IDiffNavigator createDiffNavigator(IStandaloneDiffEditor diffEditor,
    [IDiffNavigatorOptions opts]);

/// Create a new editor model.
/// You can specify the language that should be set for this model or let the language be inferred from the `uri`.
@JS("monaco.editor.createModel")
external IModel createModel(String value, [String language, Uri uri]);

/// Change the language for a model.
@JS("monaco.editor.setModelLanguage")
external void setModelLanguage(IModel model, String language);

/// Set the markers for a model.
@JS("monaco.editor.setModelMarkers")
external void setModelMarkers(
    IModel model, String owner, List<IMarkerData> markers);

/// Get the model that has `uri` if it exists.
@JS("monaco.editor.getModel")
external IModel getModel(Uri uri);

/// Get all the created models.
@JS("monaco.editor.getModels")
external List<IModel> getModels();

/// Emitted when a model is created.
/// @event
@JS("monaco.editor.onDidCreateModel")
external IDisposable onDidCreateModel(void listener(IModel model));

/// Emitted right before a model is disposed.
/// @event
@JS("monaco.editor.onWillDisposeModel")
external IDisposable onWillDisposeModel(void listener(IModel model));

/// Emitted when a different language is set to a model.
/// @event
@JS("monaco.editor.onDidChangeModelLanguage")
external IDisposable onDidChangeModelLanguage(
    void listener(
        dynamic
            /*{
        readonly model: IModel;
        readonly oldLanguage: string;
    }*/
            e));

/// Create a new web worker that has model syncing capabilities built in.
/// Specify an AMD module to load that will `create` an object that will be proxied.
@JS("monaco.editor.createWebWorker")
external MonacoWebWorker<dynamic/*=T*/ > createWebWorker/*<T>*/(
    IWebWorkerOptions opts);

/// Colorize the contents of `domNode` using attribute `data-lang`.
@JS("monaco.editor.colorizeElement")
external Promise<Null> colorizeElement(
    HtmlElement domNode, IColorizerElementOptions options);

/// Colorize `text` using language `languageId`.
@JS("monaco.editor.colorize")
external Promise<String> colorize(
    String text, String languageId, IColorizerOptions options);

/// Colorize a line in a model.
@JS("monaco.editor.colorizeModelLine")
external String colorizeModelLine(IModel model, num lineNumber, [num tabSize]);

/// Tokenize `text` using language `languageId`
@JS("monaco.editor.tokenize")
external List<List<Token>> tokenize(String text, String languageId);

/// Define a new theme.
@JS("monaco.editor.defineTheme")
external void defineTheme(String themeName, IStandaloneThemeData themeData);

/// Switches to a theme.
@JS("monaco.editor.setTheme")
external void setTheme(
    String
        themeName); /*export type BuiltinTheme = 'vs' | 'vs-dark' | 'hc-black';*/

@anonymous
@JS()
abstract class IStandaloneThemeData {
  external String /*'vs'|'vs-dark'|'hc-black'*/ get base;
  external set base(String /*'vs'|'vs-dark'|'hc-black'*/ v);
  external bool get inherit;
  external set inherit(bool v);
  external List<ITokenThemeRule> get rules;
  external set rules(List<ITokenThemeRule> v);
  external IColors get colors;
  external set colors(IColors v);
  external factory IStandaloneThemeData(
      {String /*'vs'|'vs-dark'|'hc-black'*/ base,
      bool inherit,
      List<ITokenThemeRule> rules,
      IColors colors});
}

@anonymous
@JS()
abstract class IColors {
  /* Index signature is not yet supported by JavaScript interop. */
}

@anonymous
@JS()
abstract class ITokenThemeRule {
  external String get token;
  external set token(String v);
  external String get foreground;
  external set foreground(String v);
  external String get background;
  external set background(String v);
  external String get fontStyle;
  external set fontStyle(String v);
  external factory ITokenThemeRule(
      {String token, String foreground, String background, String fontStyle});
}

/// A web worker that can provide a proxy to an arbitrary file.
@anonymous
@JS()
abstract class MonacoWebWorker<T> {
  /// Terminate the web worker, thus invalidating the returned proxy.
  external void dispose();

  /// Get a proxy to the arbitrary loaded code.
  external Promise<T> getProxy();

  /// Synchronize (send) the models at `resources` to the web worker,
  /// making them available in the monaco.worker.getMirrorModels().
  external Promise<T> withSyncedResources(List<Uri> resources);
}

@anonymous
@JS()
abstract class IWebWorkerOptions {
  /// The AMD moduleId to load.
  /// It should export a function `create` that should return the exported proxy.
  external String get moduleId;
  external set moduleId(String v);

  /// The data to send over when calling create on the module.
  external dynamic get createData;
  external set createData(dynamic v);

  /// A label to be used to identify the web worker for debugging purposes.
  external String get label;
  external set label(String v);
  external factory IWebWorkerOptions(
      {String moduleId, dynamic createData, String label});
}

/// The options to create an editor.
@anonymous
@JS()
abstract class IEditorConstructionOptions implements IEditorOptions {
  /// The initial model associated with this code editor.
  external IModel get model;
  external set model(IModel v);

  /// The initial value of the auto created model in the editor.
  /// To not create automatically a model, use `model: null`.
  external String get value;
  external set value(String v);

  /// The initial language of the auto created model in the editor.
  /// To not create automatically a model, use `model: null`.
  external String get language;
  external set language(String v);

  /// Initial theme to be used for rendering.
  /// The current out-of-the-box available themes are: 'vs' (default), 'vs-dark', 'hc-black'.
  /// You can create custom themes via `monaco.editor.defineTheme`.
  /// To switch a theme, use `monaco.editor.setTheme`
  external String get theme;
  external set theme(String v);

  /// An URL to open when Ctrl+H (Windows and Linux) or Cmd+H (OSX) is pressed in
  /// the accessibility help dialog in the editor.
  /// Defaults to "https://go.microsoft.com/fwlink/?linkid=852450"
  external String get accessibilityHelpUrl;
  external set accessibilityHelpUrl(String v);
  external factory IEditorConstructionOptions(
      {IModel model,
      String value,
      String language,
      String theme,
      String accessibilityHelpUrl,
      String

          /// The aria label for the editor's textarea (when it is focused).
          ariaLabel,
      List<num>

          /// Render vertical lines at the specified columns.
          /// Defaults to empty array.
          rulers,
      String

          /// A string containing the word separators used when doing word navigation.
          /// Defaults to `~!@#$%^&*()-=+[{]}\\|;:\'",.<>/?
          wordSeparators,
      bool

          /// Enable Linux primary clipboard.
          /// Defaults to true.
          selectionClipboard,
      dynamic /*'on'|'off'|'relative'|Func1<num, String>*/
          /// Control the rendering of line numbers.
          /// If it is a function, it will be invoked when rendering a line number and the return value will be rendered.
          /// Otherwise, if it is a truey, line numbers will be rendered normally (equivalent of using an identity function).
          /// Otherwise, line numbers will not be rendered.
          /// Defaults to true.
          lineNumbers,
      bool

          /// Should the corresponding line be selected when clicking on the line number?
          /// Defaults to true.
          selectOnLineNumbers,
      num

          /// Control the width of line numbers, by reserving horizontal space for rendering at least an amount of digits.
          /// Defaults to 5.
          lineNumbersMinChars,
      bool

          /// Enable the rendering of the glyph margin.
          /// Defaults to true in vscode and to false in monaco-editor.
          glyphMargin,
      dynamic /*num|String*/
          /// The width reserved for line decorations (in px).
          /// Line decorations are placed between line numbers and the editor content.
          /// You can pass in a string in the format floating point followed by "ch". e.g. 1.3ch.
          /// Defaults to 10.
          lineDecorationsWidth,
      num

          /// When revealing the cursor, a virtual padding (px) is added to the cursor, turning it into a rectangle.
          /// This virtual padding ensures that the cursor gets revealed before hitting the edge of the viewport.
          /// Defaults to 30 (px).
          revealHorizontalRightPadding,
      bool

          /// Render the editor selection with rounded borders.
          /// Defaults to true.
          roundedSelection,
      String

          /// Class name to be added to the editor.
          extraEditorClassName,
      bool

          /// Should the editor be read only.
          /// Defaults to false.
          readOnly,
      IEditorScrollbarOptions

          /// Control the behavior and rendering of the scrollbars.
          scrollbar,
      IEditorMinimapOptions

          /// Control the behavior and rendering of the minimap.
          minimap,
      IEditorFindOptions

          /// Control the behavior of the find widget.
          find,
      bool

          /// Display overflow widgets as `fixed`.
          /// Defaults to `false`.
          fixedOverflowWidgets,
      num

          /// The number of vertical lanes the overview ruler should render.
          /// Defaults to 2.
          overviewRulerLanes,
      bool

          /// Controls if a border should be drawn around the overview ruler.
          /// Defaults to `true`.
          overviewRulerBorder,
      String

          /// Control the cursor animation style, possible values are 'blink', 'smooth', 'phase', 'expand' and 'solid'.
          /// Defaults to 'blink'.
          cursorBlinking,
      bool

          /// Zoom the font in the editor when using the mouse wheel in combination with holding Ctrl.
          /// Defaults to false.
          mouseWheelZoom,
      String

          /// Control the cursor style, either 'block' or 'line'.
          /// Defaults to 'line'.
          cursorStyle,
      bool

          /// Enable font ligatures.
          /// Defaults to false.
          fontLigatures,
      bool

          /// Disable the use of `will-change` for the editor margin and lines layers.
          /// The usage of `will-change` acts as a hint for browsers to create an extra layer.
          /// Defaults to false.
          disableLayerHinting,
      bool

          /// Disable the optimizations for monospace fonts.
          /// Defaults to false.
          disableMonospaceOptimizations,
      bool

          /// Should the cursor be hidden in the overview ruler.
          /// Defaults to false.
          hideCursorInOverviewRuler,
      bool

          /// Enable that scrolling can go one screen size after the last line.
          /// Defaults to true.
          scrollBeyondLastLine,
      bool

          /// Enable that the editor will install an interval to check if its container dom node size has changed.
          /// Enabling this might have a severe performance impact.
          /// Defaults to false.
          automaticLayout,
      String /*'off'|'on'|'wordWrapColumn'|'bounded'*/
          /// Control the wrapping of the editor.
          /// When `wordWrap` = "off", the lines will never wrap.
          /// When `wordWrap` = "on", the lines will wrap at the viewport width.
          /// When `wordWrap` = "wordWrapColumn", the lines will wrap at `wordWrapColumn`.
          /// When `wordWrap` = "bounded", the lines will wrap at min(viewport width, wordWrapColumn).
          /// Defaults to "off".
          wordWrap,
      num

          /// Control the wrapping of the editor.
          /// When `wordWrap` = "off", the lines will never wrap.
          /// When `wordWrap` = "on", the lines will wrap at the viewport width.
          /// When `wordWrap` = "wordWrapColumn", the lines will wrap at `wordWrapColumn`.
          /// When `wordWrap` = "bounded", the lines will wrap at min(viewport width, wordWrapColumn).
          /// Defaults to 80.
          wordWrapColumn,
      bool

          /// Force word wrapping when the text appears to be of a minified/generated file.
          /// Defaults to true.
          wordWrapMinified,
      String

          /// Control indentation of wrapped lines. Can be: 'none', 'same' or 'indent'.
          /// Defaults to 'same' in vscode and to 'none' in monaco-editor.
          wrappingIndent,
      String

          /// Configure word wrapping characters. A break will be introduced before these characters.
          /// Defaults to '{([+'.
          wordWrapBreakBeforeCharacters,
      String

          /// Configure word wrapping characters. A break will be introduced after these characters.
          /// Defaults to ' \t})]?|&,;'.
          wordWrapBreakAfterCharacters,
      String

          /// Configure word wrapping characters. A break will be introduced after these characters only if no `wordWrapBreakBeforeCharacters` or `wordWrapBreakAfterCharacters` were found.
          /// Defaults to '.'.
          wordWrapBreakObtrusiveCharacters,
      num

          /// Performance guard: Stop rendering a line after x characters.
          /// Defaults to 10000.
          /// Use -1 to never stop rendering
          stopRenderingLineAfter,
      bool

          /// Enable hover.
          /// Defaults to true.
          hover,
      bool

          /// Enable detecting links and making them clickable.
          /// Defaults to true.
          links,
      bool

          /// Enable custom contextmenu.
          /// Defaults to true.
          contextmenu,
      num

          /// A multiplier to be used on the `deltaX` and `deltaY` of mouse wheel scroll events.
          /// Defaults to 1.
          mouseWheelScrollSensitivity,
      String /*'ctrlCmd'|'alt'*/
          /// The modifier to be used to add multiple cursors with the mouse.
          /// Defaults to 'alt'
          multiCursorModifier,
      String /*'auto'|'off'|'on'*/
          /// Configure the editor's accessibility support.
          /// Defaults to 'auto'. It is best to leave this to 'auto'.
          accessibilitySupport,
      dynamic
          /*bool|{
            other: boolean;
            comments: boolean;
            strings: boolean;
        }*/
          /// Enable quick suggestions (shadow suggestions)
          /// Defaults to true.
          quickSuggestions,
      num

          /// Quick suggestions show delay (in ms)
          /// Defaults to 500 (ms)
          quickSuggestionsDelay,
      bool

          /// Enables parameter hints
          parameterHints,
      bool

          /// Render icons in suggestions box.
          /// Defaults to true.
          iconsInSuggestions,
      bool

          /// Enable auto closing brackets.
          /// Defaults to true.
          autoClosingBrackets,
      bool

          /// Enable auto indentation adjustment.
          /// Defaults to false.
          autoIndent,
      bool

          /// Enable format on type.
          /// Defaults to false.
          formatOnType,
      bool

          /// Enable format on paste.
          /// Defaults to false.
          formatOnPaste,
      bool

          /// Controls if the editor should allow to move selections via drag and drop.
          /// Defaults to false.
          dragAndDrop,
      bool

          /// Enable the suggestion box to pop-up on trigger characters.
          /// Defaults to true.
          suggestOnTriggerCharacters,
      String /*'on'|'smart'|'off'*/
          /// Accept suggestions on ENTER.
          /// Defaults to 'on'.
          acceptSuggestionOnEnter,
      bool

          /// Accept suggestions on provider defined characters.
          /// Defaults to true.
          acceptSuggestionOnCommitCharacter,
      String /*'top'|'bottom'|'inline'|'none'*/
          /// Enable snippet suggestions. Default to 'true'.
          snippetSuggestions,
      bool

          /// Copying without a selection copies the current line.
          emptySelectionClipboard,
      bool

          /// Enable word based suggestions. Defaults to 'true'
          wordBasedSuggestions,
      num

          /// The font size for the suggest widget.
          /// Defaults to the editor font size.
          suggestFontSize,
      num

          /// The line height for the suggest widget.
          /// Defaults to the editor line height.
          suggestLineHeight,
      bool

          /// Enable selection highlight.
          /// Defaults to true.
          selectionHighlight,
      bool

          /// Enable semantic occurrences highlight.
          /// Defaults to true.
          occurrencesHighlight,
      bool

          /// Show code lens
          /// Defaults to true.
          codeLens,
      bool

          /// Enable code folding
          /// Defaults to true in vscode and to false in monaco-editor.
          folding,
      String /*'always'|'mouseover'*/
          /// Controls whether the fold actions in the gutter stay always visible or hide unless the mouse is over the gutter.
          /// Defaults to 'mouseover'.
          showFoldingControls,
      bool

          /// Enable highlighting of matching brackets.
          /// Defaults to true.
          matchBrackets,
      String /*'none'|'boundary'|'all'*/
          /// Enable rendering of whitespace.
          /// Defaults to none.
          renderWhitespace,
      bool

          /// Enable rendering of control characters.
          /// Defaults to false.
          renderControlCharacters,
      bool

          /// Enable rendering of indent guides.
          /// Defaults to false.
          renderIndentGuides,
      String /*'none'|'gutter'|'line'|'all'*/
          /// Enable rendering of current line highlight.
          /// Defaults to all.
          renderLineHighlight,
      bool

          /// Inserting and deleting whitespace follows tab stops.
          useTabStops,
      String

          /// The font family
          fontFamily,
      String /*'normal'|'bold'|'bolder'|'lighter'|'initial'|'inherit'|'100'|'200'|'300'|'400'|'500'|'600'|'700'|'800'|'900'*/
          /// The font weight
          fontWeight,
      num

          /// The font size
          fontSize,
      num

          /// The line height
          lineHeight,
      num

          /// The letter spacing
          letterSpacing});
}

@anonymous
@JS()
abstract class IDiffEditorConstructionOptions implements IDiffEditorOptions {
  external String get theme;
  external set theme(String v);
  external factory IDiffEditorConstructionOptions(
      {String theme,
      bool

          /// Allow the user to resize the diff editor split view.
          /// Defaults to true.
          enableSplitViewResizing,
      bool

          /// Render the differences in two side-by-side editors.
          /// Defaults to true.
          renderSideBySide,
      bool

          /// Compute the diff by ignoring leading/trailing whitespace
          /// Defaults to true.
          ignoreTrimWhitespace,
      bool

          /// Render +/- indicators for added/deleted changes.
          /// Defaults to true.
          renderIndicators,
      bool

          /// Original model should be editable?
          /// Defaults to false.
          originalEditable,
      String ariaLabel,
      List<num> rulers,
      String wordSeparators,
      bool selectionClipboard,
      dynamic /*'on'|'off'|'relative'|Func1<num, String>*/ lineNumbers,
      bool selectOnLineNumbers,
      num lineNumbersMinChars,
      bool glyphMargin,
      dynamic /*num|String*/ lineDecorationsWidth,
      num revealHorizontalRightPadding,
      bool roundedSelection,
      String extraEditorClassName,
      bool readOnly,
      IEditorScrollbarOptions scrollbar,
      IEditorMinimapOptions minimap,
      IEditorFindOptions find,
      bool fixedOverflowWidgets,
      num overviewRulerLanes,
      bool overviewRulerBorder,
      String cursorBlinking,
      bool mouseWheelZoom,
      String cursorStyle,
      bool fontLigatures,
      bool disableLayerHinting,
      bool disableMonospaceOptimizations,
      bool hideCursorInOverviewRuler,
      bool scrollBeyondLastLine,
      bool automaticLayout,
      String /*'off'|'on'|'wordWrapColumn'|'bounded'*/ wordWrap,
      num wordWrapColumn,
      bool wordWrapMinified,
      String wrappingIndent,
      String wordWrapBreakBeforeCharacters,
      String wordWrapBreakAfterCharacters,
      String wordWrapBreakObtrusiveCharacters,
      num stopRenderingLineAfter,
      bool hover,
      bool links,
      bool contextmenu,
      num mouseWheelScrollSensitivity,
      String /*'ctrlCmd'|'alt'*/ multiCursorModifier,
      String /*'auto'|'off'|'on'*/ accessibilitySupport,
      dynamic
          /*bool|{
            other: boolean;
            comments: boolean;
            strings: boolean;
        }*/
          quickSuggestions,
      num quickSuggestionsDelay,
      bool parameterHints,
      bool iconsInSuggestions,
      bool autoClosingBrackets,
      bool autoIndent,
      bool formatOnType,
      bool formatOnPaste,
      bool dragAndDrop,
      bool suggestOnTriggerCharacters,
      String /*'on'|'smart'|'off'*/ acceptSuggestionOnEnter,
      bool acceptSuggestionOnCommitCharacter,
      String /*'top'|'bottom'|'inline'|'none'*/ snippetSuggestions,
      bool emptySelectionClipboard,
      bool wordBasedSuggestions,
      num suggestFontSize,
      num suggestLineHeight,
      bool selectionHighlight,
      bool occurrencesHighlight,
      bool codeLens,
      bool folding,
      String /*'always'|'mouseover'*/ showFoldingControls,
      bool matchBrackets,
      String /*'none'|'boundary'|'all'*/ renderWhitespace,
      bool renderControlCharacters,
      bool renderIndentGuides,
      String /*'none'|'gutter'|'line'|'all'*/ renderLineHighlight,
      bool useTabStops,
      String fontFamily,
      String /*'normal'|'bold'|'bolder'|'lighter'|'initial'|'inherit'|'100'|'200'|'300'|'400'|'500'|'600'|'700'|'800'|'900'*/ fontWeight,
      num fontSize,
      num lineHeight,
      num letterSpacing});
}

@anonymous
@JS()
abstract class IStandaloneCodeEditor implements ICodeEditor {
  external String addCommand(
      num keybinding, ICommandHandler handler, String context);
  external IContextKey<dynamic/*=T*/ > createContextKey/*<T>*/(
      String key, dynamic/*=T*/ defaultValue);
  external IDisposable addAction(IActionDescriptor descriptor);
}

@anonymous
@JS()
abstract class IStandaloneDiffEditor implements IDiffEditor {
  external String addCommand(
      num keybinding, ICommandHandler handler, String context);
  external IContextKey<dynamic/*=T*/ > createContextKey/*<T>*/(
      String key, dynamic/*=T*/ defaultValue);
  external IDisposable addAction(IActionDescriptor descriptor);
  external IStandaloneCodeEditor getOriginalEditor();
  external IStandaloneCodeEditor getModifiedEditor();
}

typedef void ICommandHandler(
    [dynamic args1,
    dynamic args2,
    dynamic args3,
    dynamic args4,
    dynamic args5]);

@anonymous
@JS()
abstract class IContextKey<T> {
  external void JS$set(T value);
  external void reset();
  external T JS$get();
}

@anonymous
@JS()
abstract class IEditorOverrideServices {
  /* Index signature is not yet supported by JavaScript interop. */
}

@anonymous
@JS()
abstract class IMarkerData {
  external String get code;
  external set code(String v);
  external num /*enum Severity*/ get severity;
  external set severity(num /*enum Severity*/ v);
  external String get message;
  external set message(String v);
  external String get source;
  external set source(String v);
  external num get startLineNumber;
  external set startLineNumber(num v);
  external num get startColumn;
  external set startColumn(num v);
  external num get endLineNumber;
  external set endLineNumber(num v);
  external num get endColumn;
  external set endColumn(num v);
  external factory IMarkerData(
      {String code,
      num /*enum Severity*/ severity,
      String message,
      String source,
      num startLineNumber,
      num startColumn,
      num endLineNumber,
      num endColumn});
}

@anonymous
@JS()
abstract class IColorizerOptions {
  external num get tabSize;
  external set tabSize(num v);
  external factory IColorizerOptions({num tabSize});
}

@anonymous
@JS()
abstract class IColorizerElementOptions implements IColorizerOptions {
  external String get theme;
  external set theme(String v);
  external String get mimeType;
  external set mimeType(String v);
  external factory IColorizerElementOptions(
      {String theme, String mimeType, num tabSize});
}

@JS("monaco.editor.ScrollbarVisibility")
class ScrollbarVisibility {
  external static num get Auto;
  external static num get Hidden;
  external static num get Visible;
}

@anonymous
@JS()
abstract class ThemeColor {
  external String get id;
  external set id(String v);
  external factory ThemeColor({String id});
}

@JS("monaco.editor.OverviewRulerLane")
class OverviewRulerLane {
  external static num get Left;
  external static num get Center;
  external static num get Right;
  external static num get Full;
}

@anonymous
@JS()
abstract class IModelDecorationOverviewRulerOptions {
  external dynamic /*String|ThemeColor*/ get color;
  external set color(dynamic /*String|ThemeColor*/ v);
  external dynamic /*String|ThemeColor*/ get darkColor;
  external set darkColor(dynamic /*String|ThemeColor*/ v);
  external dynamic /*String|ThemeColor*/ get hcColor;
  external set hcColor(dynamic /*String|ThemeColor*/ v);
  external num /*enum OverviewRulerLane*/ get position;
  external set position(num /*enum OverviewRulerLane*/ v);
  external factory IModelDecorationOverviewRulerOptions(
      {dynamic /*String|ThemeColor*/ color,
      dynamic /*String|ThemeColor*/ darkColor,
      dynamic /*String|ThemeColor*/ hcColor,
      num /*enum OverviewRulerLane*/ position});
}

@anonymous
@JS()
abstract class IModelDecorationOptions {
  external num /*enum TrackedRangeStickiness*/ get stickiness;
  external set stickiness(num /*enum TrackedRangeStickiness*/ v);
  external String get className;
  external set className(String v);
  external dynamic
      /*String|{
        readonly language: string;
        readonly value: string;
    }|List<String|{
        readonly language: string;
        readonly value: string;
    }>*/
      get glyphMarginHoverMessage;
  external set glyphMarginHoverMessage(
      dynamic
          /*String|{
        readonly language: string;
        readonly value: string;
    }|List<String|{
        readonly language: string;
        readonly value: string;
    }>*/
          v);
  external dynamic
      /*String|{
        readonly language: string;
        readonly value: string;
    }|List<String|{
        readonly language: string;
        readonly value: string;
    }>*/
      get hoverMessage;
  external set hoverMessage(
      dynamic
          /*String|{
        readonly language: string;
        readonly value: string;
    }|List<String|{
        readonly language: string;
        readonly value: string;
    }>*/
          v);
  external bool get isWholeLine;
  external set isWholeLine(bool v);
  external IModelDecorationOverviewRulerOptions get overviewRuler;
  external set overviewRuler(IModelDecorationOverviewRulerOptions v);
  external String get glyphMarginClassName;
  external set glyphMarginClassName(String v);
  external String get linesDecorationsClassName;
  external set linesDecorationsClassName(String v);
  external String get marginClassName;
  external set marginClassName(String v);
  external String get inlineClassName;
  external set inlineClassName(String v);
  external String get beforeContentClassName;
  external set beforeContentClassName(String v);
  external String get afterContentClassName;
  external set afterContentClassName(String v);
  external factory IModelDecorationOptions(
      {num /*enum TrackedRangeStickiness*/ stickiness,
      String className,
      dynamic
          /*String|{
        readonly language: string;
        readonly value: string;
    }|List<String|{
        readonly language: string;
        readonly value: string;
    }>*/
          glyphMarginHoverMessage,
      dynamic
          /*String|{
        readonly language: string;
        readonly value: string;
    }|List<String|{
        readonly language: string;
        readonly value: string;
    }>*/
          hoverMessage,
      bool isWholeLine,
      IModelDecorationOverviewRulerOptions overviewRuler,
      String glyphMarginClassName,
      String linesDecorationsClassName,
      String marginClassName,
      String inlineClassName,
      String beforeContentClassName,
      String afterContentClassName});
}

@anonymous
@JS()
abstract class IModelDeltaDecoration {
  external IRange get range;
  external set range(IRange v);
  external IModelDecorationOptions get options;
  external set options(IModelDecorationOptions v);
  external factory IModelDeltaDecoration(
      {IRange range, IModelDecorationOptions options});
}

@anonymous
@JS()
abstract class IModelDecoration {
  external String get id;
  external set id(String v);
  external num get ownerId;
  external set ownerId(num v);
  external Range get range;
  external set range(Range v);
  external IModelDecorationOptions get options;
  external set options(IModelDecorationOptions v);
  external bool get isForValidation;
  external set isForValidation(bool v);
  external factory IModelDecoration(
      {String id,
      num ownerId,
      Range range,
      IModelDecorationOptions options,
      bool isForValidation});
}

@anonymous
@JS()
abstract class IWordAtPosition {
  external String get word;
  external set word(String v);
  external num get startColumn;
  external set startColumn(num v);
  external num get endColumn;
  external set endColumn(num v);
  external factory IWordAtPosition(
      {String word, num startColumn, num endColumn});
}

@JS("monaco.editor.EndOfLinePreference")
class EndOfLinePreference {
  external static num get TextDefined;
  external static num get LF;
  external static num get CRLF;
}

@JS("monaco.editor.DefaultEndOfLine")
class DefaultEndOfLine {
  external static num get LF;
  external static num get CRLF;
}

@JS("monaco.editor.EndOfLineSequence")
class EndOfLineSequence {
  external static num get LF;
  external static num get CRLF;
}

@anonymous
@JS()
abstract class ISingleEditOperationIdentifier {
  external num get major;
  external set major(num v);
  external num get minor;
  external set minor(num v);
  external factory ISingleEditOperationIdentifier({num major, num minor});
}

@anonymous
@JS()
abstract class IEditOperationBuilder {
  external void addEditOperation(Range range, String text);
  external void addTrackedEditOperation(Range range, String text);
  external String trackSelection(Selection selection,
      [bool trackPreviousOnEmpty]);
}

@anonymous
@JS()
abstract class ICursorStateComputerData {
  external List<IIdentifiedSingleEditOperation> getInverseEditOperations();
  external Selection getTrackedSelection(String id);
}

@anonymous
@JS()
abstract class ICommand {
  external getEditOperations(
      ITokenizedModel model, IEditOperationBuilder builder);
  external Selection computeCursorState(
      ITokenizedModel model, ICursorStateComputerData helper);
}

@anonymous
@JS()
abstract class ISingleEditOperation {
  external IRange get range;
  external set range(IRange v);
  external String get text;
  external set text(String v);
  external bool get forceMoveMarkers;
  external set forceMoveMarkers(bool v);
  external factory ISingleEditOperation(
      {IRange range, String text, bool forceMoveMarkers});
}

@anonymous
@JS()
abstract class IIdentifiedSingleEditOperation {
  external ISingleEditOperationIdentifier get identifier;
  external set identifier(ISingleEditOperationIdentifier v);
  external Range get range;
  external set range(Range v);
  external String get text;
  external set text(String v);
  external bool get forceMoveMarkers;
  external set forceMoveMarkers(bool v);
  external bool get isAutoWhitespaceEdit;
  external set isAutoWhitespaceEdit(bool v);
  external factory IIdentifiedSingleEditOperation(
      {ISingleEditOperationIdentifier identifier,
      Range range,
      String text,
      bool forceMoveMarkers,
      bool isAutoWhitespaceEdit});
}

typedef List<Selection> ICursorStateComputer(
    List<IIdentifiedSingleEditOperation> inverseEditOperations);

@JS("monaco.editor.TextModelResolvedOptions")
class TextModelResolvedOptions {
  // @Ignore
  TextModelResolvedOptions.fakeConstructor$();
  external get JS$_textModelResolvedOptionsBrand;
  external set JS$_textModelResolvedOptionsBrand(v);
  external num get tabSize;
  external set tabSize(num v);
  external bool get insertSpaces;
  external set insertSpaces(bool v);
  external num /*enum DefaultEndOfLine*/ get defaultEOL;
  external set defaultEOL(num /*enum DefaultEndOfLine*/ v);
  external bool get trimAutoWhitespace;
  external set trimAutoWhitespace(bool v);
}

@anonymous
@JS()
abstract class ITextModelUpdateOptions {
  external num get tabSize;
  external set tabSize(num v);
  external bool get insertSpaces;
  external set insertSpaces(bool v);
  external bool get trimAutoWhitespace;
  external set trimAutoWhitespace(bool v);
  external factory ITextModelUpdateOptions(
      {num tabSize, bool insertSpaces, bool trimAutoWhitespace});
}

@anonymous
@JS()
abstract class ITextModel {
  external TextModelResolvedOptions getOptions();
  external num getVersionId();
  external num getAlternativeVersionId();
  external void setValue(String newValue);
  external String getValue(
      [num /*enum EndOfLinePreference*/ eol, bool preserveBOM]);
  external num getValueLength(
      [num /*enum EndOfLinePreference*/ eol, bool preserveBOM]);
  external String getValueInRange(IRange range,
      [num /*enum EndOfLinePreference*/ eol]);
  external num getValueLengthInRange(IRange range);
  external num getLineCount();
  external String getLineContent(num lineNumber);
  external List<String> getLinesContent();
  external String getEOL();
  external void setEOL(num /*enum EndOfLineSequence*/ eol);
  external num getLineMinColumn(num lineNumber);
  external num getLineMaxColumn(num lineNumber);
  external num getLineFirstNonWhitespaceColumn(num lineNumber);
  external num getLineLastNonWhitespaceColumn(num lineNumber);
  external Position validatePosition(IPosition position);
  external Position modifyPosition(IPosition position, num offset);
  external Range validateRange(IRange range);
  external num getOffsetAt(IPosition position);
  external Position getPositionAt(num offset);
  external Range getFullModelRange();
  external bool isDisposed();
  /*external List<FindMatch> findMatches(
    String searchString,
    bool searchOnlyEditableRange,
    bool isRegex,
    bool matchCase,
    String wordSeparators,
    bool captureMatches,
    [num limitResultCount]);*/
  /*external List<FindMatch> findMatches(String searchString, IRange searchScope,
    bool isRegex, bool matchCase, String wordSeparators, bool captureMatches,
    [num limitResultCount]);*/
  external List<FindMatch> findMatches(
      String searchString,
      dynamic /*bool|IRange*/ searchOnlyEditableRange_searchScope,
      bool isRegex,
      bool matchCase,
      String wordSeparators,
      bool captureMatches,
      [num limitResultCount]);
  external FindMatch findNextMatch(String searchString, IPosition searchStart,
      bool isRegex, bool matchCase, String wordSeparators, bool captureMatches);
  external FindMatch findPreviousMatch(
      String searchString,
      IPosition searchStart,
      bool isRegex,
      bool matchCase,
      String wordSeparators,
      bool captureMatches);
}

@JS("monaco.editor.FindMatch")
class FindMatch {
  // @Ignore
  FindMatch.fakeConstructor$();
  external get JS$_findMatchBrand;
  external set JS$_findMatchBrand(v);
  external Range get range;
  external set range(Range v);
  external List<String> get matches;
  external set matches(List<String> v);
}

@anonymous
@JS()
abstract class IReadOnlyModel implements ITextModel {
  external Uri get uri;
  external set uri(Uri v);
  external String getModeId();
  external IWordAtPosition getWordAtPosition(IPosition position);
  external IWordAtPosition getWordUntilPosition(IPosition position);
}

@anonymous
@JS()
abstract class ITokenizedModel implements ITextModel {
  external String getModeId();
  external IWordAtPosition getWordAtPosition(IPosition position);
  external IWordAtPosition getWordUntilPosition(IPosition position);
}

@anonymous
@JS()
abstract class ITextModelWithMarkers implements ITextModel {}

@JS("monaco.editor.TrackedRangeStickiness")
class TrackedRangeStickiness {
  external static num get AlwaysGrowsWhenTypingAtEdges;
  external static num get NeverGrowsWhenTypingAtEdges;
  external static num get GrowsOnlyWhenTypingBefore;
  external static num get GrowsOnlyWhenTypingAfter;
}

@anonymous
@JS()
abstract class ITextModelWithDecorations {
  external List<String> deltaDecorations(
      List<String> oldDecorations, List<IModelDeltaDecoration> newDecorations,
      [num ownerId]);
  external IModelDecorationOptions getDecorationOptions(String id);
  external Range getDecorationRange(String id);
  external List<IModelDecoration> getLineDecorations(num lineNumber,
      [num ownerId, bool filterOutValidation]);
  external List<IModelDecoration> getLinesDecorations(
      num startLineNumber, num endLineNumber,
      [num ownerId, bool filterOutValidation]);
  external List<IModelDecoration> getDecorationsInRange(IRange range,
      [num ownerId, bool filterOutValidation]);
  external List<IModelDecoration> getAllDecorations(
      [num ownerId, bool filterOutValidation]);
}

@anonymous
@JS()
abstract class IEditableTextModel implements ITextModelWithMarkers {
  external String normalizeIndentation(String str);
  external String getOneIndent();
  external void updateOptions(ITextModelUpdateOptions newOpts);
  external void detectIndentation(bool defaultInsertSpaces, num defaultTabSize);
  external void pushStackElement();
  external List<Selection> pushEditOperations(
      List<Selection> beforeCursorState,
      List<IIdentifiedSingleEditOperation> editOperations,
      ICursorStateComputer cursorStateComputer);
  external List<IIdentifiedSingleEditOperation> applyEdits(
      List<IIdentifiedSingleEditOperation> operations);
}

@anonymous
@JS()
abstract class IModel
    implements
        IReadOnlyModel,
        IEditableTextModel,
        ITextModelWithMarkers,
        ITokenizedModel,
        ITextModelWithDecorations {
  external IDisposable onDidChangeContent(
      void listener(IModelContentChangedEvent e));
  external IDisposable onDidChangeDecorations(
      void listener(IModelDecorationsChangedEvent e));
  external IDisposable onDidChangeOptions(
      void listener(IModelOptionsChangedEvent e));
  external IDisposable onDidChangeLanguage(
      void listener(IModelLanguageChangedEvent e));
  external IDisposable onWillDispose(void listener());
  external String get id;
  external set id(String v);
  external void dispose();
}

@anonymous
@JS()
abstract class IDiffEditorModel {
  external IModel get original;
  external set original(IModel v);
  external IModel get modified;
  external set modified(IModel v);
  external factory IDiffEditorModel({IModel original, IModel modified});
}

@anonymous
@JS()
abstract class IModelChangedEvent {
  external Uri get oldModelUrl;
  external set oldModelUrl(Uri v);
  external Uri get newModelUrl;
  external set newModelUrl(Uri v);
  external factory IModelChangedEvent({Uri oldModelUrl, Uri newModelUrl});
}

@anonymous
@JS()
abstract class IDimension {
  external num get width;
  external set width(num v);
  external num get height;
  external set height(num v);
  external factory IDimension({num width, num height});
}

@anonymous
@JS()
abstract class IChange {
  external num get originalStartLineNumber;
  external set originalStartLineNumber(num v);
  external num get originalEndLineNumber;
  external set originalEndLineNumber(num v);
  external num get modifiedStartLineNumber;
  external set modifiedStartLineNumber(num v);
  external num get modifiedEndLineNumber;
  external set modifiedEndLineNumber(num v);
  external factory IChange(
      {num originalStartLineNumber,
      num originalEndLineNumber,
      num modifiedStartLineNumber,
      num modifiedEndLineNumber});
}

@anonymous
@JS()
abstract class ICharChange implements IChange {
  external num get originalStartColumn;
  external set originalStartColumn(num v);
  external num get originalEndColumn;
  external set originalEndColumn(num v);
  external num get modifiedStartColumn;
  external set modifiedStartColumn(num v);
  external num get modifiedEndColumn;
  external set modifiedEndColumn(num v);
  external factory ICharChange(
      {num originalStartColumn,
      num originalEndColumn,
      num modifiedStartColumn,
      num modifiedEndColumn,
      num originalStartLineNumber,
      num originalEndLineNumber,
      num modifiedStartLineNumber,
      num modifiedEndLineNumber});
}

@anonymous
@JS()
abstract class ILineChange implements IChange {
  external List<ICharChange> get charChanges;
  external set charChanges(List<ICharChange> v);
  external factory ILineChange(
      {List<ICharChange> charChanges,
      num originalStartLineNumber,
      num originalEndLineNumber,
      num modifiedStartLineNumber,
      num modifiedEndLineNumber});
}

@anonymous
@JS()
abstract class IDiffLineInformation {
  external num get equivalentLineNumber;
  external set equivalentLineNumber(num v);
  external factory IDiffLineInformation({num equivalentLineNumber});
}

@anonymous
@JS()
abstract class INewScrollPosition {
  external num get scrollLeft;
  external set scrollLeft(num v);
  external num get scrollTop;
  external set scrollTop(num v);
  external factory INewScrollPosition({num scrollLeft, num scrollTop});
}

@anonymous
@JS()
abstract class IActionDescriptor {
  external String get id;
  external set id(String v);
  external String get label;
  external set label(String v);
  external String get precondition;
  external set precondition(String v);
  external List<num> get keybindings;
  external set keybindings(List<num> v);
  external String get keybindingContext;
  external set keybindingContext(String v);
  external String get contextMenuGroupId;
  external set contextMenuGroupId(String v);
  external num get contextMenuOrder;
  external set contextMenuOrder(num v);
  external dynamic /*Null|Promise<Null>*/ run(ICommonCodeEditor editor);
}

@anonymous
@JS()
abstract class IEditorAction {
  external String get id;
  external set id(String v);
  external String get label;
  external set label(String v);
  external String get alias;
  external set alias(String v);
  external bool isSupported();
  external Promise<Null> run();
}

/*export type IEditorModel = IModel | IDiffEditorModel;*/
@anonymous
@JS()
abstract class ICursorState {
  external bool get inSelectionMode;
  external set inSelectionMode(bool v);
  external IPosition get selectionStart;
  external set selectionStart(IPosition v);
  external IPosition get position;
  external set position(IPosition v);
  external factory ICursorState(
      {bool inSelectionMode, IPosition selectionStart, IPosition position});
}

@anonymous
@JS()
abstract class IViewState {
  external num get scrollTop;
  external set scrollTop(num v);
  external num get scrollTopWithoutViewZones;
  external set scrollTopWithoutViewZones(num v);
  external num get scrollLeft;
  external set scrollLeft(num v);
  external factory IViewState(
      {num scrollTop, num scrollTopWithoutViewZones, num scrollLeft});
}

@anonymous
@JS()
abstract class ICodeEditorViewState {
  external List<ICursorState> get cursorState;
  external set cursorState(List<ICursorState> v);
  external IViewState get viewState;
  external set viewState(IViewState v);
  external dynamic /*JSMap of <String,dynamic>*/ get contributionsState;
  external set contributionsState(dynamic /*JSMap of <String,dynamic>*/ v);
  external factory ICodeEditorViewState(
      {List<ICursorState> cursorState,
      IViewState viewState,
      dynamic /*JSMap of <String,dynamic>*/ contributionsState});
}

@anonymous
@JS()
abstract class IDiffEditorViewState {
  external ICodeEditorViewState get original;
  external set original(ICodeEditorViewState v);
  external ICodeEditorViewState get modified;
  external set modified(ICodeEditorViewState v);
  external factory IDiffEditorViewState(
      {ICodeEditorViewState original, ICodeEditorViewState modified});
}

/*export type IEditorViewState = ICodeEditorViewState | IDiffEditorViewState;*/
@anonymous
@JS()
abstract class IEditor {
  external IDisposable onDidDispose(void listener());
  external void dispose();
  external String getId();
  external String getEditorType();
  external void updateOptions(IEditorOptions newOptions);
  external void layout([IDimension dimension]);
  external void focus();
  external bool isFocused();
  external List<IEditorAction> getActions();
  external List<IEditorAction> getSupportedActions();
  external dynamic /*ICodeEditorViewState|IDiffEditorViewState*/ saveViewState();
  external void restoreViewState(
      dynamic /*ICodeEditorViewState|IDiffEditorViewState*/ state);
  external num getVisibleColumnFromPosition(IPosition position);
  external Position getPosition();
  external void setPosition(IPosition position);
  external void revealLine(num lineNumber);
  external void revealLineInCenter(num lineNumber);
  external void revealLineInCenterIfOutsideViewport(num lineNumber);
  external void revealPosition(IPosition position,
      [bool revealVerticalInCenter, bool revealHorizontal]);
  external void revealPositionInCenter(IPosition position);
  external void revealPositionInCenterIfOutsideViewport(IPosition position);
  external Selection getSelection();
  external List<Selection> getSelections();
  /*external void setSelection(IRange selection);*/
  /*external void setSelection(Range selection);*/
  /*external void setSelection(ISelection selection);*/
  /*external void setSelection(Selection selection);*/
  external void setSelection(
      dynamic /*IRange|Range|ISelection|Selection*/ selection);
  external void setSelections(List<ISelection> selections);
  external void revealLines(num startLineNumber, num endLineNumber);
  external void revealLinesInCenter(num lineNumber, num endLineNumber);
  external void revealLinesInCenterIfOutsideViewport(
      num lineNumber, num endLineNumber);
  external void revealRange(IRange range);
  external void revealRangeInCenter(IRange range);
  external void revealRangeAtTop(IRange range);
  external void revealRangeInCenterIfOutsideViewport(IRange range);
  external void trigger(String source, String handlerId, dynamic payload);
  external dynamic /*IModel|IDiffEditorModel*/ getModel();
  external void setModel(dynamic /*IModel|IDiffEditorModel*/ model);
}

@anonymous
@JS()
abstract class IEditorContribution {
  external String getId();
  external void dispose();
  external dynamic saveViewState();
  external void restoreViewState(dynamic state);
}

@anonymous
@JS()
abstract class ICommonCodeEditor implements IEditor {
  external IDisposable onDidChangeModelContent(
      void listener(IModelContentChangedEvent e));
  external IDisposable onDidChangeModelLanguage(
      void listener(IModelLanguageChangedEvent e));
  external IDisposable onDidChangeModelOptions(
      void listener(IModelOptionsChangedEvent e));
  external IDisposable onDidChangeConfiguration(
      void listener(IConfigurationChangedEvent e));
  external IDisposable onDidChangeCursorPosition(
      void listener(ICursorPositionChangedEvent e));
  external IDisposable onDidChangeCursorSelection(
      void listener(ICursorSelectionChangedEvent e));
  external IDisposable onDidChangeModel(void listener(IModelChangedEvent e));
  external IDisposable onDidChangeModelDecorations(
      void listener(IModelDecorationsChangedEvent e));
  external IDisposable onDidFocusEditorText(void listener());
  external IDisposable onDidBlurEditorText(void listener());
  external IDisposable onDidFocusEditor(void listener());
  external IDisposable onDidBlurEditor(void listener());
  external ICodeEditorViewState saveViewState();
  external void restoreViewState(@checked ICodeEditorViewState state);
  external bool hasWidgetFocus();
  external dynamic/*=T*/ getContribution/*<T extends IEditorContribution>*/(
      String id);
  external IModel getModel();
  external InternalEditorOptions getConfiguration();
  external String getValue(
      [dynamic
          /*{
            preserveBOM: boolean;
            lineEnding: string;
        }*/
          options]);
  external void setValue(String newValue);
  external num getScrollWidth();
  external num getScrollLeft();
  external num getScrollHeight();
  external num getScrollTop();
  external void setScrollLeft(num newScrollLeft);
  external void setScrollTop(num newScrollTop);
  external void setScrollPosition(INewScrollPosition position);
  external IEditorAction getAction(String id);
  external void executeCommand(String source, ICommand command);
  external bool pushUndoStop();
  external bool executeEdits(
      String source, List<IIdentifiedSingleEditOperation> edits,
      [List<Selection> endCursoState]);
  external void executeCommands(String source, List<ICommand> commands);
  external List<IModelDecoration> getLineDecorations(num lineNumber);
  external List<String> deltaDecorations(
      List<String> oldDecorations, List<IModelDeltaDecoration> newDecorations);
  external EditorLayoutInfo getLayoutInfo();
}

@anonymous
@JS()
abstract class ICommonDiffEditor implements IEditor {
  external IDisposable onDidUpdateDiff(void listener());
  external IDiffEditorViewState saveViewState();
  external void restoreViewState(@checked IDiffEditorViewState state);
  external IDiffEditorModel getModel();
  external ICommonCodeEditor getOriginalEditor();
  external ICommonCodeEditor getModifiedEditor();
  external List<ILineChange> getLineChanges();
  external IDiffLineInformation getDiffLineInformationForOriginal(
      num lineNumber);
  external IDiffLineInformation getDiffLineInformationForModified(
      num lineNumber);
  external String getValue(
      [dynamic
          /*{
            preserveBOM: boolean;
            lineEnding: string;
        }*/
          options]);
}

@JS("monaco.editor.EditorType")
external dynamic
    /*{
        ICodeEditor: string;
        IDiffEditor: string;
    }*/
    get EditorType;
@JS("monaco.editor.EditorType")
external set EditorType(
    dynamic
        /*{
        ICodeEditor: string;
        IDiffEditor: string;
    }*/
        v);

@anonymous
@JS()
abstract class IModelLanguageChangedEvent {
  external String get oldLanguage;
  external set oldLanguage(String v);
  external String get newLanguage;
  external set newLanguage(String v);
  external factory IModelLanguageChangedEvent(
      {String oldLanguage, String newLanguage});
}

@anonymous
@JS()
abstract class IModelContentChange {
  external IRange get range;
  external set range(IRange v);
  external num get rangeLength;
  external set rangeLength(num v);
  external String get text;
  external set text(String v);
  external factory IModelContentChange(
      {IRange range, num rangeLength, String text});
}

@anonymous
@JS()
abstract class IModelContentChangedEvent {
  external List<IModelContentChange> get changes;
  external set changes(List<IModelContentChange> v);
  external String get eol;
  external set eol(String v);
  external num get versionId;
  external set versionId(num v);
  external bool get isUndoing;
  external set isUndoing(bool v);
  external bool get isRedoing;
  external set isRedoing(bool v);
  external bool get isFlush;
  external set isFlush(bool v);
  external factory IModelContentChangedEvent(
      {List<IModelContentChange> changes,
      String eol,
      num versionId,
      bool isUndoing,
      bool isRedoing,
      bool isFlush});
}

@anonymous
@JS()
abstract class IModelDecorationsChangedEvent {
  external List<String> get addedDecorations;
  external set addedDecorations(List<String> v);
  external List<String> get changedDecorations;
  external set changedDecorations(List<String> v);
  external List<String> get removedDecorations;
  external set removedDecorations(List<String> v);
  external factory IModelDecorationsChangedEvent(
      {List<String> addedDecorations,
      List<String> changedDecorations,
      List<String> removedDecorations});
}

@anonymous
@JS()
abstract class IModelTokensChangedEvent {
  external List<
      dynamic /*{
            /**
             * The start of the range (inclusive)
             */
            readonly fromLineNumber: number;
            /**
             * The end of the range (inclusive)
             */
            readonly toLineNumber: number;
        }*/
      > get ranges;
  external set ranges(
      List<
              dynamic /*{
            /**
             * The start of the range (inclusive)
             */
            readonly fromLineNumber: number;
            /**
             * The end of the range (inclusive)
             */
            readonly toLineNumber: number;
        }*/
              >
          v);
  external factory IModelTokensChangedEvent(
      {List<
              dynamic /*{
            /**
             * The start of the range (inclusive)
             */
            readonly fromLineNumber: number;
            /**
             * The end of the range (inclusive)
             */
            readonly toLineNumber: number;
        }*/
              >
          ranges});
}

@anonymous
@JS()
abstract class IModelOptionsChangedEvent {
  external bool get tabSize;
  external set tabSize(bool v);
  external bool get insertSpaces;
  external set insertSpaces(bool v);
  external bool get trimAutoWhitespace;
  external set trimAutoWhitespace(bool v);
  external factory IModelOptionsChangedEvent(
      {bool tabSize, bool insertSpaces, bool trimAutoWhitespace});
}

@JS("monaco.editor.CursorChangeReason")
class CursorChangeReason {
  external static num get NotSet;
  external static num get ContentFlush;
  external static num get RecoverFromMarkers;
  external static num get Explicit;
  external static num get Paste;
  external static num get Undo;
  external static num get Redo;
}

@anonymous
@JS()
abstract class ICursorPositionChangedEvent {
  external Position get position;
  external set position(Position v);
  external List<Position> get secondaryPositions;
  external set secondaryPositions(List<Position> v);
  external num /*enum CursorChangeReason*/ get reason;
  external set reason(num /*enum CursorChangeReason*/ v);
  external String get source;
  external set source(String v);
  external factory ICursorPositionChangedEvent(
      {Position position,
      List<Position> secondaryPositions,
      num /*enum CursorChangeReason*/ reason,
      String source});
}

@anonymous
@JS()
abstract class ICursorSelectionChangedEvent {
  external Selection get selection;
  external set selection(Selection v);
  external List<Selection> get secondarySelections;
  external set secondarySelections(List<Selection> v);
  external String get source;
  external set source(String v);
  external num /*enum CursorChangeReason*/ get reason;
  external set reason(num /*enum CursorChangeReason*/ v);
  external factory ICursorSelectionChangedEvent(
      {Selection selection,
      List<Selection> secondarySelections,
      String source,
      num /*enum CursorChangeReason*/ reason});
}

@anonymous
@JS()
abstract class IEditorScrollbarOptions {
  external num get arrowSize;
  external set arrowSize(num v);
  external String get vertical;
  external set vertical(String v);
  external String get horizontal;
  external set horizontal(String v);
  external bool get useShadows;
  external set useShadows(bool v);
  external bool get verticalHasArrows;
  external set verticalHasArrows(bool v);
  external bool get horizontalHasArrows;
  external set horizontalHasArrows(bool v);
  external bool get handleMouseWheel;
  external set handleMouseWheel(bool v);
  external num get horizontalScrollbarSize;
  external set horizontalScrollbarSize(num v);
  external num get verticalScrollbarSize;
  external set verticalScrollbarSize(num v);
  external num get verticalSliderSize;
  external set verticalSliderSize(num v);
  external num get horizontalSliderSize;
  external set horizontalSliderSize(num v);
  external factory IEditorScrollbarOptions(
      {num arrowSize,
      String vertical,
      String horizontal,
      bool useShadows,
      bool verticalHasArrows,
      bool horizontalHasArrows,
      bool handleMouseWheel,
      num horizontalScrollbarSize,
      num verticalScrollbarSize,
      num verticalSliderSize,
      num horizontalSliderSize});
}

@anonymous
@JS()
abstract class IEditorFindOptions {
  external bool get seedSearchStringFromSelection;
  external set seedSearchStringFromSelection(bool v);
  external bool get autoFindInSelection;
  external set autoFindInSelection(bool v);
  external factory IEditorFindOptions(
      {bool seedSearchStringFromSelection, bool autoFindInSelection});
}

@anonymous
@JS()
abstract class IEditorMinimapOptions {
  external bool get enabled;
  external set enabled(bool v);
  external String /*'always'|'mouseover'*/ get showSlider;
  external set showSlider(String /*'always'|'mouseover'*/ v);
  external bool get renderCharacters;
  external set renderCharacters(bool v);
  external num get maxColumn;
  external set maxColumn(num v);
  external factory IEditorMinimapOptions(
      {bool enabled,
      String /*'always'|'mouseover'*/ showSlider,
      bool renderCharacters,
      num maxColumn});
}

@anonymous
@JS()
abstract class IEditorOptions {
  external String get ariaLabel;
  external set ariaLabel(String v);
  external List<num> get rulers;
  external set rulers(List<num> v);
  external String get wordSeparators;
  external set wordSeparators(String v);
  external bool get selectionClipboard;
  external set selectionClipboard(bool v);
  external dynamic /*'on'|'off'|'relative'|Func1<num, String>*/ get lineNumbers;
  external set lineNumbers(
      dynamic /*'on'|'off'|'relative'|Func1<num, String>*/ v);
  external bool get selectOnLineNumbers;
  external set selectOnLineNumbers(bool v);
  external num get lineNumbersMinChars;
  external set lineNumbersMinChars(num v);
  external bool get glyphMargin;
  external set glyphMargin(bool v);
  external dynamic /*num|String*/ get lineDecorationsWidth;
  external set lineDecorationsWidth(dynamic /*num|String*/ v);
  external num get revealHorizontalRightPadding;
  external set revealHorizontalRightPadding(num v);
  external bool get roundedSelection;
  external set roundedSelection(bool v);
  external String get extraEditorClassName;
  external set extraEditorClassName(String v);
  external bool get readOnly;
  external set readOnly(bool v);
  external IEditorScrollbarOptions get scrollbar;
  external set scrollbar(IEditorScrollbarOptions v);
  external IEditorMinimapOptions get minimap;
  external set minimap(IEditorMinimapOptions v);
  external IEditorFindOptions get find;
  external set find(IEditorFindOptions v);
  external bool get fixedOverflowWidgets;
  external set fixedOverflowWidgets(bool v);
  external num get overviewRulerLanes;
  external set overviewRulerLanes(num v);
  external bool get overviewRulerBorder;
  external set overviewRulerBorder(bool v);
  external String get cursorBlinking;
  external set cursorBlinking(String v);
  external bool get mouseWheelZoom;
  external set mouseWheelZoom(bool v);
  external String get cursorStyle;
  external set cursorStyle(String v);
  external bool get fontLigatures;
  external set fontLigatures(bool v);
  external bool get disableLayerHinting;
  external set disableLayerHinting(bool v);
  external bool get disableMonospaceOptimizations;
  external set disableMonospaceOptimizations(bool v);
  external bool get hideCursorInOverviewRuler;
  external set hideCursorInOverviewRuler(bool v);
  external bool get scrollBeyondLastLine;
  external set scrollBeyondLastLine(bool v);
  external bool get automaticLayout;
  external set automaticLayout(bool v);
  external String /*'off'|'on'|'wordWrapColumn'|'bounded'*/ get wordWrap;
  external set wordWrap(String /*'off'|'on'|'wordWrapColumn'|'bounded'*/ v);
  external num get wordWrapColumn;
  external set wordWrapColumn(num v);
  external bool get wordWrapMinified;
  external set wordWrapMinified(bool v);
  external String get wrappingIndent;
  external set wrappingIndent(String v);
  external String get wordWrapBreakBeforeCharacters;
  external set wordWrapBreakBeforeCharacters(String v);
  external String get wordWrapBreakAfterCharacters;
  external set wordWrapBreakAfterCharacters(String v);
  external String get wordWrapBreakObtrusiveCharacters;
  external set wordWrapBreakObtrusiveCharacters(String v);
  external num get stopRenderingLineAfter;
  external set stopRenderingLineAfter(num v);
  external bool get hover;
  external set hover(bool v);
  external bool get links;
  external set links(bool v);
  external bool get contextmenu;
  external set contextmenu(bool v);
  external num get mouseWheelScrollSensitivity;
  external set mouseWheelScrollSensitivity(num v);
  external String /*'ctrlCmd'|'alt'*/ get multiCursorModifier;
  external set multiCursorModifier(String /*'ctrlCmd'|'alt'*/ v);
  external String /*'auto'|'off'|'on'*/ get accessibilitySupport;
  external set accessibilitySupport(String /*'auto'|'off'|'on'*/ v);
  external dynamic
      /*bool|{
            other: boolean;
            comments: boolean;
            strings: boolean;
        }*/
      get quickSuggestions;
  external set quickSuggestions(
      dynamic
          /*bool|{
            other: boolean;
            comments: boolean;
            strings: boolean;
        }*/
          v);
  external num get quickSuggestionsDelay;
  external set quickSuggestionsDelay(num v);
  external bool get parameterHints;
  external set parameterHints(bool v);
  external bool get iconsInSuggestions;
  external set iconsInSuggestions(bool v);
  external bool get autoClosingBrackets;
  external set autoClosingBrackets(bool v);
  external bool get autoIndent;
  external set autoIndent(bool v);
  external bool get formatOnType;
  external set formatOnType(bool v);
  external bool get formatOnPaste;
  external set formatOnPaste(bool v);
  external bool get dragAndDrop;
  external set dragAndDrop(bool v);
  external bool get suggestOnTriggerCharacters;
  external set suggestOnTriggerCharacters(bool v);
  external String /*'on'|'smart'|'off'*/ get acceptSuggestionOnEnter;
  external set acceptSuggestionOnEnter(String /*'on'|'smart'|'off'*/ v);
  external bool get acceptSuggestionOnCommitCharacter;
  external set acceptSuggestionOnCommitCharacter(bool v);
  external String /*'top'|'bottom'|'inline'|'none'*/ get snippetSuggestions;
  external set snippetSuggestions(String /*'top'|'bottom'|'inline'|'none'*/ v);
  external bool get emptySelectionClipboard;
  external set emptySelectionClipboard(bool v);
  external bool get wordBasedSuggestions;
  external set wordBasedSuggestions(bool v);
  external num get suggestFontSize;
  external set suggestFontSize(num v);
  external num get suggestLineHeight;
  external set suggestLineHeight(num v);
  external bool get selectionHighlight;
  external set selectionHighlight(bool v);
  external bool get occurrencesHighlight;
  external set occurrencesHighlight(bool v);
  external bool get codeLens;
  external set codeLens(bool v);
  external bool get folding;
  external set folding(bool v);
  external String /*'always'|'mouseover'*/ get showFoldingControls;
  external set showFoldingControls(String /*'always'|'mouseover'*/ v);
  external bool get matchBrackets;
  external set matchBrackets(bool v);
  external String /*'none'|'boundary'|'all'*/ get renderWhitespace;
  external set renderWhitespace(String /*'none'|'boundary'|'all'*/ v);
  external bool get renderControlCharacters;
  external set renderControlCharacters(bool v);
  external bool get renderIndentGuides;
  external set renderIndentGuides(bool v);
  external String /*'none'|'gutter'|'line'|'all'*/ get renderLineHighlight;
  external set renderLineHighlight(String /*'none'|'gutter'|'line'|'all'*/ v);
  external bool get useTabStops;
  external set useTabStops(bool v);
  external String get fontFamily;
  external set fontFamily(String v);
  external String /*'normal'|'bold'|'bolder'|'lighter'|'initial'|'inherit'|'100'|'200'|'300'|'400'|'500'|'600'|'700'|'800'|'900'*/ get fontWeight;
  external set fontWeight(
      String /*'normal'|'bold'|'bolder'|'lighter'|'initial'|'inherit'|'100'|'200'|'300'|'400'|'500'|'600'|'700'|'800'|'900'*/ v);
  external num get fontSize;
  external set fontSize(num v);
  external num get lineHeight;
  external set lineHeight(num v);
  external num get letterSpacing;
  external set letterSpacing(num v);
  external factory IEditorOptions(
      {String ariaLabel,
      List<num> rulers,
      String wordSeparators,
      bool selectionClipboard,
      dynamic /*'on'|'off'|'relative'|Func1<num, String>*/ lineNumbers,
      bool selectOnLineNumbers,
      num lineNumbersMinChars,
      bool glyphMargin,
      dynamic /*num|String*/ lineDecorationsWidth,
      num revealHorizontalRightPadding,
      bool roundedSelection,
      String extraEditorClassName,
      bool readOnly,
      IEditorScrollbarOptions scrollbar,
      IEditorMinimapOptions minimap,
      IEditorFindOptions find,
      bool fixedOverflowWidgets,
      num overviewRulerLanes,
      bool overviewRulerBorder,
      String cursorBlinking,
      bool mouseWheelZoom,
      String cursorStyle,
      bool fontLigatures,
      bool disableLayerHinting,
      bool disableMonospaceOptimizations,
      bool hideCursorInOverviewRuler,
      bool scrollBeyondLastLine,
      bool automaticLayout,
      String /*'off'|'on'|'wordWrapColumn'|'bounded'*/ wordWrap,
      num wordWrapColumn,
      bool wordWrapMinified,
      String wrappingIndent,
      String wordWrapBreakBeforeCharacters,
      String wordWrapBreakAfterCharacters,
      String wordWrapBreakObtrusiveCharacters,
      num stopRenderingLineAfter,
      bool hover,
      bool links,
      bool contextmenu,
      num mouseWheelScrollSensitivity,
      String /*'ctrlCmd'|'alt'*/ multiCursorModifier,
      String /*'auto'|'off'|'on'*/ accessibilitySupport,
      dynamic
          /*bool|{
            other: boolean;
            comments: boolean;
            strings: boolean;
        }*/
          quickSuggestions,
      num quickSuggestionsDelay,
      bool parameterHints,
      bool iconsInSuggestions,
      bool autoClosingBrackets,
      bool autoIndent,
      bool formatOnType,
      bool formatOnPaste,
      bool dragAndDrop,
      bool suggestOnTriggerCharacters,
      String /*'on'|'smart'|'off'*/ acceptSuggestionOnEnter,
      bool acceptSuggestionOnCommitCharacter,
      String /*'top'|'bottom'|'inline'|'none'*/ snippetSuggestions,
      bool emptySelectionClipboard,
      bool wordBasedSuggestions,
      num suggestFontSize,
      num suggestLineHeight,
      bool selectionHighlight,
      bool occurrencesHighlight,
      bool codeLens,
      bool folding,
      String /*'always'|'mouseover'*/ showFoldingControls,
      bool matchBrackets,
      String /*'none'|'boundary'|'all'*/ renderWhitespace,
      bool renderControlCharacters,
      bool renderIndentGuides,
      String /*'none'|'gutter'|'line'|'all'*/ renderLineHighlight,
      bool useTabStops,
      String fontFamily,
      String /*'normal'|'bold'|'bolder'|'lighter'|'initial'|'inherit'|'100'|'200'|'300'|'400'|'500'|'600'|'700'|'800'|'900'*/ fontWeight,
      num fontSize,
      num lineHeight,
      num letterSpacing});
}

@anonymous
@JS()
abstract class IDiffEditorOptions implements IEditorOptions {
  external bool get enableSplitViewResizing;
  external set enableSplitViewResizing(bool v);
  external bool get renderSideBySide;
  external set renderSideBySide(bool v);
  external bool get ignoreTrimWhitespace;
  external set ignoreTrimWhitespace(bool v);
  external bool get renderIndicators;
  external set renderIndicators(bool v);
  external bool get originalEditable;
  external set originalEditable(bool v);
  external factory IDiffEditorOptions(
      {bool enableSplitViewResizing,
      bool renderSideBySide,
      bool ignoreTrimWhitespace,
      bool renderIndicators,
      bool originalEditable,
      String ariaLabel,
      List<num> rulers,
      String wordSeparators,
      bool selectionClipboard,
      dynamic /*'on'|'off'|'relative'|Func1<num, String>*/ lineNumbers,
      bool selectOnLineNumbers,
      num lineNumbersMinChars,
      bool glyphMargin,
      dynamic /*num|String*/ lineDecorationsWidth,
      num revealHorizontalRightPadding,
      bool roundedSelection,
      String extraEditorClassName,
      bool readOnly,
      IEditorScrollbarOptions scrollbar,
      IEditorMinimapOptions minimap,
      IEditorFindOptions find,
      bool fixedOverflowWidgets,
      num overviewRulerLanes,
      bool overviewRulerBorder,
      String cursorBlinking,
      bool mouseWheelZoom,
      String cursorStyle,
      bool fontLigatures,
      bool disableLayerHinting,
      bool disableMonospaceOptimizations,
      bool hideCursorInOverviewRuler,
      bool scrollBeyondLastLine,
      bool automaticLayout,
      String /*'off'|'on'|'wordWrapColumn'|'bounded'*/ wordWrap,
      num wordWrapColumn,
      bool wordWrapMinified,
      String wrappingIndent,
      String wordWrapBreakBeforeCharacters,
      String wordWrapBreakAfterCharacters,
      String wordWrapBreakObtrusiveCharacters,
      num stopRenderingLineAfter,
      bool hover,
      bool links,
      bool contextmenu,
      num mouseWheelScrollSensitivity,
      String /*'ctrlCmd'|'alt'*/ multiCursorModifier,
      String /*'auto'|'off'|'on'*/ accessibilitySupport,
      dynamic
          /*bool|{
            other: boolean;
            comments: boolean;
            strings: boolean;
        }*/
          quickSuggestions,
      num quickSuggestionsDelay,
      bool parameterHints,
      bool iconsInSuggestions,
      bool autoClosingBrackets,
      bool autoIndent,
      bool formatOnType,
      bool formatOnPaste,
      bool dragAndDrop,
      bool suggestOnTriggerCharacters,
      String /*'on'|'smart'|'off'*/ acceptSuggestionOnEnter,
      bool acceptSuggestionOnCommitCharacter,
      String /*'top'|'bottom'|'inline'|'none'*/ snippetSuggestions,
      bool emptySelectionClipboard,
      bool wordBasedSuggestions,
      num suggestFontSize,
      num suggestLineHeight,
      bool selectionHighlight,
      bool occurrencesHighlight,
      bool codeLens,
      bool folding,
      String /*'always'|'mouseover'*/ showFoldingControls,
      bool matchBrackets,
      String /*'none'|'boundary'|'all'*/ renderWhitespace,
      bool renderControlCharacters,
      bool renderIndentGuides,
      String /*'none'|'gutter'|'line'|'all'*/ renderLineHighlight,
      bool useTabStops,
      String fontFamily,
      String /*'normal'|'bold'|'bolder'|'lighter'|'initial'|'inherit'|'100'|'200'|'300'|'400'|'500'|'600'|'700'|'800'|'900'*/ fontWeight,
      num fontSize,
      num lineHeight,
      num letterSpacing});
}

@JS("monaco.editor.RenderMinimap")
class RenderMinimap {
  external static num get None;
  external static num get Small;
  external static num get Large;
  external static num get SmallBlocks;
  external static num get LargeBlocks;
}

/// Describes how to indent wrapped lines.
@JS("monaco.editor.WrappingIndent")
class WrappingIndent {
  external static num get

      /// No indentation => wrapped lines begin at column 1.
      None;
  external static num get

      /// Same => wrapped lines get the same indentation as the parent.
      Same;
  external static num get

      /// Indent => wrapped lines get +1 indentation as the parent.
      Indent;
}

/// The kind of animation in which the editor's cursor should be rendered.
@JS("monaco.editor.TextEditorCursorBlinkingStyle")
class TextEditorCursorBlinkingStyle {
  external static num get

      /// Hidden
      Hidden;
  external static num get

      /// Blinking
      Blink;
  external static num get

      /// Blinking with smooth fading
      Smooth;
  external static num get

      /// Blinking with prolonged filled state and smooth fading
      Phase;
  external static num get

      /// Expand collapse animation on the y axis
      Expand;
  external static num get

      /// No-Blinking
      Solid;
}

/// The style in which the editor's cursor should be rendered.
@JS("monaco.editor.TextEditorCursorStyle")
class TextEditorCursorStyle {
  external static num get

      /// As a vertical line (sitting between two characters).
      Line;
  external static num get

      /// As a block (sitting on top of a character).
      Block;
  external static num get

      /// As a horizontal line (sitting under a character).
      Underline;
  external static num get

      /// As a thin vertical line (sitting between two characters).
      LineThin;
  external static num get

      /// As an outlined block (sitting on top of a character).
      BlockOutline;
  external static num get

      /// As a thin horizontal line (sitting under a character).
      UnderlineThin;
}

@anonymous
@JS()
abstract class InternalEditorScrollbarOptions {
  external num get arrowSize;
  external set arrowSize(num v);
  external num /*enum ScrollbarVisibility*/ get vertical;
  external set vertical(num /*enum ScrollbarVisibility*/ v);
  external num /*enum ScrollbarVisibility*/ get horizontal;
  external set horizontal(num /*enum ScrollbarVisibility*/ v);
  external bool get useShadows;
  external set useShadows(bool v);
  external bool get verticalHasArrows;
  external set verticalHasArrows(bool v);
  external bool get horizontalHasArrows;
  external set horizontalHasArrows(bool v);
  external bool get handleMouseWheel;
  external set handleMouseWheel(bool v);
  external num get horizontalScrollbarSize;
  external set horizontalScrollbarSize(num v);
  external num get horizontalSliderSize;
  external set horizontalSliderSize(num v);
  external num get verticalScrollbarSize;
  external set verticalScrollbarSize(num v);
  external num get verticalSliderSize;
  external set verticalSliderSize(num v);
  external num get mouseWheelScrollSensitivity;
  external set mouseWheelScrollSensitivity(num v);
  external factory InternalEditorScrollbarOptions(
      {num arrowSize,
      num /*enum ScrollbarVisibility*/ vertical,
      num /*enum ScrollbarVisibility*/ horizontal,
      bool useShadows,
      bool verticalHasArrows,
      bool horizontalHasArrows,
      bool handleMouseWheel,
      num horizontalScrollbarSize,
      num horizontalSliderSize,
      num verticalScrollbarSize,
      num verticalSliderSize,
      num mouseWheelScrollSensitivity});
}

@anonymous
@JS()
abstract class InternalEditorMinimapOptions {
  external bool get enabled;
  external set enabled(bool v);
  external String /*'always'|'mouseover'*/ get showSlider;
  external set showSlider(String /*'always'|'mouseover'*/ v);
  external bool get renderCharacters;
  external set renderCharacters(bool v);
  external num get maxColumn;
  external set maxColumn(num v);
  external factory InternalEditorMinimapOptions(
      {bool enabled,
      String /*'always'|'mouseover'*/ showSlider,
      bool renderCharacters,
      num maxColumn});
}

@anonymous
@JS()
abstract class InternalEditorFindOptions {
  external bool get seedSearchStringFromSelection;
  external set seedSearchStringFromSelection(bool v);
  external bool get autoFindInSelection;
  external set autoFindInSelection(bool v);
  external factory InternalEditorFindOptions(
      {bool seedSearchStringFromSelection, bool autoFindInSelection});
}

@anonymous
@JS()
abstract class EditorWrappingInfo {
  external bool get inDiffEditor;
  external set inDiffEditor(bool v);
  external bool get isDominatedByLongLines;
  external set isDominatedByLongLines(bool v);
  external bool get isWordWrapMinified;
  external set isWordWrapMinified(bool v);
  external bool get isViewportWrapping;
  external set isViewportWrapping(bool v);
  external num get wrappingColumn;
  external set wrappingColumn(num v);
  external num /*enum WrappingIndent*/ get wrappingIndent;
  external set wrappingIndent(num /*enum WrappingIndent*/ v);
  external String get wordWrapBreakBeforeCharacters;
  external set wordWrapBreakBeforeCharacters(String v);
  external String get wordWrapBreakAfterCharacters;
  external set wordWrapBreakAfterCharacters(String v);
  external String get wordWrapBreakObtrusiveCharacters;
  external set wordWrapBreakObtrusiveCharacters(String v);
  external factory EditorWrappingInfo(
      {bool inDiffEditor,
      bool isDominatedByLongLines,
      bool isWordWrapMinified,
      bool isViewportWrapping,
      num wrappingColumn,
      num /*enum WrappingIndent*/ wrappingIndent,
      String wordWrapBreakBeforeCharacters,
      String wordWrapBreakAfterCharacters,
      String wordWrapBreakObtrusiveCharacters});
}

@anonymous
@JS()
abstract class InternalEditorViewOptions {
  external String get extraEditorClassName;
  external set extraEditorClassName(String v);
  external bool get disableMonospaceOptimizations;
  external set disableMonospaceOptimizations(bool v);
  external List<num> get rulers;
  external set rulers(List<num> v);
  external String get ariaLabel;
  external set ariaLabel(String v);
  external bool get renderLineNumbers;
  external set renderLineNumbers(bool v);
  external Func1<num, String> get renderCustomLineNumbers;
  external set renderCustomLineNumbers(Func1<num, String> v);
  external bool get renderRelativeLineNumbers;
  external set renderRelativeLineNumbers(bool v);
  external bool get selectOnLineNumbers;
  external set selectOnLineNumbers(bool v);
  external bool get glyphMargin;
  external set glyphMargin(bool v);
  external num get revealHorizontalRightPadding;
  external set revealHorizontalRightPadding(num v);
  external bool get roundedSelection;
  external set roundedSelection(bool v);
  external num get overviewRulerLanes;
  external set overviewRulerLanes(num v);
  external bool get overviewRulerBorder;
  external set overviewRulerBorder(bool v);
  external num /*enum TextEditorCursorBlinkingStyle*/ get cursorBlinking;
  external set cursorBlinking(num /*enum TextEditorCursorBlinkingStyle*/ v);
  external bool get mouseWheelZoom;
  external set mouseWheelZoom(bool v);
  external num /*enum TextEditorCursorStyle*/ get cursorStyle;
  external set cursorStyle(num /*enum TextEditorCursorStyle*/ v);
  external bool get hideCursorInOverviewRuler;
  external set hideCursorInOverviewRuler(bool v);
  external bool get scrollBeyondLastLine;
  external set scrollBeyondLastLine(bool v);
  external num get stopRenderingLineAfter;
  external set stopRenderingLineAfter(num v);
  external String /*'none'|'boundary'|'all'*/ get renderWhitespace;
  external set renderWhitespace(String /*'none'|'boundary'|'all'*/ v);
  external bool get renderControlCharacters;
  external set renderControlCharacters(bool v);
  external bool get fontLigatures;
  external set fontLigatures(bool v);
  external bool get renderIndentGuides;
  external set renderIndentGuides(bool v);
  external String /*'none'|'gutter'|'line'|'all'*/ get renderLineHighlight;
  external set renderLineHighlight(String /*'none'|'gutter'|'line'|'all'*/ v);
  external InternalEditorScrollbarOptions get scrollbar;
  external set scrollbar(InternalEditorScrollbarOptions v);
  external InternalEditorMinimapOptions get minimap;
  external set minimap(InternalEditorMinimapOptions v);
  external bool get fixedOverflowWidgets;
  external set fixedOverflowWidgets(bool v);
  external factory InternalEditorViewOptions(
      {String extraEditorClassName,
      bool disableMonospaceOptimizations,
      List<num> rulers,
      String ariaLabel,
      bool renderLineNumbers,
      Func1<num, String> renderCustomLineNumbers,
      bool renderRelativeLineNumbers,
      bool selectOnLineNumbers,
      bool glyphMargin,
      num revealHorizontalRightPadding,
      bool roundedSelection,
      num overviewRulerLanes,
      bool overviewRulerBorder,
      num /*enum TextEditorCursorBlinkingStyle*/ cursorBlinking,
      bool mouseWheelZoom,
      num /*enum TextEditorCursorStyle*/ cursorStyle,
      bool hideCursorInOverviewRuler,
      bool scrollBeyondLastLine,
      num stopRenderingLineAfter,
      String /*'none'|'boundary'|'all'*/ renderWhitespace,
      bool renderControlCharacters,
      bool fontLigatures,
      bool renderIndentGuides,
      String /*'none'|'gutter'|'line'|'all'*/ renderLineHighlight,
      InternalEditorScrollbarOptions scrollbar,
      InternalEditorMinimapOptions minimap,
      bool fixedOverflowWidgets});
}

@anonymous
@JS()
abstract class EditorContribOptions {
  external bool get selectionClipboard;
  external set selectionClipboard(bool v);
  external bool get hover;
  external set hover(bool v);
  external bool get links;
  external set links(bool v);
  external bool get contextmenu;
  external set contextmenu(bool v);
  external dynamic
      /*bool|{
            other: boolean;
            comments: boolean;
            strings: boolean;
        }*/
      get quickSuggestions;
  external set quickSuggestions(
      dynamic
          /*bool|{
            other: boolean;
            comments: boolean;
            strings: boolean;
        }*/
          v);
  external num get quickSuggestionsDelay;
  external set quickSuggestionsDelay(num v);
  external bool get parameterHints;
  external set parameterHints(bool v);
  external bool get iconsInSuggestions;
  external set iconsInSuggestions(bool v);
  external bool get formatOnType;
  external set formatOnType(bool v);
  external bool get formatOnPaste;
  external set formatOnPaste(bool v);
  external bool get suggestOnTriggerCharacters;
  external set suggestOnTriggerCharacters(bool v);
  external String /*'on'|'smart'|'off'*/ get acceptSuggestionOnEnter;
  external set acceptSuggestionOnEnter(String /*'on'|'smart'|'off'*/ v);
  external bool get acceptSuggestionOnCommitCharacter;
  external set acceptSuggestionOnCommitCharacter(bool v);
  external String /*'top'|'bottom'|'inline'|'none'*/ get snippetSuggestions;
  external set snippetSuggestions(String /*'top'|'bottom'|'inline'|'none'*/ v);
  external bool get wordBasedSuggestions;
  external set wordBasedSuggestions(bool v);
  external num get suggestFontSize;
  external set suggestFontSize(num v);
  external num get suggestLineHeight;
  external set suggestLineHeight(num v);
  external bool get selectionHighlight;
  external set selectionHighlight(bool v);
  external bool get occurrencesHighlight;
  external set occurrencesHighlight(bool v);
  external bool get codeLens;
  external set codeLens(bool v);
  external bool get folding;
  external set folding(bool v);
  external String /*'always'|'mouseover'*/ get showFoldingControls;
  external set showFoldingControls(String /*'always'|'mouseover'*/ v);
  external bool get matchBrackets;
  external set matchBrackets(bool v);
  external InternalEditorFindOptions get find;
  external set find(InternalEditorFindOptions v);
  external factory EditorContribOptions(
      {bool selectionClipboard,
      bool hover,
      bool links,
      bool contextmenu,
      dynamic
          /*bool|{
            other: boolean;
            comments: boolean;
            strings: boolean;
        }*/
          quickSuggestions,
      num quickSuggestionsDelay,
      bool parameterHints,
      bool iconsInSuggestions,
      bool formatOnType,
      bool formatOnPaste,
      bool suggestOnTriggerCharacters,
      String /*'on'|'smart'|'off'*/ acceptSuggestionOnEnter,
      bool acceptSuggestionOnCommitCharacter,
      String /*'top'|'bottom'|'inline'|'none'*/ snippetSuggestions,
      bool wordBasedSuggestions,
      num suggestFontSize,
      num suggestLineHeight,
      bool selectionHighlight,
      bool occurrencesHighlight,
      bool codeLens,
      bool folding,
      String /*'always'|'mouseover'*/ showFoldingControls,
      bool matchBrackets,
      InternalEditorFindOptions find});
}

/// Internal configuration options (transformed or computed) for the editor.
@JS("monaco.editor.InternalEditorOptions")
class InternalEditorOptions {
  // @Ignore
  InternalEditorOptions.fakeConstructor$();
  external get JS$_internalEditorOptionsBrand;
  external set JS$_internalEditorOptionsBrand(v);
  external bool get canUseLayerHinting;
  external set canUseLayerHinting(bool v);
  external num get pixelRatio;
  external set pixelRatio(num v);
  external String get editorClassName;
  external set editorClassName(String v);
  external num get lineHeight;
  external set lineHeight(num v);
  external bool get readOnly;
  external set readOnly(bool v);
  external String /*'altKey'|'ctrlKey'|'metaKey'*/ get multiCursorModifier;
  external set multiCursorModifier(String /*'altKey'|'ctrlKey'|'metaKey'*/ v);
  external String get wordSeparators;
  external set wordSeparators(String v);
  external bool get autoClosingBrackets;
  external set autoClosingBrackets(bool v);
  external bool get autoIndent;
  external set autoIndent(bool v);
  external bool get useTabStops;
  external set useTabStops(bool v);
  external bool get tabFocusMode;
  external set tabFocusMode(bool v);
  external bool get dragAndDrop;
  external set dragAndDrop(bool v);
  external bool get emptySelectionClipboard;
  external set emptySelectionClipboard(bool v);
  external EditorLayoutInfo get layoutInfo;
  external set layoutInfo(EditorLayoutInfo v);
  external FontInfo get fontInfo;
  external set fontInfo(FontInfo v);
  external InternalEditorViewOptions get viewInfo;
  external set viewInfo(InternalEditorViewOptions v);
  external EditorWrappingInfo get wrappingInfo;
  external set wrappingInfo(EditorWrappingInfo v);
  external EditorContribOptions get contribInfo;
  external set contribInfo(EditorContribOptions v);
}

/// A description for the overview ruler position.
@anonymous
@JS()
abstract class OverviewRulerPosition {
  /// Width of the overview ruler
  external num get width;
  external set width(num v);

  /// Height of the overview ruler
  external num get height;
  external set height(num v);

  /// Top position for the overview ruler
  external num get top;
  external set top(num v);

  /// Right position for the overview ruler
  external num get right;
  external set right(num v);
  external factory OverviewRulerPosition(
      {num width, num height, num top, num right});
}

/// The internal layout details of the editor.
@anonymous
@JS()
abstract class EditorLayoutInfo {
  /// Full editor width.
  external num get width;
  external set width(num v);

  /// Full editor height.
  external num get height;
  external set height(num v);

  /// Left position for the glyph margin.
  external num get glyphMarginLeft;
  external set glyphMarginLeft(num v);

  /// The width of the glyph margin.
  external num get glyphMarginWidth;
  external set glyphMarginWidth(num v);

  /// The height of the glyph margin.
  external num get glyphMarginHeight;
  external set glyphMarginHeight(num v);

  /// Left position for the line numbers.
  external num get lineNumbersLeft;
  external set lineNumbersLeft(num v);

  /// The width of the line numbers.
  external num get lineNumbersWidth;
  external set lineNumbersWidth(num v);

  /// The height of the line numbers.
  external num get lineNumbersHeight;
  external set lineNumbersHeight(num v);

  /// Left position for the line decorations.
  external num get decorationsLeft;
  external set decorationsLeft(num v);

  /// The width of the line decorations.
  external num get decorationsWidth;
  external set decorationsWidth(num v);

  /// The height of the line decorations.
  external num get decorationsHeight;
  external set decorationsHeight(num v);

  /// Left position for the content (actual text)
  external num get contentLeft;
  external set contentLeft(num v);

  /// The width of the content (actual text)
  external num get contentWidth;
  external set contentWidth(num v);

  /// The height of the content (actual height)
  external num get contentHeight;
  external set contentHeight(num v);

  /// The width of the minimap
  external num get minimapWidth;
  external set minimapWidth(num v);

  /// Minimap render type
  external num /*enum RenderMinimap*/ get renderMinimap;
  external set renderMinimap(num /*enum RenderMinimap*/ v);

  /// The number of columns (of typical characters) fitting on a viewport line.
  external num get viewportColumn;
  external set viewportColumn(num v);

  /// The width of the vertical scrollbar.
  external num get verticalScrollbarWidth;
  external set verticalScrollbarWidth(num v);

  /// The height of the horizontal scrollbar.
  external num get horizontalScrollbarHeight;
  external set horizontalScrollbarHeight(num v);

  /// The position of the overview ruler.
  external OverviewRulerPosition get overviewRuler;
  external set overviewRuler(OverviewRulerPosition v);
  external factory EditorLayoutInfo(
      {num width,
      num height,
      num glyphMarginLeft,
      num glyphMarginWidth,
      num glyphMarginHeight,
      num lineNumbersLeft,
      num lineNumbersWidth,
      num lineNumbersHeight,
      num decorationsLeft,
      num decorationsWidth,
      num decorationsHeight,
      num contentLeft,
      num contentWidth,
      num contentHeight,
      num minimapWidth,
      num /*enum RenderMinimap*/ renderMinimap,
      num viewportColumn,
      num verticalScrollbarWidth,
      num horizontalScrollbarHeight,
      OverviewRulerPosition overviewRuler});
}

/// An event describing that the configuration of the editor has changed.
@anonymous
@JS()
abstract class IConfigurationChangedEvent {
  external bool get canUseLayerHinting;
  external set canUseLayerHinting(bool v);
  external bool get pixelRatio;
  external set pixelRatio(bool v);
  external bool get editorClassName;
  external set editorClassName(bool v);
  external bool get lineHeight;
  external set lineHeight(bool v);
  external bool get readOnly;
  external set readOnly(bool v);
  external bool get accessibilitySupport;
  external set accessibilitySupport(bool v);
  external bool get multiCursorModifier;
  external set multiCursorModifier(bool v);
  external bool get wordSeparators;
  external set wordSeparators(bool v);
  external bool get autoClosingBrackets;
  external set autoClosingBrackets(bool v);
  external bool get autoIndent;
  external set autoIndent(bool v);
  external bool get useTabStops;
  external set useTabStops(bool v);
  external bool get tabFocusMode;
  external set tabFocusMode(bool v);
  external bool get dragAndDrop;
  external set dragAndDrop(bool v);
  external bool get emptySelectionClipboard;
  external set emptySelectionClipboard(bool v);
  external bool get layoutInfo;
  external set layoutInfo(bool v);
  external bool get fontInfo;
  external set fontInfo(bool v);
  external bool get viewInfo;
  external set viewInfo(bool v);
  external bool get wrappingInfo;
  external set wrappingInfo(bool v);
  external bool get contribInfo;
  external set contribInfo(bool v);
  external factory IConfigurationChangedEvent(
      {bool canUseLayerHinting,
      bool pixelRatio,
      bool editorClassName,
      bool lineHeight,
      bool readOnly,
      bool accessibilitySupport,
      bool multiCursorModifier,
      bool wordSeparators,
      bool autoClosingBrackets,
      bool autoIndent,
      bool useTabStops,
      bool tabFocusMode,
      bool dragAndDrop,
      bool emptySelectionClipboard,
      bool layoutInfo,
      bool fontInfo,
      bool viewInfo,
      bool wrappingInfo,
      bool contribInfo});
}

/// A view zone is a full horizontal rectangle that 'pushes' text down.
/// The editor reserves space for view zones when rendering.
@anonymous
@JS()
abstract class IViewZone {
  /// The line number after which this zone should appear.
  /// Use 0 to place a view zone before the first line number.
  external num get afterLineNumber;
  external set afterLineNumber(num v);

  /// The column after which this zone should appear.
  /// If not set, the maxLineColumn of `afterLineNumber` will be used.
  external num get afterColumn;
  external set afterColumn(num v);

  /// Suppress mouse down events.
  /// If set, the editor will attach a mouse down listener to the view zone and .preventDefault on it.
  /// Defaults to false
  external bool get suppressMouseDown;
  external set suppressMouseDown(bool v);

  /// The height in lines of the view zone.
  /// If specified, `heightInPx` will be used instead of this.
  /// If neither `heightInPx` nor `heightInLines` is specified, a default of `heightInLines` = 1 will be chosen.
  external num get heightInLines;
  external set heightInLines(num v);

  /// The height in px of the view zone.
  /// If this is set, the editor will give preference to it rather than `heightInLines` above.
  /// If neither `heightInPx` nor `heightInLines` is specified, a default of `heightInLines` = 1 will be chosen.
  external num get heightInPx;
  external set heightInPx(num v);

  /// The dom node of the view zone
  external HtmlElement get domNode;
  external set domNode(HtmlElement v);

  /// An optional dom node for the view zone that will be placed in the margin area.
  external HtmlElement get marginDomNode;
  external set marginDomNode(HtmlElement v);

  /// Callback which gives the relative top of the view zone as it appears (taking scrolling into account).
  external VoidFunc1<num> get onDomNodeTop;
  external set onDomNodeTop(VoidFunc1<num> v);

  /// Callback which gives the height in pixels of the view zone.
  external VoidFunc1<num> get onComputedHeight;
  external set onComputedHeight(VoidFunc1<num> v);
  external factory IViewZone(
      {num afterLineNumber,
      num afterColumn,
      bool suppressMouseDown,
      num heightInLines,
      num heightInPx,
      HtmlElement domNode,
      HtmlElement marginDomNode,
      VoidFunc1<num> onDomNodeTop,
      VoidFunc1<num> onComputedHeight});
}

/// An accessor that allows for zones to be added or removed.
@anonymous
@JS()
abstract class IViewZoneChangeAccessor {
  /// Create a new view zone.
  external num addZone(IViewZone zone);

  /// Remove a zone
  external void removeZone(num id);

  /// Change a zone's position.
  /// The editor will rescan the `afterLineNumber` and `afterColumn` properties of a view zone.
  external void layoutZone(num id);
}

/// A positioning preference for rendering content widgets.
@JS("monaco.editor.ContentWidgetPositionPreference")
class ContentWidgetPositionPreference {
  external static num get

      /// Place the content widget exactly at a position
      EXACT;
  external static num get

      /// Place the content widget above a position
      ABOVE;
  external static num get

      /// Place the content widget below a position
      BELOW;
}

/// A position for rendering content widgets.
@anonymous
@JS()
abstract class IContentWidgetPosition {
  /// Desired position for the content widget.
  /// `preference` will also affect the placement.
  external IPosition get position;
  external set position(IPosition v);

  /// Placement preference for position, in order of preference.
  external List<num /*enum ContentWidgetPositionPreference*/ > get preference;
  external set preference(
      List<num /*enum ContentWidgetPositionPreference*/ > v);
  external factory IContentWidgetPosition(
      {IPosition position,
      List<num /*enum ContentWidgetPositionPreference*/ > preference});
}

/// A content widget renders inline with the text and can be easily placed 'near' an editor position.
@anonymous
@JS()
abstract class IContentWidget {
  /// Render this content widget in a location where it could overflow the editor's view dom node.
  external bool get allowEditorOverflow;
  external set allowEditorOverflow(bool v);
  external bool get suppressMouseDown;
  external set suppressMouseDown(bool v);

  /// Get a unique identifier of the content widget.
  external String getId();

  /// Get the dom node of the content widget.
  external HtmlElement getDomNode();

  /// Get the placement of the content widget.
  /// If null is returned, the content widget will be placed off screen.
  external IContentWidgetPosition getPosition();
}

/// A positioning preference for rendering overlay widgets.
@JS("monaco.editor.OverlayWidgetPositionPreference")
class OverlayWidgetPositionPreference {
  external static num get

      /// Position the overlay widget in the top right corner
      TOP_RIGHT_CORNER;
  external static num get

      /// Position the overlay widget in the bottom right corner
      BOTTOM_RIGHT_CORNER;
  external static num get

      /// Position the overlay widget in the top center
      TOP_CENTER;
}

/// A position for rendering overlay widgets.
@anonymous
@JS()
abstract class IOverlayWidgetPosition {
  /// The position preference for the overlay widget.
  external num /*enum OverlayWidgetPositionPreference*/ get preference;
  external set preference(num /*enum OverlayWidgetPositionPreference*/ v);
  external factory IOverlayWidgetPosition(
      {num /*enum OverlayWidgetPositionPreference*/ preference});
}

/// An overlay widgets renders on top of the text.
@anonymous
@JS()
abstract class IOverlayWidget {
  /// Get a unique identifier of the overlay widget.
  external String getId();

  /// Get the dom node of the overlay widget.
  external HtmlElement getDomNode();

  /// Get the placement of the overlay widget.
  /// If null is returned, the overlay widget is responsible to place itself.
  external IOverlayWidgetPosition getPosition();
}

/// Type of hit element with the mouse in the editor.
@JS("monaco.editor.MouseTargetType")
class MouseTargetType {
  external static num get

      /// Mouse is on top of an unknown element.
      UNKNOWN;
  external static num get

      /// Mouse is on top of the textarea used for input.
      TEXTAREA;
  external static num get

      /// Mouse is on top of the glyph margin
      GUTTER_GLYPH_MARGIN;
  external static num get

      /// Mouse is on top of the line numbers
      GUTTER_LINE_NUMBERS;
  external static num get

      /// Mouse is on top of the line decorations
      GUTTER_LINE_DECORATIONS;
  external static num get

      /// Mouse is on top of the whitespace left in the gutter by a view zone.
      GUTTER_VIEW_ZONE;
  external static num get

      /// Mouse is on top of text in the content.
      CONTENT_TEXT;
  external static num get

      /// Mouse is on top of empty space in the content (e.g. after line text or below last line)
      CONTENT_EMPTY;
  external static num get

      /// Mouse is on top of a view zone in the content.
      CONTENT_VIEW_ZONE;
  external static num get

      /// Mouse is on top of a content widget.
      CONTENT_WIDGET;
  external static num get

      /// Mouse is on top of the decorations overview ruler.
      OVERVIEW_RULER;
  external static num get

      /// Mouse is on top of a scrollbar.
      SCROLLBAR;
  external static num get

      /// Mouse is on top of an overlay widget.
      OVERLAY_WIDGET;
  external static num get

      /// Mouse is outside of the editor.
      OUTSIDE_EDITOR;
}

/// Target hit with the mouse in the editor.
@anonymous
@JS()
abstract class IMouseTarget {
  /// The target element
  external Element get element;
  external set element(Element v);

  /// The target type
  external num /*enum MouseTargetType*/ get type;
  external set type(num /*enum MouseTargetType*/ v);

  /// The 'approximate' editor position
  external Position get position;
  external set position(Position v);

  /// Desired mouse column (e.g. when position.column gets clamped to text length -- clicking after text on a line).
  external num get mouseColumn;
  external set mouseColumn(num v);

  /// The 'approximate' editor range
  external Range get range;
  external set range(Range v);

  /// Some extra detail.
  external dynamic get detail;
  external set detail(dynamic v);
  external factory IMouseTarget(
      {Element element,
      num /*enum MouseTargetType*/ type,
      Position position,
      num mouseColumn,
      Range range,
      dynamic detail});
}

/// A mouse event originating from the editor.
@anonymous
@JS()
abstract class IEditorMouseEvent {
  external IMouseEvent get event;
  external set event(IMouseEvent v);
  external IMouseTarget get target;
  external set target(IMouseTarget v);
  external factory IEditorMouseEvent({IMouseEvent event, IMouseTarget target});
}

/// A rich code editor.
@anonymous
@JS()
abstract class ICodeEditor implements ICommonCodeEditor {
  /// An event emitted on a "mouseup".
  /// @event
  external IDisposable onMouseUp(void listener(IEditorMouseEvent e));

  /// An event emitted on a "mousedown".
  /// @event
  external IDisposable onMouseDown(void listener(IEditorMouseEvent e));

  /// An event emitted on a "contextmenu".
  /// @event
  external IDisposable onContextMenu(void listener(IEditorMouseEvent e));

  /// An event emitted on a "mousemove".
  /// @event
  external IDisposable onMouseMove(void listener(IEditorMouseEvent e));

  /// An event emitted on a "mouseleave".
  /// @event
  external IDisposable onMouseLeave(void listener(IEditorMouseEvent e));

  /// An event emitted on a "keyup".
  /// @event
  external IDisposable onKeyUp(void listener(IKeyboardEvent e));

  /// An event emitted on a "keydown".
  /// @event
  external IDisposable onKeyDown(void listener(IKeyboardEvent e));

  /// An event emitted when the layout of the editor has changed.
  /// @event
  external IDisposable onDidLayoutChange(void listener(EditorLayoutInfo e));

  /// An event emitted when the scroll in the editor has changed.
  /// @event
  external IDisposable onDidScrollChange(void listener(IScrollEvent e));

  /// Returns the editor's dom node
  external HtmlElement getDomNode();

  /// Add a content widget. Widgets must have unique ids, otherwise they will be overwritten.
  external void addContentWidget(IContentWidget widget);

  /// Layout/Reposition a content widget. This is a ping to the editor to call widget.getPosition()
  /// and update appropiately.
  external void layoutContentWidget(IContentWidget widget);

  /// Remove a content widget.
  external void removeContentWidget(IContentWidget widget);

  /// Add an overlay widget. Widgets must have unique ids, otherwise they will be overwritten.
  external void addOverlayWidget(IOverlayWidget widget);

  /// Layout/Reposition an overlay widget. This is a ping to the editor to call widget.getPosition()
  /// and update appropiately.
  external void layoutOverlayWidget(IOverlayWidget widget);

  /// Remove an overlay widget.
  external void removeOverlayWidget(IOverlayWidget widget);

  /// Change the view zones. View zones are lost when a new model is attached to the editor.
  external void changeViewZones(
      void callback(IViewZoneChangeAccessor accessor));

  /// Returns the range that is currently centered in the view port.
  external Range getCenteredRangeInViewport();

  /// Get the horizontal position (left offset) for the column w.r.t to the beginning of the line.
  /// This method works only if the line `lineNumber` is currently rendered (in the editor's viewport).
  /// Use this method with caution.
  external num getOffsetForColumn(num lineNumber, num column);

  /// Force an editor render now.
  external void render();

  /// Get the vertical position (top offset) for the line w.r.t. to the first line.
  external num getTopForLineNumber(num lineNumber);

  /// Get the vertical position (top offset) for the position w.r.t. to the first line.
  external num getTopForPosition(num lineNumber, num column);

  /// Get the hit test target at coordinates `clientX` and `clientY`.
  /// The coordinates are relative to the top-left of the viewport.
  external IMouseTarget getTargetAtClientPoint(num clientX, num clientY);

  /// Get the visible position for `position`.
  /// The result position takes scrolling into account and is relative to the top left corner of the editor.
  /// Explanation 1: the results of this method will change for the same `position` if the user scrolls the editor.
  /// Explanation 2: the results of this method will not change if the container of the editor gets repositioned.
  /// Warning: the results of this method are innacurate for positions that are outside the current editor viewport.
  external dynamic
      /*{
            top: number;
            left: number;
            height: number;
        }*/
      getScrolledVisiblePosition(IPosition position);

  /// Apply the same font settings as the editor to `target`.
  external void applyFontInfo(HtmlElement target);
}

/// A rich diff editor.
@anonymous
@JS()
abstract class IDiffEditor implements ICommonDiffEditor {
  /// @see ICodeEditor.getDomNode
  external HtmlElement getDomNode();
}

@JS("monaco.editor.FontInfo")
class FontInfo extends BareFontInfo {
  // @Ignore
  FontInfo.fakeConstructor$() : super.fakeConstructor$();
  external get JS$_editorStylingBrand;
  external set JS$_editorStylingBrand(v);
  external bool get isTrusted;
  external set isTrusted(bool v);
  external bool get isMonospace;
  external set isMonospace(bool v);
  external num get typicalHalfwidthCharacterWidth;
  external set typicalHalfwidthCharacterWidth(num v);
  external num get typicalFullwidthCharacterWidth;
  external set typicalFullwidthCharacterWidth(num v);
  external num get spaceWidth;
  external set spaceWidth(num v);
  external num get maxDigitWidth;
  external set maxDigitWidth(num v);
}

@JS("monaco.editor.BareFontInfo")
class BareFontInfo {
  // @Ignore
  BareFontInfo.fakeConstructor$();
  external get JS$_bareFontInfoBrand;
  external set JS$_bareFontInfoBrand(v);
  external num get zoomLevel;
  external set zoomLevel(num v);
  external String get fontFamily;
  external set fontFamily(String v);
  external String get fontWeight;
  external set fontWeight(String v);
  external num get fontSize;
  external set fontSize(num v);
  external num get lineHeight;
  external set lineHeight(num v);
  external num get letterSpacing;
  external set letterSpacing(num v);
}

// End module editor

// Module languages
/// Register information about a new language.
@JS("monaco.languages.register")
external void register(ILanguageExtensionPoint language);

/// Get the information of all the registered languages.
@JS("monaco.languages.getLanguages")
external List<ILanguageExtensionPoint> getLanguages();

/// An event emitted when a language is first time needed (e.g. a model has it set).
/// @event
@JS("monaco.languages.onLanguage")
external IDisposable onLanguage(String languageId, void callback());

/// Set the editing configuration for a language.
@JS("monaco.languages.setLanguageConfiguration")
external IDisposable setLanguageConfiguration(
    String languageId, LanguageConfiguration configuration);

/// A token.
@anonymous
@JS()
abstract class IToken {
  external num get startIndex;
  external set startIndex(num v);
  external String get scopes;
  external set scopes(String v);
  external factory IToken({num startIndex, String scopes});
}

/// The result of a line tokenization.
@anonymous
@JS()
abstract class ILineTokens {
  /// The list of tokens on the line.
  external List<IToken> get tokens;
  external set tokens(List<IToken> v);

  /// The tokenization end state.
  /// A pointer will be held to this and the object should not be modified by the tokenizer after the pointer is returned.
  external IState get endState;
  external set endState(IState v);
  external factory ILineTokens({List<IToken> tokens, IState endState});
}

/// A "manual" provider of tokens.
@anonymous
@JS()
abstract class TokensProvider {
  /// The initial state of a language. Will be the state passed in to tokenize the first line.
  external IState getInitialState();

  /// Tokenize a line given the state at the beginning of the line.
  external ILineTokens tokenize(String line, IState state);
}

/// Set the tokens provider for a language (manual implementation).
@JS("monaco.languages.setTokensProvider")
external IDisposable setTokensProvider(
    String languageId, TokensProvider provider);

/// Set the tokens provider for a language (monarch implementation).
@JS("monaco.languages.setMonarchTokensProvider")
external IDisposable setMonarchTokensProvider(
    String languageId, IMonarchLanguage languageDef);

/// Register a reference provider (used by e.g. reference search).
@JS("monaco.languages.registerReferenceProvider")
external IDisposable registerReferenceProvider(
    String languageId, ReferenceProvider provider);

/// Register a rename provider (used by e.g. rename symbol).
@JS("monaco.languages.registerRenameProvider")
external IDisposable registerRenameProvider(
    String languageId, RenameProvider provider);

/// Register a signature help provider (used by e.g. paremeter hints).
@JS("monaco.languages.registerSignatureHelpProvider")
external IDisposable registerSignatureHelpProvider(
    String languageId, SignatureHelpProvider provider);

/// Register a hover provider (used by e.g. editor hover).
@JS("monaco.languages.registerHoverProvider")
external IDisposable registerHoverProvider(
    String languageId, HoverProvider provider);

/// Register a document symbol provider (used by e.g. outline).
@JS("monaco.languages.registerDocumentSymbolProvider")
external IDisposable registerDocumentSymbolProvider(
    String languageId, DocumentSymbolProvider provider);

/// Register a document highlight provider (used by e.g. highlight occurrences).
@JS("monaco.languages.registerDocumentHighlightProvider")
external IDisposable registerDocumentHighlightProvider(
    String languageId, DocumentHighlightProvider provider);

/// Register a definition provider (used by e.g. go to definition).
@JS("monaco.languages.registerDefinitionProvider")
external IDisposable registerDefinitionProvider(
    String languageId, DefinitionProvider provider);

/// Register a implementation provider (used by e.g. go to implementation).
@JS("monaco.languages.registerImplementationProvider")
external IDisposable registerImplementationProvider(
    String languageId, ImplementationProvider provider);

/// Register a type definition provider (used by e.g. go to type definition).
@JS("monaco.languages.registerTypeDefinitionProvider")
external IDisposable registerTypeDefinitionProvider(
    String languageId, TypeDefinitionProvider provider);

/// Register a code lens provider (used by e.g. inline code lenses).
@JS("monaco.languages.registerCodeLensProvider")
external IDisposable registerCodeLensProvider(
    String languageId, CodeLensProvider provider);

/// Register a code action provider (used by e.g. quick fix).
@JS("monaco.languages.registerCodeActionProvider")
external IDisposable registerCodeActionProvider(
    String languageId, CodeActionProvider provider);

/// Register a formatter that can handle only entire models.
@JS("monaco.languages.registerDocumentFormattingEditProvider")
external IDisposable registerDocumentFormattingEditProvider(
    String languageId, DocumentFormattingEditProvider provider);

/// Register a formatter that can handle a range inside a model.
@JS("monaco.languages.registerDocumentRangeFormattingEditProvider")
external IDisposable registerDocumentRangeFormattingEditProvider(
    String languageId, DocumentRangeFormattingEditProvider provider);

/// Register a formatter than can do formatting as the user types.
@JS("monaco.languages.registerOnTypeFormattingEditProvider")
external IDisposable registerOnTypeFormattingEditProvider(
    String languageId, OnTypeFormattingEditProvider provider);

/// Register a link provider that can find links in text.
@JS("monaco.languages.registerLinkProvider")
external IDisposable registerLinkProvider(
    String languageId, LinkProvider provider);

/// Register a completion item provider (use by e.g. suggestions).
@JS("monaco.languages.registerCompletionItemProvider")
external IDisposable registerCompletionItemProvider(
    String languageId, CompletionItemProvider provider);

/// Contains additional diagnostic information about the context in which
/// a [code action](#CodeActionProvider.provideCodeActions) is run.
@anonymous
@JS()
abstract class CodeActionContext {
  /// An array of diagnostics.
  /// @readonly
  external List<IMarkerData> get markers;
  external set markers(List<IMarkerData> v);
  external factory CodeActionContext({List<IMarkerData> markers});
}

/// The code action interface defines the contract between extensions and
/// the [light bulb](https://code.visualstudio.com/docs/editor/editingevolved#_code-action) feature.
@anonymous
@JS()
abstract class CodeActionProvider {
  /// Provide commands for the given document and range.
  external dynamic /*List<CodeAction>|Thenable<List<CodeAction>>*/ provideCodeActions(
      IReadOnlyModel model,
      Range range,
      CodeActionContext context,
      CancellationToken token);
}

/// Completion item kinds.
@JS("monaco.languages.CompletionItemKind")
class CompletionItemKind {
  external static num get Text;
  external static num get Method;
  external static num get Function;
  external static num get Constructor;
  external static num get Field;
  external static num get Variable;
  external static num get Class;
  external static num get Interface;
  external static num get Module;
  external static num get Property;
  external static num get Unit;
  external static num get Value;
  external static num get Enum;
  external static num get Keyword;
  external static num get Snippet;
  external static num get Color;
  external static num get File;
  external static num get Reference;
  external static num get Folder;
}

/// A snippet string is a template which allows to insert text
/// and to control the editor cursor when insertion happens.
/// A snippet can define tab stops and placeholders with `$1`, `$2`
/// and `${3:foo}`. `$0` defines the final tab stop, it defaults to
/// the end of the snippet. Variables are defined with `$name` and
/// `${name:default value}`. The full snippet syntax is documented
/// [here](http://code.visualstudio.com/docs/editor/userdefinedsnippets#_creating-your-own-snippets).
@anonymous
@JS()
abstract class SnippetString {
  /// The snippet string.
  external String get value;
  external set value(String v);
  external factory SnippetString({String value});
}

/// A completion item represents a text snippet that is
/// proposed to complete text that is being typed.
@anonymous
@JS()
abstract class CompletionItem {
  /// The label of this completion item. By default
  /// this is also the text that is inserted when selecting
  /// this completion.
  external String get label;
  external set label(String v);

  /// The kind of this completion item. Based on the kind
  /// an icon is chosen by the editor.
  external num /*enum CompletionItemKind*/ get kind;
  external set kind(num /*enum CompletionItemKind*/ v);

  /// A human-readable string with additional information
  /// about this item, like type or symbol information.
  external String get detail;
  external set detail(String v);

  /// A human-readable string that represents a doc-comment.
  external String get documentation;
  external set documentation(String v);

  /// A string that should be used when comparing this item
  /// with other items. When `falsy` the [label](#CompletionItem.label)
  /// is used.
  external String get sortText;
  external set sortText(String v);

  /// A string that should be used when filtering a set of
  /// completion items. When `falsy` the [label](#CompletionItem.label)
  /// is used.
  external String get filterText;
  external set filterText(String v);

  /// A string or snippet that should be inserted in a document when selecting
  /// this completion. When `falsy` the [label](#CompletionItem.label)
  /// is used.
  external dynamic /*String|SnippetString*/ get insertText;
  external set insertText(dynamic /*String|SnippetString*/ v);

  /// A range of text that should be replaced by this completion item.
  /// Defaults to a range from the start of the [current word](#TextDocument.getWordRangeAtPosition) to the
  /// current position.
  /// *Note:* The range must be a [single line](#Range.isSingleLine) and it must
  /// [contain](#Range.contains) the position at which completion has been [requested](#CompletionItemProvider.provideCompletionItems).
  external Range get range;
  external set range(Range v);

  /// **Deprecated** in favor of `CompletionItem.insertText` and `CompletionItem.range`.
  /// ~~An [edit](#TextEdit) which is applied to a document when selecting
  /// this completion. When an edit is provided the value of
  /// [insertText](#CompletionItem.insertText) is ignored.~~
  /// ~~The [range](#Range) of the edit must be single-line and on the same
  /// line completions were [requested](#CompletionItemProvider.provideCompletionItems) at.~~
  external ISingleEditOperation get textEdit;
  external set textEdit(ISingleEditOperation v);
  external factory CompletionItem(
      {String label,
      num /*enum CompletionItemKind*/ kind,
      String detail,
      String documentation,
      String sortText,
      String filterText,
      dynamic /*String|SnippetString*/ insertText,
      Range range,
      ISingleEditOperation textEdit});
}

/// Represents a collection of [completion items](#CompletionItem) to be presented
/// in the editor.
@anonymous
@JS()
abstract class CompletionList {
  /// This list it not complete. Further typing should result in recomputing
  /// this list.
  external bool get isIncomplete;
  external set isIncomplete(bool v);

  /// The completion items.
  external List<CompletionItem> get items;
  external set items(List<CompletionItem> v);
  external factory CompletionList(
      {bool isIncomplete, List<CompletionItem> items});
}

/// The completion item provider interface defines the contract between extensions and
/// the [IntelliSense](https://code.visualstudio.com/docs/editor/intellisense).
/// When computing *complete* completion items is expensive, providers can optionally implement
/// the `resolveCompletionItem`-function. In that case it is enough to return completion
/// items with a [label](#CompletionItem.label) from the
/// [provideCompletionItems](#CompletionItemProvider.provideCompletionItems)-function. Subsequently,
/// when a completion item is shown in the UI and gains focus this provider is asked to resolve
/// the item, like adding [doc-comment](#CompletionItem.documentation) or [details](#CompletionItem.detail).
@anonymous
@JS()
abstract class CompletionItemProvider {
  external List<String> get triggerCharacters;
  external set triggerCharacters(List<String> v);

  /// Provide completion items for the given position and document.
  external dynamic /*List<CompletionItem>|Thenable<List<CompletionItem>>|CompletionList|Thenable<CompletionList>*/ provideCompletionItems(
      IReadOnlyModel model, Position position, CancellationToken token);

  /// Given a completion item fill in more data, like [doc-comment](#CompletionItem.documentation)
  /// or [details](#CompletionItem.detail).
  /// The editor will only resolve a completion item once.
  external dynamic /*CompletionItem|Thenable<CompletionItem>*/ resolveCompletionItem(
      CompletionItem item, CancellationToken token);
}

/// Describes how comments for a language work.
@anonymous
@JS()
abstract class CommentRule {
  /// The line comment token, like `// this is a comment`
  external String get lineComment;
  external set lineComment(String v);

  /// The block comment character pair, like `/* block comment *&#47;`
  external List<String> /*Tuple of <String,String>*/ get blockComment;
  external set blockComment(List<String> /*Tuple of <String,String>*/ v);
  external factory CommentRule(
      {String lineComment,
      List<String> /*Tuple of <String,String>*/ blockComment});
}

/// The language configuration interface defines the contract between extensions and
/// various editor features, like automatic bracket insertion, automatic indentation etc.
@anonymous
@JS()
abstract class LanguageConfiguration {
  /// The language's comment settings.
  external CommentRule get comments;
  external set comments(CommentRule v);

  /// The language's brackets.
  /// This configuration implicitly affects pressing Enter around these brackets.
  external List<List<String> /*Tuple of <String,String>*/ > get brackets;
  external set brackets(List<List<String> /*Tuple of <String,String>*/ > v);

  /// The language's word definition.
  /// If the language supports Unicode identifiers (e.g. JavaScript), it is preferable
  /// to provide a word definition that uses exclusion of known separators.
  /// e.g.: A regex that matches anything except known separators (and dot is allowed to occur in a floating point number):
  /// /(-?\d*\.\d\w*)|([^\`\~\!\@\#\%\^\&\*\(\)\-\=\+\[\{\]\}\\\|\;\:\'\"\,\.\<\>\/\?\s]+)/g
  external RegExp get wordPattern;
  external set wordPattern(RegExp v);

  /// The language's indentation settings.
  external IndentationRule get indentationRules;
  external set indentationRules(IndentationRule v);

  /// The language's rules to be evaluated when pressing Enter.
  external List<OnEnterRule> get onEnterRules;
  external set onEnterRules(List<OnEnterRule> v);

  /// The language's auto closing pairs. The 'close' character is automatically inserted with the
  /// 'open' character is typed. If not set, the configured brackets will be used.
  external List<IAutoClosingPairConditional> get autoClosingPairs;
  external set autoClosingPairs(List<IAutoClosingPairConditional> v);

  /// The language's surrounding pairs. When the 'open' character is typed on a selection, the
  /// selected string is surrounded by the open and close characters. If not set, the autoclosing pairs
  /// settings will be used.
  external List<IAutoClosingPair> get surroundingPairs;
  external set surroundingPairs(List<IAutoClosingPair> v);

  /// **Deprecated** Do not use.
  /// Will be replaced by a better API soon.
  external IBracketElectricCharacterContribution
      get JS$___electricCharacterSupport;
  external set JS$___electricCharacterSupport(
      IBracketElectricCharacterContribution v);
  external factory LanguageConfiguration(
      {CommentRule comments,
      List<List<String> /*Tuple of <String,String>*/ > brackets,
      RegExp wordPattern,
      IndentationRule indentationRules,
      List<OnEnterRule> onEnterRules,
      List<IAutoClosingPairConditional> autoClosingPairs,
      List<IAutoClosingPair> surroundingPairs,
      IBracketElectricCharacterContribution JS$___electricCharacterSupport});
}

/// Describes indentation rules for a language.
@anonymous
@JS()
abstract class IndentationRule {
  /// If a line matches this pattern, then all the lines after it should be unindendented once (until another rule matches).
  external RegExp get decreaseIndentPattern;
  external set decreaseIndentPattern(RegExp v);

  /// If a line matches this pattern, then all the lines after it should be indented once (until another rule matches).
  external RegExp get increaseIndentPattern;
  external set increaseIndentPattern(RegExp v);

  /// If a line matches this pattern, then **only the next line** after it should be indented once.
  external RegExp get indentNextLinePattern;
  external set indentNextLinePattern(RegExp v);

  /// If a line matches this pattern, then its indentation should not be changed and it should not be evaluated against the other rules.
  external RegExp get unIndentedLinePattern;
  external set unIndentedLinePattern(RegExp v);
  external factory IndentationRule(
      {RegExp decreaseIndentPattern,
      RegExp increaseIndentPattern,
      RegExp indentNextLinePattern,
      RegExp unIndentedLinePattern});
}

/// Describes a rule to be evaluated when pressing Enter.
@anonymous
@JS()
abstract class OnEnterRule {
  /// This rule will only execute if the text before the cursor matches this regular expression.
  external RegExp get beforeText;
  external set beforeText(RegExp v);

  /// This rule will only execute if the text after the cursor matches this regular expression.
  external RegExp get afterText;
  external set afterText(RegExp v);

  /// The action to execute.
  external EnterAction get action;
  external set action(EnterAction v);
  external factory OnEnterRule(
      {RegExp beforeText, RegExp afterText, EnterAction action});
}

@anonymous
@JS()
abstract class IBracketElectricCharacterContribution {
  external IDocComment get docComment;
  external set docComment(IDocComment v);
  external factory IBracketElectricCharacterContribution(
      {IDocComment docComment});
}

/// Definition of documentation comments (e.g. Javadoc/JSdoc)
@anonymous
@JS()
abstract class IDocComment {
  /// The string that starts a doc comment (e.g. '/**')
  external String get open;
  external set open(String v);

  /// The string that appears on the last line and closes the doc comment (e.g. ' * /').
  external String get close;
  external set close(String v);
  external factory IDocComment({String open, String close});
}

/// A tuple of two characters, like a pair of
/// opening and closing brackets.
/*export type CharacterPair = [string, string];*/
@anonymous
@JS()
abstract class IAutoClosingPair {
  external String get open;
  external set open(String v);
  external String get close;
  external set close(String v);
  external factory IAutoClosingPair({String open, String close});
}

@anonymous
@JS()
abstract class IAutoClosingPairConditional implements IAutoClosingPair {
  external List<String> get notIn;
  external set notIn(List<String> v);
  external factory IAutoClosingPairConditional(
      {List<String> notIn, String open, String close});
}

/// Describes what to do with the indentation when pressing Enter.
@JS("monaco.languages.IndentAction")
class IndentAction {
  external static num get

      /// Insert new line and copy the previous line's indentation.
      None;
  external static num get

      /// Insert new line and indent once (relative to the previous line's indentation).
      Indent;
  external static num get

      /// Insert two new lines:
      /// - the first one indented which will hold the cursor
      /// - the second one at the same indentation level
      IndentOutdent;
  external static num get

      /// Insert new line and outdent once (relative to the previous line's indentation).
      Outdent;
}

/// Describes what to do when pressing Enter.
@anonymous
@JS()
abstract class EnterAction {
  /// Describe what to do with the indentation.
  external num /*enum IndentAction*/ get indentAction;
  external set indentAction(num /*enum IndentAction*/ v);

  /// Describe whether to outdent current line.
  external bool get outdentCurrentLine;
  external set outdentCurrentLine(bool v);

  /// Describes text to be appended after the new line and after the indentation.
  external String get appendText;
  external set appendText(String v);

  /// Describes the number of characters to remove from the new line's indentation.
  external num get removeText;
  external set removeText(num v);
  external factory EnterAction(
      {num /*enum IndentAction*/ indentAction,
      bool outdentCurrentLine,
      String appendText,
      num removeText});
}

/// The state of the tokenizer between two lines.
/// It is useful to store flags such as in multiline comment, etc.
/// The model will clone the previous line's state and pass it in to tokenize the next line.
@anonymous
@JS()
abstract class IState {
  external IState clone();
  external bool equals(IState other);
}

/// A hover represents additional information for a symbol or word. Hovers are
/// rendered in a tooltip-like widget.
@anonymous
@JS()
abstract class Hover {
  /// The contents of this hover.
  external List<
      dynamic /*String|{
        readonly language: string;
        readonly value: string;
    }*/
      > get contents;
  external set contents(
      List<
              dynamic /*String|{
        readonly language: string;
        readonly value: string;
    }*/
              >
          v);

  /// The range to which this hover applies. When missing, the
  /// editor will use the range at the current position or the
  /// current position itself.
  external IRange get range;
  external set range(IRange v);
  external factory Hover(
      {List<
              dynamic /*String|{
        readonly language: string;
        readonly value: string;
    }*/
              >
          contents,
      IRange range});
}

/// The hover provider interface defines the contract between extensions and
/// the [hover](https://code.visualstudio.com/docs/editor/intellisense)-feature.
@anonymous
@JS()
abstract class HoverProvider {
  /// Provide a hover for the given position and document. Multiple hovers at the same
  /// position will be merged by the editor. A hover can have a range which defaults
  /// to the word range at the position when omitted.
  external dynamic /*Hover|Thenable<Hover>*/ provideHover(
      IReadOnlyModel model, Position position, CancellationToken token);
}

/// Interface used to quick fix typing errors while accesing member fields.
@anonymous
@JS()
abstract class CodeAction {
  external Command get command;
  external set command(Command v);
  external num get score;
  external set score(num v);
  external factory CodeAction({Command command, num score});
}

/// Represents a parameter of a callable-signature. A parameter can
/// have a label and a doc-comment.
@anonymous
@JS()
abstract class ParameterInformation {
  /// The label of this signature. Will be shown in
  /// the UI.
  external String get label;
  external set label(String v);

  /// The human-readable doc-comment of this signature. Will be shown
  /// in the UI but can be omitted.
  external String get documentation;
  external set documentation(String v);
  external factory ParameterInformation({String label, String documentation});
}

/// Represents the signature of something callable. A signature
/// can have a label, like a function-name, a doc-comment, and
/// a set of parameters.
@anonymous
@JS()
abstract class SignatureInformation {
  /// The label of this signature. Will be shown in
  /// the UI.
  external String get label;
  external set label(String v);

  /// The human-readable doc-comment of this signature. Will be shown
  /// in the UI but can be omitted.
  external String get documentation;
  external set documentation(String v);

  /// The parameters of this signature.
  external List<ParameterInformation> get parameters;
  external set parameters(List<ParameterInformation> v);
  external factory SignatureInformation(
      {String label,
      String documentation,
      List<ParameterInformation> parameters});
}

/// Signature help represents the signature of something
/// callable. There can be multiple signatures but only one
/// active and only one active parameter.
@anonymous
@JS()
abstract class SignatureHelp {
  /// One or more signatures.
  external List<SignatureInformation> get signatures;
  external set signatures(List<SignatureInformation> v);

  /// The active signature.
  external num get activeSignature;
  external set activeSignature(num v);

  /// The active parameter of the active signature.
  external num get activeParameter;
  external set activeParameter(num v);
  external factory SignatureHelp(
      {List<SignatureInformation> signatures,
      num activeSignature,
      num activeParameter});
}

/// The signature help provider interface defines the contract between extensions and
/// the [parameter hints](https://code.visualstudio.com/docs/editor/intellisense)-feature.
@anonymous
@JS()
abstract class SignatureHelpProvider {
  external List<String> get signatureHelpTriggerCharacters;
  external set signatureHelpTriggerCharacters(List<String> v);

  /// Provide help for the signature at the given position and document.
  external dynamic /*SignatureHelp|Thenable<SignatureHelp>*/ provideSignatureHelp(
      IReadOnlyModel model, Position position, CancellationToken token);
}

/// A document highlight kind.
@JS("monaco.languages.DocumentHighlightKind")
class DocumentHighlightKind {
  external static num get

      /// A textual occurrence.
      Text;
  external static num get

      /// Read-access of a symbol, like reading a variable.
      Read;
  external static num get

      /// Write-access of a symbol, like writing to a variable.
      Write;
}

/// A document highlight is a range inside a text document which deserves
/// special attention. Usually a document highlight is visualized by changing
/// the background color of its range.
@anonymous
@JS()
abstract class DocumentHighlight {
  /// The range this highlight applies to.
  external IRange get range;
  external set range(IRange v);

  /// The highlight kind, default is [text](#DocumentHighlightKind.Text).
  external num /*enum DocumentHighlightKind*/ get kind;
  external set kind(num /*enum DocumentHighlightKind*/ v);
  external factory DocumentHighlight(
      {IRange range, num /*enum DocumentHighlightKind*/ kind});
}

/// The document highlight provider interface defines the contract between extensions and
/// the word-highlight-feature.
@anonymous
@JS()
abstract class DocumentHighlightProvider {
  /// Provide a set of document highlights, like all occurrences of a variable or
  /// all exit-points of a function.
  external dynamic /*List<DocumentHighlight>|Thenable<List<DocumentHighlight>>*/ provideDocumentHighlights(
      IReadOnlyModel model, Position position, CancellationToken token);
}

/// Value-object that contains additional information when
/// requesting references.
@anonymous
@JS()
abstract class ReferenceContext {
  /// Include the declaration of the current symbol.
  external bool get includeDeclaration;
  external set includeDeclaration(bool v);
  external factory ReferenceContext({bool includeDeclaration});
}

/// The reference provider interface defines the contract between extensions and
/// the [find references](https://code.visualstudio.com/docs/editor/editingevolved#_peek)-feature.
@anonymous
@JS()
abstract class ReferenceProvider {
  /// Provide a set of project-wide references for the given position and document.
  external dynamic /*List<Location>|Thenable<List<Location>>*/ provideReferences(
      IReadOnlyModel model,
      Position position,
      ReferenceContext context,
      CancellationToken token);
}

/// Represents a location inside a resource, such as a line
/// inside a text file.
@anonymous
@JS()
abstract class Location {
  /// The resource identifier of this location.
  external Uri get uri;
  external set uri(Uri v);

  /// The document range of this locations.
  external IRange get range;
  external set range(IRange v);
  external factory Location({Uri uri, IRange range});
}

/// The definition of a symbol represented as one or many [locations](#Location).
/// For most programming languages there is only one location at which a symbol is
/// defined.
/*export type Definition = Location | Location[];*/
/// The definition provider interface defines the contract between extensions and
/// the [go to definition](https://code.visualstudio.com/docs/editor/editingevolved#_go-to-definition)
/// and peek definition features.
@anonymous
@JS()
abstract class DefinitionProvider {
  /// Provide the definition of the symbol at the given position and document.
  external dynamic /*Location|List<Location>|Thenable<Location|List<Location>>*/ provideDefinition(
      IReadOnlyModel model, Position position, CancellationToken token);
}

/// The implementation provider interface defines the contract between extensions and
/// the go to implementation feature.
@anonymous
@JS()
abstract class ImplementationProvider {
  /// Provide the implementation of the symbol at the given position and document.
  external dynamic /*Location|List<Location>|Thenable<Location|List<Location>>*/ provideImplementation(
      IReadOnlyModel model, Position position, CancellationToken token);
}

/// The type definition provider interface defines the contract between extensions and
/// the go to type definition feature.
@anonymous
@JS()
abstract class TypeDefinitionProvider {
  /// Provide the type definition of the symbol at the given position and document.
  external dynamic /*Location|List<Location>|Thenable<Location|List<Location>>*/ provideTypeDefinition(
      IReadOnlyModel model, Position position, CancellationToken token);
}

/// A symbol kind.
@JS("monaco.languages.SymbolKind")
class SymbolKind {
  external static num get File;
  external static num get Module;
  external static num get Namespace;
  external static num get Package;
  external static num get Class;
  external static num get Method;
  external static num get Property;
  external static num get Field;
  external static num get Constructor;
  external static num get Enum;
  external static num get Interface;
  external static num get Function;
  external static num get Variable;
  external static num get Constant;
  external static num get String;
  external static num get Number;
  external static num get Boolean;
  external static num get Array;
  external static num get Object;
  external static num get Key;
  external static num get Null;
  external static num get EnumMember;
  external static num get Struct;
  external static num get Event;
  external static num get Operator;
  external static num get TypeParameter;
}

/// Represents information about programming constructs like variables, classes,
/// interfaces etc.
@anonymous
@JS()
abstract class SymbolInformation {
  /// The name of this symbol.
  external String get name;
  external set name(String v);

  /// The name of the symbol containing this symbol.
  external String get containerName;
  external set containerName(String v);

  /// The kind of this symbol.
  external num /*enum SymbolKind*/ get kind;
  external set kind(num /*enum SymbolKind*/ v);

  /// The location of this symbol.
  external Location get location;
  external set location(Location v);
  external factory SymbolInformation(
      {String name,
      String containerName,
      num /*enum SymbolKind*/ kind,
      Location location});
}

/// The document symbol provider interface defines the contract between extensions and
/// the [go to symbol](https://code.visualstudio.com/docs/editor/editingevolved#_goto-symbol)-feature.
@anonymous
@JS()
abstract class DocumentSymbolProvider {
  /// Provide symbol information for the given document.
  external dynamic /*List<SymbolInformation>|Thenable<List<SymbolInformation>>*/ provideDocumentSymbols(
      IReadOnlyModel model, CancellationToken token);
}

@anonymous
@JS()
abstract class TextEdit {
  external IRange get range;
  external set range(IRange v);
  external String get text;
  external set text(String v);
  external num /*enum editor.EndOfLineSequence*/ get eol;
  external set eol(num /*enum editor.EndOfLineSequence*/ v);
  external factory TextEdit(
      {IRange range, String text, num /*enum editor.EndOfLineSequence*/ eol});
}

/// Interface used to format a model
@anonymous
@JS()
abstract class FormattingOptions {
  /// Size of a tab in spaces.
  external num get tabSize;
  external set tabSize(num v);

  /// Prefer spaces over tabs.
  external bool get insertSpaces;
  external set insertSpaces(bool v);
  external factory FormattingOptions({num tabSize, bool insertSpaces});
}

/// The document formatting provider interface defines the contract between extensions and
/// the formatting-feature.
@anonymous
@JS()
abstract class DocumentFormattingEditProvider {
  /// Provide formatting edits for a whole document.
  external dynamic /*List<TextEdit>|Thenable<List<TextEdit>>*/ provideDocumentFormattingEdits(
      IReadOnlyModel model, FormattingOptions options, CancellationToken token);
}

/// The document formatting provider interface defines the contract between extensions and
/// the formatting-feature.
@anonymous
@JS()
abstract class DocumentRangeFormattingEditProvider {
  /// Provide formatting edits for a range in a document.
  /// The given range is a hint and providers can decide to format a smaller
  /// or larger range. Often this is done by adjusting the start and end
  /// of the range to full syntax nodes.
  external dynamic /*List<TextEdit>|Thenable<List<TextEdit>>*/ provideDocumentRangeFormattingEdits(
      IReadOnlyModel model,
      Range range,
      FormattingOptions options,
      CancellationToken token);
}

/// The document formatting provider interface defines the contract between extensions and
/// the formatting-feature.
@anonymous
@JS()
abstract class OnTypeFormattingEditProvider {
  external List<String> get autoFormatTriggerCharacters;
  external set autoFormatTriggerCharacters(List<String> v);

  /// Provide formatting edits after a character has been typed.
  /// The given position and character should hint to the provider
  /// what range the position to expand to, like find the matching `{`
  /// when `}` has been entered.
  external dynamic /*List<TextEdit>|Thenable<List<TextEdit>>*/ provideOnTypeFormattingEdits(
      IReadOnlyModel model,
      Position position,
      String ch,
      FormattingOptions options,
      CancellationToken token);
}

/// A link inside the editor.
@anonymous
@JS()
abstract class ILink {
  external IRange get range;
  external set range(IRange v);
  external String get url;
  external set url(String v);
  external factory ILink({IRange range, String url});
}

/// A provider of links.
@anonymous
@JS()
abstract class LinkProvider {
  external dynamic /*List<ILink>|Thenable<List<ILink>>*/ provideLinks(
      IReadOnlyModel model, CancellationToken token);
  external Func2<ILink, CancellationToken, dynamic /*ILink|Thenable<ILink>*/ >
      get resolveLink;
  external set resolveLink(
      Func2<ILink, CancellationToken, dynamic /*ILink|Thenable<ILink>*/ > v);
}

@anonymous
@JS()
abstract class IResourceEdit {
  external Uri get resource;
  external set resource(Uri v);
  external IRange get range;
  external set range(IRange v);
  external String get newText;
  external set newText(String v);
  external factory IResourceEdit({Uri resource, IRange range, String newText});
}

@anonymous
@JS()
abstract class WorkspaceEdit {
  external List<IResourceEdit> get edits;
  external set edits(List<IResourceEdit> v);
  external String get rejectReason;
  external set rejectReason(String v);
  external factory WorkspaceEdit(
      {List<IResourceEdit> edits, String rejectReason});
}

@anonymous
@JS()
abstract class RenameProvider {
  external dynamic /*WorkspaceEdit|Thenable<WorkspaceEdit>*/ provideRenameEdits(
      IReadOnlyModel model,
      Position position,
      String newName,
      CancellationToken token);
}

@anonymous
@JS()
abstract class Command {
  external String get id;
  external set id(String v);
  external String get title;
  external set title(String v);
  external String get tooltip;
  external set tooltip(String v);
  external List<dynamic> get arguments;
  external set arguments(List<dynamic> v);
  external factory Command(
      {String id, String title, String tooltip, List<dynamic> arguments});
}

@anonymous
@JS()
abstract class ICodeLensSymbol {
  external IRange get range;
  external set range(IRange v);
  external String get id;
  external set id(String v);
  external Command get command;
  external set command(Command v);
  external factory ICodeLensSymbol({IRange range, String id, Command command});
}

@anonymous
@JS()
abstract class CodeLensProvider {
  external IEvent<CodeLensProvider> get onDidChange;
  external set onDidChange(IEvent<CodeLensProvider> v);
  external dynamic /*List<ICodeLensSymbol>|Thenable<List<ICodeLensSymbol>>*/ provideCodeLenses(
      IReadOnlyModel model, CancellationToken token);
  external dynamic /*ICodeLensSymbol|Thenable<ICodeLensSymbol>*/ resolveCodeLens(
      IReadOnlyModel model, ICodeLensSymbol codeLens, CancellationToken token);
}

@anonymous
@JS()
abstract class ILanguageExtensionPoint {
  external String get id;
  external set id(String v);
  external List<String> get extensions;
  external set extensions(List<String> v);
  external List<String> get filenames;
  external set filenames(List<String> v);
  external List<String> get filenamePatterns;
  external set filenamePatterns(List<String> v);
  external String get firstLine;
  external set firstLine(String v);
  external List<String> get aliases;
  external set aliases(List<String> v);
  external List<String> get mimetypes;
  external set mimetypes(List<String> v);
  external String get configuration;
  external set configuration(String v);
  external factory ILanguageExtensionPoint(
      {String id,
      List<String> extensions,
      List<String> filenames,
      List<String> filenamePatterns,
      String firstLine,
      List<String> aliases,
      List<String> mimetypes,
      String configuration});
}

/// A Monarch language definition
@anonymous
@JS()
abstract class IMonarchLanguage {
  /// map from string to ILanguageRule[]
  external dynamic /*JSMap of <String,List<IMonarchLanguageRule>>*/ get tokenizer;
  external set tokenizer(
      dynamic /*JSMap of <String,List<IMonarchLanguageRule>>*/ v);

  /// is the language case insensitive?
  external bool get ignoreCase;
  external set ignoreCase(bool v);

  /// if no match in the tokenizer assign this token class (default 'source')
  external String get defaultToken;
  external set defaultToken(String v);

  /// for example [['{','}','delimiter.curly']]
  external List<IMonarchLanguageBracket> get brackets;
  external set brackets(List<IMonarchLanguageBracket> v);

  /// start symbol in the tokenizer (by default the first entry is used)
  external String get start;
  external set start(String v);

  /// attach this to every token class (by default '.' + name)
  external String get tokenPostfix;
  external set tokenPostfix(String v);
  external factory IMonarchLanguage(
      {dynamic /*JSMap of <String,List<IMonarchLanguageRule>>*/ tokenizer,
      bool ignoreCase,
      String defaultToken,
      List<IMonarchLanguageBracket> brackets,
      String start,
      String tokenPostfix});
}

/// A rule is either a regular expression and an action
/// shorthands: [reg,act] == { regex: reg, action: act}
/// and       : [reg,act,nxt] == { regex: reg, action: act{ next: nxt }}
@anonymous
@JS()
abstract class IMonarchLanguageRule {
  /// match tokens
  external dynamic /*String|RegExp*/ get regex;
  external set regex(dynamic /*String|RegExp*/ v);

  /// action to take on match
  external IMonarchLanguageAction get action;
  external set action(IMonarchLanguageAction v);

  /// or an include rule. include all rules from the included state
  external String get include;
  external set include(String v);
  external factory IMonarchLanguageRule(
      {dynamic /*String|RegExp*/ regex,
      IMonarchLanguageAction action,
      String include});
}

/// An action is either an array of actions...
/// ... or a case statement with guards...
/// ... or a basic action with a token value.
@anonymous
@JS()
abstract class IMonarchLanguageAction {
  /// array of actions for each parenthesized match group
  external List<IMonarchLanguageAction> get group;
  external set group(List<IMonarchLanguageAction> v);

  /// map from string to ILanguageAction
  external Object get cases;
  external set cases(Object v);

  /// token class (ie. css class) (or "@brackets" or "@rematch")
  external String get token;
  external set token(String v);

  /// the next state to push, or "@push", "@pop", "@popall"
  external String get next;
  external set next(String v);

  /// switch to this state
  external String get switchTo;
  external set switchTo(String v);

  /// go back n characters in the stream
  external num get goBack;
  external set goBack(num v);

  /// @open or @close
  external String get bracket;
  external set bracket(String v);

  /// switch to embedded language (useing the mimetype) or get out using "@pop"
  external String get nextEmbedded;
  external set nextEmbedded(String v);

  /// log a message to the browser console window
  external String get log;
  external set log(String v);
  external factory IMonarchLanguageAction(
      {List<IMonarchLanguageAction> group,
      Object cases,
      String token,
      String next,
      String switchTo,
      num goBack,
      String bracket,
      String nextEmbedded,
      String log});
}

/// This interface can be shortened as an array, ie. ['{','}','delimiter.curly']
@anonymous
@JS()
abstract class IMonarchLanguageBracket {
  /// open bracket
  external String get open;
  external set open(String v);

  /// closeing bracket
  external String get close;
  external set close(String v);

  /// token class
  external String get token;
  external set token(String v);
  external factory IMonarchLanguageBracket(
      {String open, String close, String token});
}

// End module languages

// Module worker
@anonymous
@JS()
abstract class IMirrorModel {
  external Uri get uri;
  external set uri(Uri v);
  external num get version;
  external set version(num v);
  external String getValue();
}

@anonymous
@JS()
abstract class IWorkerContext {
  /// Get all available mirror models in this worker.
  external List<IMirrorModel> getMirrorModels();
}

// End module worker

// Module languages

// Module typescript
@JS("monaco.languages.typescript.ModuleKind")
class ModuleKind {
  external static num get None;
  external static num get CommonJS;
  external static num get AMD;
  external static num get UMD;
  external static num get System;
  external static num get ES2015;
}

@JS("monaco.languages.typescript.JsxEmit")
class JsxEmit {
  external static num get None;
  external static num get Preserve;
  external static num get React;
}

@JS("monaco.languages.typescript.NewLineKind")
class NewLineKind {
  external static num get CarriageReturnLineFeed;
  external static num get LineFeed;
}

@JS("monaco.languages.typescript.ScriptTarget")
class ScriptTarget {
  external static num get ES3;
  external static num get ES5;
  external static num get ES2015;
  external static num get ES2016;
  external static num get ES2017;
  external static num get ESNext;
  external static num get Latest;
}

@JS("monaco.languages.typescript.ModuleResolutionKind")
class ModuleResolutionKind {
  external static num get Classic;
  external static num get NodeJs;
} /*type CompilerOptionsValue = string | number | boolean | (string | number)[] | string[];*/

@anonymous
@JS()
abstract class CompilerOptions {
  external bool get allowJs;
  external set allowJs(bool v);
  external bool get allowSyntheticDefaultImports;
  external set allowSyntheticDefaultImports(bool v);
  external bool get allowUnreachableCode;
  external set allowUnreachableCode(bool v);
  external bool get allowUnusedLabels;
  external set allowUnusedLabels(bool v);
  external bool get alwaysStrict;
  external set alwaysStrict(bool v);
  external String get baseUrl;
  external set baseUrl(String v);
  external String get charset;
  external set charset(String v);
  external bool get declaration;
  external set declaration(bool v);
  external String get declarationDir;
  external set declarationDir(String v);
  external bool get disableSizeLimit;
  external set disableSizeLimit(bool v);
  external bool get emitBOM;
  external set emitBOM(bool v);
  external bool get emitDecoratorMetadata;
  external set emitDecoratorMetadata(bool v);
  external bool get experimentalDecorators;
  external set experimentalDecorators(bool v);
  external bool get forceConsistentCasingInFileNames;
  external set forceConsistentCasingInFileNames(bool v);
  external bool get importHelpers;
  external set importHelpers(bool v);
  external bool get inlineSourceMap;
  external set inlineSourceMap(bool v);
  external bool get inlineSources;
  external set inlineSources(bool v);
  external bool get isolatedModules;
  external set isolatedModules(bool v);
  external num /*enum JsxEmit*/ get jsx;
  external set jsx(num /*enum JsxEmit*/ v);
  external List<String> get lib;
  external set lib(List<String> v);
  external String get locale;
  external set locale(String v);
  external String get mapRoot;
  external set mapRoot(String v);
  external num get maxNodeModuleJsDepth;
  external set maxNodeModuleJsDepth(num v);
  external num /*enum ModuleKind*/ get module;
  external set module(num /*enum ModuleKind*/ v);
  external num /*enum ModuleResolutionKind*/ get moduleResolution;
  external set moduleResolution(num /*enum ModuleResolutionKind*/ v);
  external num /*enum NewLineKind*/ get newLine;
  external set newLine(num /*enum NewLineKind*/ v);
  external bool get noEmit;
  external set noEmit(bool v);
  external bool get noEmitHelpers;
  external set noEmitHelpers(bool v);
  external bool get noEmitOnError;
  external set noEmitOnError(bool v);
  external bool get noErrorTruncation;
  external set noErrorTruncation(bool v);
  external bool get noFallthroughCasesInSwitch;
  external set noFallthroughCasesInSwitch(bool v);
  external bool get noImplicitAny;
  external set noImplicitAny(bool v);
  external bool get noImplicitReturns;
  external set noImplicitReturns(bool v);
  external bool get noImplicitThis;
  external set noImplicitThis(bool v);
  external bool get noUnusedLocals;
  external set noUnusedLocals(bool v);
  external bool get noUnusedParameters;
  external set noUnusedParameters(bool v);
  external bool get noImplicitUseStrict;
  external set noImplicitUseStrict(bool v);
  external bool get noLib;
  external set noLib(bool v);
  external bool get noResolve;
  external set noResolve(bool v);
  external String get out;
  external set out(String v);
  external String get outDir;
  external set outDir(String v);
  external String get outFile;
  external set outFile(String v);
  external bool get preserveConstEnums;
  external set preserveConstEnums(bool v);
  external String get project;
  external set project(String v);
  external String get reactNamespace;
  external set reactNamespace(String v);
  external String get jsxFactory;
  external set jsxFactory(String v);
  external bool get removeComments;
  external set removeComments(bool v);
  external String get rootDir;
  external set rootDir(String v);
  external List<String> get rootDirs;
  external set rootDirs(List<String> v);
  external bool get skipLibCheck;
  external set skipLibCheck(bool v);
  external bool get skipDefaultLibCheck;
  external set skipDefaultLibCheck(bool v);
  external bool get sourceMap;
  external set sourceMap(bool v);
  external String get sourceRoot;
  external set sourceRoot(String v);
  external bool get strictNullChecks;
  external set strictNullChecks(bool v);
  external bool get suppressExcessPropertyErrors;
  external set suppressExcessPropertyErrors(bool v);
  external bool get suppressImplicitAnyIndexErrors;
  external set suppressImplicitAnyIndexErrors(bool v);
  external num /*enum ScriptTarget*/ get target;
  external set target(num /*enum ScriptTarget*/ v);
  external bool get traceResolution;
  external set traceResolution(bool v);
  external List<String> get types;
  external set types(List<String> v);

  /// Paths used to compute primary types search locations
  external List<String> get typeRoots;
  external set typeRoots(
      List<String>
          v); /* Index signature is not yet supported by JavaScript interop. */
}

@anonymous
@JS()
abstract class DiagnosticsOptions {
  external bool get noSemanticValidation;
  external set noSemanticValidation(bool v);
  external bool get noSyntaxValidation;
  external set noSyntaxValidation(bool v);
  external factory DiagnosticsOptions(
      {bool noSemanticValidation, bool noSyntaxValidation});
}

@anonymous
@JS()
abstract class LanguageServiceDefaults {
  /// Add an additional source file to the language service. Use this
  /// for typescript (definition) files that won't be loaded as editor
  /// document, like `jquery.d.ts`.
  /// language service upon disposal.
  external IDisposable addExtraLib(String content, [String filePath]);

  /// Set TypeScript compiler options.
  external void setCompilerOptions(CompilerOptions options);

  /// Configure whether syntactic and/or semantic validation should
  /// be performed
  external void setDiagnosticsOptions(DiagnosticsOptions options);

  /// Configure when the worker shuts down. By default that is 2mins.
  /// mean never shut down.
  external void setMaximunWorkerIdleTime(num value);

  /// Configure if all existing models should be eagerly sync'd
  /// to the worker on start or restart.
  external void setEagerModelSync(bool value);
}

@JS("monaco.languages.typescript.typescriptDefaults")
external LanguageServiceDefaults get typescriptDefaults;
@JS("monaco.languages.typescript.typescriptDefaults")
external set typescriptDefaults(LanguageServiceDefaults v);
@JS("monaco.languages.typescript.javascriptDefaults")
external LanguageServiceDefaults get javascriptDefaults;
@JS("monaco.languages.typescript.javascriptDefaults")
external set javascriptDefaults(LanguageServiceDefaults v);
@JS("monaco.languages.typescript.getTypeScriptWorker")
external Func0<Promise<dynamic>> get getTypeScriptWorker;
@JS("monaco.languages.typescript.getTypeScriptWorker")
external set getTypeScriptWorker(Func0<Promise<dynamic>> v);
@JS("monaco.languages.typescript.getJavaScriptWorker")
external Func0<Promise<dynamic>> get getJavaScriptWorker;
@JS("monaco.languages.typescript.getJavaScriptWorker")
external set getJavaScriptWorker(Func0<Promise<dynamic>> v);
// End module typescript

// End module languages

// Module languages

// Module css
@anonymous
@JS()
abstract class css_DiagnosticsOptions {
  external bool get validate;
  external set validate(bool v);
  external dynamic
      /*{
            readonly compatibleVendorPrefixes?: 'ignore' | 'warning' | 'error',
            readonly vendorPrefix?: 'ignore' | 'warning' | 'error',
            readonly duplicateProperties?: 'ignore' | 'warning' | 'error',
            readonly emptyRules?: 'ignore' | 'warning' | 'error',
            readonly importStatement?: 'ignore' | 'warning' | 'error',
            readonly boxModel?: 'ignore' | 'warning' | 'error',
            readonly universalSelector?: 'ignore' | 'warning' | 'error',
            readonly zeroUnits?: 'ignore' | 'warning' | 'error',
            readonly fontFaceProperties?: 'ignore' | 'warning' | 'error',
            readonly hexColorLength?: 'ignore' | 'warning' | 'error',
            readonly argumentsInColorFunction?: 'ignore' | 'warning' | 'error',
            readonly unknownProperties?: 'ignore' | 'warning' | 'error',
            readonly ieHack?: 'ignore' | 'warning' | 'error',
            readonly unknownVendorSpecificProperties?: 'ignore' | 'warning' | 'error',
            readonly propertyIgnoredDueToDisplay?: 'ignore' | 'warning' | 'error',
            readonly important?: 'ignore' | 'warning' | 'error',
            readonly float?: 'ignore' | 'warning' | 'error',
            readonly idSelector?: 'ignore' | 'warning' | 'error'
        }*/
      get lint;
  external set lint(
      dynamic
          /*{
            readonly compatibleVendorPrefixes?: 'ignore' | 'warning' | 'error',
            readonly vendorPrefix?: 'ignore' | 'warning' | 'error',
            readonly duplicateProperties?: 'ignore' | 'warning' | 'error',
            readonly emptyRules?: 'ignore' | 'warning' | 'error',
            readonly importStatement?: 'ignore' | 'warning' | 'error',
            readonly boxModel?: 'ignore' | 'warning' | 'error',
            readonly universalSelector?: 'ignore' | 'warning' | 'error',
            readonly zeroUnits?: 'ignore' | 'warning' | 'error',
            readonly fontFaceProperties?: 'ignore' | 'warning' | 'error',
            readonly hexColorLength?: 'ignore' | 'warning' | 'error',
            readonly argumentsInColorFunction?: 'ignore' | 'warning' | 'error',
            readonly unknownProperties?: 'ignore' | 'warning' | 'error',
            readonly ieHack?: 'ignore' | 'warning' | 'error',
            readonly unknownVendorSpecificProperties?: 'ignore' | 'warning' | 'error',
            readonly propertyIgnoredDueToDisplay?: 'ignore' | 'warning' | 'error',
            readonly important?: 'ignore' | 'warning' | 'error',
            readonly float?: 'ignore' | 'warning' | 'error',
            readonly idSelector?: 'ignore' | 'warning' | 'error'
        }*/
          v);
  external factory css_DiagnosticsOptions(
      {bool validate,
      dynamic
          /*{
            readonly compatibleVendorPrefixes?: 'ignore' | 'warning' | 'error',
            readonly vendorPrefix?: 'ignore' | 'warning' | 'error',
            readonly duplicateProperties?: 'ignore' | 'warning' | 'error',
            readonly emptyRules?: 'ignore' | 'warning' | 'error',
            readonly importStatement?: 'ignore' | 'warning' | 'error',
            readonly boxModel?: 'ignore' | 'warning' | 'error',
            readonly universalSelector?: 'ignore' | 'warning' | 'error',
            readonly zeroUnits?: 'ignore' | 'warning' | 'error',
            readonly fontFaceProperties?: 'ignore' | 'warning' | 'error',
            readonly hexColorLength?: 'ignore' | 'warning' | 'error',
            readonly argumentsInColorFunction?: 'ignore' | 'warning' | 'error',
            readonly unknownProperties?: 'ignore' | 'warning' | 'error',
            readonly ieHack?: 'ignore' | 'warning' | 'error',
            readonly unknownVendorSpecificProperties?: 'ignore' | 'warning' | 'error',
            readonly propertyIgnoredDueToDisplay?: 'ignore' | 'warning' | 'error',
            readonly important?: 'ignore' | 'warning' | 'error',
            readonly float?: 'ignore' | 'warning' | 'error',
            readonly idSelector?: 'ignore' | 'warning' | 'error'
        }*/
          lint});
}

@anonymous
@JS()
abstract class css_LanguageServiceDefaults {
  external IEvent<css_LanguageServiceDefaults> get onDidChange;
  external set onDidChange(IEvent<css_LanguageServiceDefaults> v);
  external css_DiagnosticsOptions get diagnosticsOptions;
  external set diagnosticsOptions(css_DiagnosticsOptions v);
  external void setDiagnosticsOptions(css_DiagnosticsOptions options);
}

@JS("monaco.languages.css.cssDefaults")
external css_LanguageServiceDefaults get cssDefaults;
@JS("monaco.languages.css.cssDefaults")
external set cssDefaults(css_LanguageServiceDefaults v);
@JS("monaco.languages.css.lessDefaults")
external css_LanguageServiceDefaults get lessDefaults;
@JS("monaco.languages.css.lessDefaults")
external set lessDefaults(css_LanguageServiceDefaults v);
@JS("monaco.languages.css.scssDefaults")
external css_LanguageServiceDefaults get scssDefaults;
@JS("monaco.languages.css.scssDefaults")
external set scssDefaults(css_LanguageServiceDefaults v);
// End module css

// End module languages

// Module languages

// Module json
@anonymous
@JS()
abstract class json_DiagnosticsOptions {
  /// If set, the validator will be enabled and perform syntax validation as well as schema based validation.
  external bool get validate;
  external set validate(bool v);

  /// If set, comments are tolerated. If set to false, syntax errors will be emmited for comments.
  external bool get allowComments;
  external set allowComments(bool v);

  /// A list of known schemas and/or associations of schemas to file names.
  external List<
      dynamic /*{
            /**
             * The URI of the schema, which is also the identifier of the schema.
             */
            readonly uri: string;
            /**
             * A list of file names that are associated to the schema. The '*' wildcard can be used. For example '*.schema.json', 'package.json'
             */
            readonly fileMatch?: string[];
            /**
             * The schema for the given URI.
             */
            readonly schema?: any;
        }*/
      > get schemas;
  external set schemas(
      List<
              dynamic /*{
            /**
             * The URI of the schema, which is also the identifier of the schema.
             */
            readonly uri: string;
            /**
             * A list of file names that are associated to the schema. The '*' wildcard can be used. For example '*.schema.json', 'package.json'
             */
            readonly fileMatch?: string[];
            /**
             * The schema for the given URI.
             */
            readonly schema?: any;
        }*/
              >
          v);
  external factory json_DiagnosticsOptions(
      {bool validate,
      bool allowComments,
      List<
              dynamic /*{
            /**
             * The URI of the schema, which is also the identifier of the schema.
             */
            readonly uri: string;
            /**
             * A list of file names that are associated to the schema. The '*' wildcard can be used. For example '*.schema.json', 'package.json'
             */
            readonly fileMatch?: string[];
            /**
             * The schema for the given URI.
             */
            readonly schema?: any;
        }*/
              >
          schemas});
}

@anonymous
@JS()
abstract class json_LanguageServiceDefaults {
  external IEvent<json_LanguageServiceDefaults> get onDidChange;
  external set onDidChange(IEvent<json_LanguageServiceDefaults> v);
  external json_DiagnosticsOptions get diagnosticsOptions;
  external set diagnosticsOptions(json_DiagnosticsOptions v);
  external void setDiagnosticsOptions(json_DiagnosticsOptions options);
}

@JS("monaco.languages.json.jsonDefaults")
external json_LanguageServiceDefaults get jsonDefaults;
@JS("monaco.languages.json.jsonDefaults")
external set jsonDefaults(json_LanguageServiceDefaults v);
// End module json

// End module languages

// Module languages

// Module html
@anonymous
@JS()
abstract class HTMLFormatConfiguration {
  external num get tabSize;
  external set tabSize(num v);
  external bool get insertSpaces;
  external set insertSpaces(bool v);
  external num get wrapLineLength;
  external set wrapLineLength(num v);
  external String get unformatted;
  external set unformatted(String v);
  external String get contentUnformatted;
  external set contentUnformatted(String v);
  external bool get indentInnerHtml;
  external set indentInnerHtml(bool v);
  external bool get preserveNewLines;
  external set preserveNewLines(bool v);
  external num get maxPreserveNewLines;
  external set maxPreserveNewLines(num v);
  external bool get indentHandlebars;
  external set indentHandlebars(bool v);
  external bool get endWithNewline;
  external set endWithNewline(bool v);
  external String get extraLiners;
  external set extraLiners(String v);
  external String /*'auto'|'force'|'force-aligned'|'force-expand-multiline'*/ get wrapAttributes;
  external set wrapAttributes(
      String /*'auto'|'force'|'force-aligned'|'force-expand-multiline'*/ v);
  external factory HTMLFormatConfiguration(
      {num tabSize,
      bool insertSpaces,
      num wrapLineLength,
      String unformatted,
      String contentUnformatted,
      bool indentInnerHtml,
      bool preserveNewLines,
      num maxPreserveNewLines,
      bool indentHandlebars,
      bool endWithNewline,
      String extraLiners,
      String /*'auto'|'force'|'force-aligned'|'force-expand-multiline'*/ wrapAttributes});
}

@anonymous
@JS()
abstract class CompletionConfiguration {
  /* Index signature is not yet supported by JavaScript interop. */
}

@anonymous
@JS()
abstract class Options {
  /// If set, comments are tolerated. If set to false, syntax errors will be emmited for comments.
  external HTMLFormatConfiguration get format;
  external set format(HTMLFormatConfiguration v);

  /// A list of known schemas and/or associations of schemas to file names.
  external CompletionConfiguration get suggest;
  external set suggest(CompletionConfiguration v);
  external factory Options(
      {HTMLFormatConfiguration format, CompletionConfiguration suggest});
}

@anonymous
@JS()
abstract class html_LanguageServiceDefaults {
  external IEvent<html_LanguageServiceDefaults> get onDidChange;
  external set onDidChange(IEvent<html_LanguageServiceDefaults> v);
  external Options get options;
  external set options(Options v);
  external void setOptions(Options options);
}

@JS("monaco.languages.html.htmlDefaults")
external html_LanguageServiceDefaults get htmlDefaults;
@JS("monaco.languages.html.htmlDefaults")
external set htmlDefaults(html_LanguageServiceDefaults v);
@JS("monaco.languages.html.handlebarDefaults")
external html_LanguageServiceDefaults get handlebarDefaults;
@JS("monaco.languages.html.handlebarDefaults")
external set handlebarDefaults(html_LanguageServiceDefaults v);
@JS("monaco.languages.html.razorDefaults")
external html_LanguageServiceDefaults get razorDefaults;
@JS("monaco.languages.html.razorDefaults")
external set razorDefaults(html_LanguageServiceDefaults v);
// End module html

// End module languages

// End module monaco
