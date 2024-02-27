/*!
 * JS Control interop for TurboX ver. 10.5
 */

if (window.location.hash === '#client') {
  if (window.chrome) {
      window.callProcEx = function(eventName, eventParams) {
          window.chrome.webview.postMessage({Event: eventName, Params: JSON.stringify(eventParams)})
  }
  }
  else {
      window.callProcEx = function(eventName, eventParams) {
          eventParams = encodeURIComponent(JSON.stringify(eventParams))
          window.open('turbo://passEvent?Event=' + eventName + '&Params=' + eventParams, '_self')
      }
  }
}
else if (window.location.hash === '#web') {
  window.callProcEx = function(eventName, eventParams) {
      window.parent.postMessage({dataset: {Event: eventName, Params: JSON.stringify(eventParams)}}, '*')
  }
  window.onload = function() { window.callProcEx("DocumentComplete") }
}
else {
  window.callProcEx = function(eventName, eventParams) {}
}

window.execScriptAsync = function(key,script) {
  window.callProcEx('DoExecuteScriptAsyncResult', [key,window.eval(script)]);
}
