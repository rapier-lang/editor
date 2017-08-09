@JS()
library require;

import "package:js/js.dart";
import "package:func/func.dart";
import "dart:html" show ScriptElement;

/// Type definitions for RequireJS 2.1.20
/// Project: http://requirejs.org/
/// Definitions by: Josh Baldwin <https://github.com/jbaldwin/>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped
/// require-2.1.8.d.ts may be freely distributed under the MIT license.
/// Copyright (c) 2013 Josh Baldwin https://github.com/jbaldwin/require.d.ts
/// Permission is hereby granted, free of charge, to any person
/// obtaining a copy of this software and associated documentation
/// files (the "Software"), to deal in the Software without
/// restriction, including without limitation the rights to use,
/// copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the
/// Software is furnished to do so, subject to the following conditions:
/// The above copyright notice and this permission notice shall be
/// included in all copies or substantial portions of the Software.
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
/// EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
/// OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
/// NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
/// HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
/// WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
/// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
/// OTHER DEALINGS IN THE SOFTWARE.

// Module module
@JS("module.mod")
external dynamic /*{
		config: () => any;
		id: string;
		uri: string;
	}*/
    get mod;
@JS("module.mod")
external set mod(
    dynamic /*{
		config: () => any;
		id: string;
		uri: string;
	}*/
    v); /* WARNING: export assignment not yet supported. */

// End module module
@anonymous
@JS()
abstract class RequireError implements Error {
  /// The error ID that maps to an ID on a web page.
  external String get requireType;
  external set requireType(String v);

  /// Required modules.
  external List<String> /*List<String>|Null*/ get requireModules;
  external set requireModules(List<String> /*List<String>|Null*/ v);

  /// The original error, if there is one (might be null).
  external Error get originalError;
  external set originalError(Error v);
  external factory RequireError(
      {String requireType,
      List<String> /*List<String>|Null*/ requireModules,
      Error originalError,
      String name,
      String message});
}

@anonymous
@JS()
abstract class RequireShim {
  /// List of dependencies.
  external List<String> get deps;
  external set deps(List<String> v);

  /// Name the module will be exported as.
  external String get exports;
  external set exports(String v);

  /// Initialize function with all dependcies passed in,
  /// if the function returns a value then that value is used
  /// as the module export value instead of the object
  /// found via the 'exports' string.
  external Function /*(...dependencies: any[]) => any*/ get init;
  external set init(Function /*(...dependencies: any[]) => any*/ v);
  external factory RequireShim(
      {List<String> deps,
      String exports,
      Function /*(...dependencies: any[]) => any*/ init});
}

@anonymous
@JS()
abstract class RequireConfig {
  /// The root path to use for all module lookups.
  external String get baseUrl;
  external set baseUrl(String v);

  /// Path mappings for module names not found directly under
  /// baseUrl.
  external dynamic /*JSMap of <String,dynamic>*/ get paths;
  external set paths(dynamic /*JSMap of <String,dynamic>*/ v);

  /// Dictionary of Shim's.
  /// Can be of type RequireShim or string[] of dependencies
  external dynamic /*JSMap of <String,RequireShim|List<String>>*/ get shim;
  external set shim(dynamic /*JSMap of <String,RequireShim|List<String>>*/ v);

  /// For the given module prefix, instead of loading the
  /// module with the given ID, substitude a different
  /// module ID.
  /// @example
  /// requirejs.config({
  /// map: {
  /// 'some/newmodule': {
  /// 'foo': 'foo1.2'
  /// },
  /// 'some/oldmodule': {
  /// 'foo': 'foo1.0'
  /// }
  /// }
  /// });
  external dynamic /*JSMap of <String,JSMap of <String,String>>*/ get map;
  external set map(dynamic /*JSMap of <String,JSMap of <String,String>>*/ v);

  /// Allows pointing multiple module IDs to a module ID that contains a bundle of modules.
  /// @example
  /// requirejs.config({
  /// bundles: {
  /// 'primary': ['main', 'util', 'text', 'text!template.html'],
  /// 'secondary': ['text!secondary.html']
  /// }
  /// });
  external dynamic /*JSMap of <String,List<String>>*/ get bundles;
  external set bundles(dynamic /*JSMap of <String,List<String>>*/ v);

