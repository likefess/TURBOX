/*!
 * JS Control interop for TurboX ver. 10.5
 */if(window.location.hash==="#client"){let n=function(e){if(window.URLSearchParams)return new URLSearchParams(document.location.search).get(e);{let o=new RegExp("[?&]"+e+"=([^&#]*)").exec(window.location.href);if(o)return decodeURI(o[1])||0}};var urlParam=n,localDB;localStorage?localDB={loadItem:function(e){let o=localStorage.getItem(e);if(localStorage.removeItem(e),o)return JSON.parse(o)},saveItem:function(e){localStorage.setItem(e,JSON.stringify(window.saveData()))}}:localDB={loadItem:function(e){},saveItem:function(e){}},window.chrome?window.callProcEx=function(e,o){window.chrome.webview.postMessage({Event:e,Params:JSON.stringify(o)})}:window.callProcEx=function(e,o){o=encodeURIComponent(JSON.stringify(o)),window.open("turbo://passEvent?Event="+e+"&Params="+o,"_self")},window.getData=function(){let e=n("jsControl");if(e)return localDB.loadItem(e)}}else window.location.hash==="#web"?(window.callProcEx=function(n,e){window.parent.postMessage({dataset:{Event:n,Params:JSON.stringify(e)}},"*")},window.onload=function(){window.callProcEx("DocumentComplete")}):(window.callProcEx=function(n,e){console.log("EventName:"+n+";EventParams:"+JSON.stringify(e))},window.getData=function(){},window.onload=function(){window.callProcEx("DocumentComplete")});window.execScriptAsync=function(n,e){window.callProcEx("DoExecuteScriptAsyncResult",[n,window.eval(e)])};var customHead=[],customBody=[];function loadCustomHtml(n,e){n==="head"?(customHead.push(e),document.head.insertAdjacentHTML("beforeend",e)):n==="body"&&(customBody.push(e),document.body.insertAdjacentHTML("beforeend",e))}