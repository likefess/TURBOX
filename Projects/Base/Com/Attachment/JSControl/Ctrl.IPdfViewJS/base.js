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

var customHead = []
var customBody = []
function loadCustomHtml(aTarget, aHtml) {
    if (aTarget === 'head') {
        customHead.push(aHtml)
        document.head.insertAdjacentHTML("beforeend", aHtml)
    }
    else if (aTarget === 'body') {
        customBody.push(aHtml)
        document.body.insertAdjacentHTML("beforeend", aHtml)
    }
}


var locPdfBase64;


      if (window.getData != undefined) {
        window.saveData = function() {
          var pdf = document.getElementById('pdf')
          return {file: pdf.src}
        }
        var vData = window.getData();
        if (vData) {
          loadPdf(vData.file);
        }
      }

      // The workerSrc property shall be specified.
      pdfjsLib.GlobalWorkerOptions.workerSrc = 'pdf.worker.js';

      var currPage = 1; //Pages are 1-based not 0-based
      var numPages = 0;
      var thePDF = null;
      var pdfViewer = document.getElementById('pdfViewer');
      var outputScale = window.devicePixelRatio || 1;

      function loadPdf(file) {
        currPage = 1
        numPages = 0;
        thePDF = null;
        pdfViewer.innerHTML = '';
        if (file) {
          const loadingTask = pdfjsLib.getDocument(file);
          (async () => {
            thePDF = await loadingTask.promise;
            numPages = thePDF.numPages;
            thePDF.getPage( currPage ).then( renderPage );
          })();
        }
      }

       function loadPdfBase64(jsonBase64) {
        currPage = 1
        numPages = 0;
        thePDF = null;
        pdfViewer.innerHTML = '';
        locPdfBase64 = jsonBase64;
        if (jsonBase64 && jsonBase64.data) {
          var locData = {data: atob(jsonBase64.data)};
          const loadingTask = pdfjsLib.getDocument(locData);
          (async () => {
            thePDF = await loadingTask.promise;
            numPages = thePDF.numPages;
            thePDF.getPage( currPage ).then( renderPage );
          })();
        }
      }

      function renderPage(page) {
        //This gives us the page's dimensions at full scale
        const scale = 1.5;
        var viewport = page.getViewport({ scale });

        var canvas = document.createElement( "canvas" );
        canvas.className = 'pdfPage';
        canvas.width = Math.floor(viewport.width * outputScale);
        canvas.height = Math.floor(viewport.height * outputScale);
        canvas.style.width = Math.floor(viewport.width) + "px";
        canvas.style.height = Math.floor(viewport.height) + "px";

        page.render({canvasContext: canvas.getContext('2d'), viewport: viewport});
        pdfViewer.appendChild( canvas );

        currPage++;
        if (currPage <= numPages) {
          thePDF.getPage( currPage ).then( renderPage );
        }
      }

      function printPdf() {
        var iframe = window.frameElement
        if (iframe) {
          iframe.focus();
          iframe.contentWindow.print();
        }
        else {
            window.print();
         }
      }