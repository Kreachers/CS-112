// Autogenerated by `scribblings/main/private/local-redirect'
//  This script is included by generated documentation to rewrite
//  links expressed as tag queries into local-filesystem links.

var link_dirs = [
 ["algol60", "../algol60"],
 ["browser", "../browser"],
 ["bug-report", "../bug-report"],
 ["cards", "../cards"],
 ["compatibility", "../compatibility"],
 ["continue", "../continue"],
 ["contract-profile", "../contract-profile"],
 ["data", "../data"],
 ["datalog", "../datalog"],
 ["db", "../db"],
 ["deinprogramm", "../deinprogramm"],
 ["demo-m1", "../demo-m1"],
 ["demo-m2", "../demo-m2"],
 ["demo-manual-m1", "../demo-manual-m1"],
 ["demo-manual-m2", "../demo-manual-m2"],
 ["demo-manual-s1", "../demo-manual-s1"],
 ["demo-manual-s2", "../demo-manual-s2"],
 ["demo-s1", "../demo-s1"],
 ["demo-s2", "../demo-s2"],
 ["distributed-places", "../distributed-places"],
 ["draw", "../draw"],
 ["drracket", "../drracket"],
 ["ds-store", "../ds-store"],
 ["dynext", "../dynext"],
 ["embedded-gui", "../embedded-gui"],
 ["eopl", "../eopl"],
 ["errortrace", "../errortrace"],
 ["file", "../file"],
 ["foreign", "../foreign"],
 ["framework", "../framework"],
 ["frtime", "../frtime"],
 ["future-visualizer", "../future-visualizer"],
 ["games", "../games"],
 ["getting-started", "../getting-started"],
 ["gl-board-game", "../gl-board-game"],
 ["graphics", "../graphics"],
 ["gui", "../gui"],
 ["guide", "../guide"],
 ["help", "../help"],
 ["htdp", "../htdp"],
 ["htdp-langs", "../htdp-langs"],
 ["htdp-ptr", "../htdp-ptr"],
 ["html", "../html"],
 ["images", "../images"],
 ["inside", "../inside"],
 ["json", "../json"],
 ["lazy", "../lazy"],
 ["macro-debugger", "../macro-debugger"],
 ["make", "../make"],
 ["math", "../math"],
 ["more", "../more"],
 ["mrlib", "../mrlib"],
 ["mysterx", "../mysterx"],
 ["mzcom", "../mzcom"],
 ["mzlib", "../mzlib"],
 ["mzscheme", "../mzscheme"],
 ["net", "../net"],
 ["openssl", "../openssl"],
 ["parser-tools", "../parser-tools"],
 ["pict", "../pict"],
 ["picturing-programs", "../picturing-programs"],
 ["pkg", "../pkg"],
 ["plai", "../plai"],
 ["planet", "../planet"],
 ["plot", "../plot"],
 ["plt-installer", "../plt-installer"],
 ["preprocessor", "../preprocessor"],
 ["profile", "../profile"],
 ["quick", "../quick"],
 ["r5rs", "../r5rs"],
 ["r6rs", "../r6rs"],
 ["racklog", "../racklog"],
 ["rackunit", "../rackunit"],
 ["raco", "../raco"],
 ["readline", "../readline"],
 ["redex", "../redex"],
 ["reference", "../reference"],
 ["scheme", "../scheme"],
 ["scribble", "../scribble"],
 ["scribble-pp", "../scribble-pp"],
 ["scriblib", "../scriblib"],
 ["sgl", "../sgl"],
 ["slatex-wrap", "../slatex-wrap"],
 ["slideshow", "../slideshow"],
 ["srfi", "../srfi"],
 ["stepper", "../stepper"],
 ["string-constants", "../string-constants"],
 ["style", "../style"],
 ["swindle", "../swindle"],
 ["syntax", "../syntax"],
 ["syntax-color", "../syntax-color"],
 ["teachpack", "../teachpack"],
 ["test-engine", "../test-engine"],
 ["tool", "../tool"],
 ["tools", "../tools"],
 ["trace", "../trace"],
 ["ts-guide", "../ts-guide"],
 ["ts-reference", "../ts-reference"],
 ["turtles", "../turtles"],
 ["unstable", "../unstable"],
 ["unstable-find", "../unstable-find"],
 ["unstable-flonum", "../unstable-flonum"],
 ["unstable-gui", "../unstable-gui"],
 ["unstable-redex", "../unstable-redex"],
 ["version", "../version"],
 ["web-server", "../web-server"],
 ["web-server-internal", "../web-server-internal"],
 ["win32-ssl", "../win32-ssl"],
 ["xml", "../xml"],
 ["xrepl", "../xrepl"]];

function bsearch(str, a, start, end) {
   if (start >= end)
     return false;
   else {
     var mid = Math.floor((start + end) / 2);
     if (a[mid][0] == str)
       return mid;
     else if (a[mid][0] < str)
       return bsearch(str, a, mid+1, end);
     else
       return bsearch(str, a, start, mid);
   }
}

var link_target_prefix = false;

function hash_string(s) {
   var v = 0;
   for (var i = 0; i < s.length; i++) {
     v = (((v << 5) - v) + s.charCodeAt(i)) & 0xFFFFFF;
   }
   return v;
}

function demand_load(p, callback) {
   // Based on a StackOverflow answer, which cites:
   // JavaScript Patterns, by Stoyan Stefanov (O’Reilly). Copyright 2010 Yahoo!, Inc., 9780596806750.
   var script = document.getElementsByTagName('script')[0];
   var newjs = document.createElement('script');
   newjs.src = p;
   if (callback) {
      // IE
      newjs.onreadystatechange = function () {
          if (newjs.readyState === 'loaded' || newjs.readyState === 'complete') {
            newjs.onreadystatechange = null;
            callback();
          }
        };
      // others
      newjs.onload = callback;
   }
   script.parentNode.appendChild(newjs);
}

var loaded_link_targets = [];
var link_targets = [];
var num_link_target_bins = 5;

function convert_all_links() {
   var elements = document.getElementsByClassName("Sq");
   for (var i = 0; i < elements.length; i++) {
     var elem = elements[i];
     var tag = elem.href.match(/tag=[^&]*/);
     var doc = elem.href.match(/doc=[^&]*/);
     var rel = elem.href.match(/rel=[^&]*/);
     if (doc && rel) {
         var pos = bsearch(decodeURIComponent(doc[0].substring(4)),
                                     link_dirs,
                                     0,
                                     link_dirs.length);
         if (pos) {
           var p = link_dirs[pos][1];
           if (link_target_prefix) {
             p = link_target_prefix + p;
           }
           elem.href = p + "/" + decodeURIComponent(rel[0].substring(4));
           tag = false;
         }
     }
     if (tag) {
       var v = hash_string(decodeURIComponent(tag[0].substring(4))) % 5;
       if (!loaded_link_targets[v]) {
         loaded_link_targets[v] = true;
         var p = "../local-redirect/local-redirect_" + v + ".js";
         if (link_target_prefix) {
           p = link_target_prefix + p;
         }
         demand_load(p, false);
       }
     }
  }
}

AddOnLoad(convert_all_links);