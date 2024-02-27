/*!
 * JS Control interop for TurboX ver. 10.5
 */

if (window.location.hash === '#client') {
    var localDB
    if (localStorage) {
        localDB = {
            loadItem: function (id) {
                let data = localStorage.getItem(id)
                localStorage.removeItem(id)
                if (data) {
                    return JSON.parse(data)
                }
            },
            saveItem: function (id) {
                localStorage.setItem(id, JSON.stringify(window.saveData()))
            }
        }
    }
    else {
        localDB = {
            loadItem: function (id) {},
            saveItem: function (id) {}
        }
    }

    function urlParam(param){
        if (window.URLSearchParams) {
          let searchParams = new URLSearchParams(document.location.search)
          return searchParams.get(param)
        }
        else {
            let results = new RegExp('[\?&]' + param + '=([^&#]*)').exec(window.location.href);
            if (results) {
               return decodeURI(results[1]) || 0;
            }
        }
    }    
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
    window.getData = function() {
        let id = urlParam("jsControl")
        if (id) {
            return localDB.loadItem(id)
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
    window.callProcEx = function(eventName, eventParams) {
        console.log('EventName:' + eventName + ';EventParams:' + JSON.stringify(eventParams))
    }
    window.getData = function() {}
    window.onload = function() {window.callProcEx("DocumentComplete")}
}

window.execScriptAsync = function(key,script) {
    window.callProcEx('DoExecuteScriptAsyncResult', [key,window.eval(script)]);
}