  /// AMD configurations, use module.config() to access in
  /// define() functions
  external dynamic /*JSMap of <String,{}>*/ get config;
  external set config(dynamic /*JSMap of <String,{}>*/ v);

  /// Configures loading modules from CommonJS packages.
  external dynamic /*{}*/ get packages;
  external set packages(dynamic /*{}*/ v);

  /// The number of seconds to wait before giving up on loading
  /// a script.  The default is 7 seconds.
  external num get waitSeconds;
  external set waitSeconds(num v);

  /// A name to give to a loading context.  This allows require.js
  /// to load multiple versions of modules in a page, as long as
  /// each top-level require call specifies a unique context string.
  external String get context;
  external set context(String v);

  /// An array of dependencies to load.
  external List<String> get deps;
  external set deps(List<String> v);

  /// A function to pass to require that should be require after
  /// deps have been loaded.
  external Function /*(...modules: any[]) => void*/ get callback;
  external set callback(Function /*(...modules: any[]) => void*/ v);

  /// If set to true, an error will be thrown if a script loads
  /// that does not call define() or have shim exports string
  /// value that can be checked.
  external bool get enforceDefine;
  external set enforceDefine(bool v);

  /// If set to true, document.createElementNS() will be used
  /// to create script elements.
  external bool get xhtml;
  external set xhtml(bool v);

  /// Extra query string arguments appended to URLs that RequireJS
  /// uses to fetch resources.  Most useful to cache bust when
  /// the browser or server is not configured correctly.
  /// @example
  /// urlArgs: "bust= + (new Date()).getTime()
  /// As of RequireJS 2.2.0, urlArgs can be a function. If a
  /// function, it will receive the module ID and the URL as
  /// parameters, and it should return a string that will be added
  /// to the end of the URL. Return an empty string if no args.
  /// Be sure to take care of adding the '?' or '&' depending on
  /// the existing state of the URL.
  /// @example
  /// requirejs.config({
  /// urlArgs: function(id, url) {
  /// var args = 'v=1';
  /// if (url.indexOf('view.html') !== -1) {
  /// args = 'v=2'
  /// }
  /// return (url.indexOf('?') === -1 ? '?' : '&') + args;
  /// }
  /// });
  external dynamic /*String|Func2<String, String, String>*/ get urlArgs;
  external set urlArgs(dynamic /*String|Func2<String, String, String>*/ v);

  /// Specify the value for the type="" attribute used for script
  /// tags inserted into the document by RequireJS.  Default is
  /// "text/javascript".  To use Firefox's JavasScript 1.8
  /// features, use "text/javascript;version=1.8".
  external String get scriptType;
  external set scriptType(String v);

  /// If set to true, skips the data-main attribute scanning done
  /// to start module loading. Useful if RequireJS is embedded in
  /// a utility library that may interact with other RequireJS
  /// library on the page, and the embedded version should not do
  /// data-main loading.
  external bool get skipDataMain;
  external set skipDataMain(bool v);

  /// Allow extending requirejs to support Subresource Integrity
  /// (SRI).
  external VoidFunc4<ScriptElement, RequireConfig, String, String>
      get onNodeCreated;
  external set onNodeCreated(
      VoidFunc4<ScriptElement, RequireConfig, String, String> v);
  external factory RequireConfig(
      {String baseUrl,
      dynamic /*JSMap of <String,dynamic>*/ paths,
      dynamic /*JSMap of <String,RequireShim|List<String>>*/ shim,
      dynamic /*JSMap of <String,JSMap of <String,String>>*/ map,
      dynamic /*JSMap of <String,List<String>>*/ bundles,
      dynamic /*JSMap of <String,{}>*/ config,
      dynamic /*{}*/ packages,
      num waitSeconds,
      String context,
      List<String> deps,
      Function /*(...modules: any[]) => void*/ callback,
      bool enforceDefine,
      bool xhtml,
      dynamic /*String|Func2<String, String, String>*/ urlArgs,
      String scriptType,
      bool skipDataMain,
      VoidFunc4<ScriptElement, RequireConfig, String, String> onNodeCreated});
}

/// todo: not sure what to do with this guy
@anonymous
@JS()
abstract class RequireModule {
  external dynamic /*{}*/ config();
}

@anonymous
@JS()
abstract class RequireMap {
  external String get prefix;
  external set prefix(String v);
  external String get name;
  external set name(String v);
  external RequireMap get parentMap;
  external set parentMap(RequireMap v);
  external String get url;
  external set url(String v);
  external String get originalName;
  external set originalName(String v);
  external String get fullName;
  external set fullName(String v);
  external factory RequireMap(
      {String prefix,
      String name,
      RequireMap parentMap,
      String url,
      String originalName,
      String fullName});
}

@anonymous
@JS()
abstract class Require {
  /// Configure require.js
  external Require config(RequireConfig config);

  /// CommonJS require call
  /*external dynamic call(String module);*/
  /// Start the main app logic.
  /// Callback is optional.
  /// Can alternatively use deps and callback.
  /*external void call(List<String> modules);*/
  /// @see Require()
  /*external void call(List<String> modules, Function ready);*/
  /// @see http://requirejs.org/docs/api.html#errbacks
  /*external void call(List<String> modules, Function ready, Function errback);*/
  external dynamic /*dynamic|Null*/ call(
      dynamic /*String|List<String>*/ module_modules,
      [Function ready,
      Function errback]);

  /// Generate URLs from require module
  external String toUrl(String module);

  /// Returns true if the module has already been loaded and defined.
  external bool defined(String module);

  /// Returns true if the module has already been requested or is in the process of loading and should be available at some point.
  external bool specified(String module);

  /// On Error override
  external void onError(RequireError err, [void errback(RequireError err)]);

  /// Undefine a module
  external void undef(String module);

  /// Semi-private function, overload in special instance of undef()
  external void onResourceLoad(
      Object context, RequireMap map, List<RequireMap> depArray);
}

@anonymous
@JS()
abstract class RequireDefine {
  /// Define Simple Name/Value Pairs
  /*external void call(JSMap of <String,dynamic> config);*/
  /// Define function.
  /*external void call(dynamic func());*/
  /// Define function with dependencies.
  /// callback param deps module dependencies
  /// callback return module definition
  /*external void call(List<String> deps, Function ready);*/
  /// Define module with simplified CommonJS wrapper.
  /// callback require requirejs instance
  /// callback exports exports object
  /// callback module module
  /// callback return module definition
  /*external void call(dynamic ready(Require require, JSMap of <String,dynamic> exports, RequireModule module));*/
  /// Define a module with a name and dependencies.
  /// callback deps module dependencies
  /// callback return module definition
  /*external void call(String name, List<String> deps, Function ready);*/
  /// Define a module with a name.
  /// callback return module definition
  /*external void call(String name, Function ready);*/
  external void call(
      dynamic /*JSMap of <String,dynamic>|Func0<dynamic>|List<String>|Func3<Require, JSMap of <String,dynamic>, RequireModule, dynamic>|String*/ config_func_deps_ready_name,
      [dynamic /*Function|List<String>*/ ready_deps,
      Function ready]);

  /// Used to allow a clear indicator that a global define function (as needed for script src browser loading) conforms
  /// to the AMD API, any global define function SHOULD have a property called "amd" whose value is an object.
  /// This helps avoid conflict with any other existing JavaScript code that could have defined a define() function
  /// that does not conform to the AMD API.
  /// define.amd.jQuery is specific to jQuery and indicates that the loader is able to account for multiple version
  /// of jQuery being loaded simultaneously.
  external Object get amd;
  external set amd(Object v);
}

/// Ambient declarations for 'require' and 'define'
@JS()
external Require get requirejs;
@JS()
external set requirejs(Require v);
@JS()
external Require get require;
@JS()
external set require(Require v);
@JS()
external RequireDefine get define;
@JS()
external set define(RequireDefine v);

