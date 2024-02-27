// Initialize Quill editor

const videouploadSVG = '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"> <g> <path fill="none" d="M0 0H24V24H0z"/> <path d="M16 4c.552 0 1 .448 1 1v4.2l5.213-3.65c.226-.158.538-.103.697.124.058.084.09.184.09.286v12.08c0 .276-.224.5-.5.5-.103 0-.203-.032-.287-.09L17 14.8V19c0 .552-.448 1-1 1H2c-.552 0-1-.448-1-1V5c0-.552.448-1 1-1h14zm-1 2H3v12h12V6zM8 8h2v3h3v2H9.999L10 16H8l-.001-3H5v-2h3V8zm13 .841l-4 2.8v.718l4 2.8V8.84z"/> </g> </svg>';
const resizeSVG = '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">><polyline points="304 96 416 96 416 208" style="fill:none;stroke:#000;stroke-linecap:square;stroke-miterlimit:10;stroke-width:32px"/><line x1="405.77" y1="106.2" x2="111.98" y2="400.02" style="fill:none;stroke:#000;stroke-linecap:square;stroke-miterlimit:10;stroke-width:32px"/><polyline points="208 416 96 416 96 304" style="fill:none;stroke:#000;stroke-linecap:square;stroke-miterlimit:10;stroke-width:32px"/></svg>';

if (typeof NodeList !== "undefined" && NodeList.prototype && !NodeList.prototype.forEach) {
    NodeList.prototype.forEach = Array.prototype.forEach;
}

function isIE() {
    var myUa = navigator.userAgent.toLowerCase();
    if (myUa.indexOf('msie') != -1) {
        return parseInt(myua.split('msie')[1])
    };
    if (myUa.indexOf('trident') != -1) {
        return 11;
    }
    return false
}

const videoupload = isIE() ? undefined : 'videoupload';

// *** SETUP *** //
var toolbarOptions = {
    container: [
        { 'header': [1, 2, 3, 4, 5, 6, false] }, { 'size': ['small', false, 'large', 'huge'] },
        { 'color': [] },
        { 'background': [] },
        { 'align': [] },
        'bold', 'italic', 'underline', 'strike', { 'script': 'sub' }, { 'script': 'super' }, 'clean',
        'blockquote', 'code-block',
        'image', 'video', videoupload, 'table', 'link',
        { 'list': 'ordered' }, { 'list': 'bullet' },
        { 'indent': '-1' }, { 'indent': '+1' }
    ],
    handlers: {
        videoupload: onVideoUploadClick
    }
};

Quill.register('modules/table', quillCustom.Table, true);

var atValues = [];
var quill = new Quill('#editor', {
    modules: {
        table: true,
        keyboard: {
            bindings: quillCustom.Table.keyboardBindings
        },
        toolbar: toolbarOptions,
        imageResize: {},
        videoResize: {
            modules: ['Resize', 'DisplaySize', 'Toolbar']
        },
        mention: {
          allowedChars: /^[A-Za-z А-яа-я\sÅÄÖåäö]*$/,
          mentionDenotationChars: ["@"],
          positioningStrategy : 'fixed',
          source: function(searchTerm, renderList, mentionChar) {
            let values;

            if (mentionChar === "@") {
              values = atValues;
            }

            if (searchTerm.length === 0) {
              renderList(values, searchTerm);
            } else {
              const matches = [];
              for (i = 0; i < values.length; i++)
                if (
                  ~values[i].value
                  .toLowerCase()
                  .indexOf(searchTerm.toLowerCase())
                )
                  matches.push(values[i]);
              renderList(matches, searchTerm);
            }
          }
        }
    },
    theme: 'snow'
});

let toolbarTooltips = {
    'size': 'Размер шрифта',
    'header': 'Стиль текста',
    'bold': 'Жирный',
    'italic': 'Курсив',
    'underline': 'Подчеркнуть',
    'strike': 'Зачеркнуть',
    'color': 'Цвет текста',
    'background': 'Цвет фона текста',
    'script': {
        'sub': 'Нижний индекс',
        'super': 'Верхний индекс'
    },
    'list': {
        'ordered': 'Нумерованный список',
        'bullet': 'Маркированный список'
    },
    'indent': {
        '-1': 'Уменьшить отступ',
        '+1': 'Увеличить отступ'
    },
    'align': 'Выравнивание текста',
    'link': 'Вставить ссылку',
    'image': 'Вставить изображение',
    'video': 'Вставить видео',
    'videoupload': 'Загрузить видео',
    'formula': 'Вставить формулу',
    'clean': 'Очистить формат',
    'blockquote': 'Кавычки',
    'code-block': 'Код',
    'alignOptions': {
        '': 'По левому краю',
        'center': 'По центру',
        'right': 'По правому краю',
        'justify': 'По ширине'
    },
    'table': 'Таблица'
};

function showTooltips() {
    var showTooltip = function (which, el) {
        if (which == 'button') {
            var tool = el.className.replace('ql-', '');
        }
        else if (which == 'span') {
            var tool = el.className.replace('ql-', '');
            tool = tool.substr(0, tool.indexOf(' '));
        }
        if (tool) {
            //if element has value attribute.. handling is different
            //buttons without value
            if (el.value == '') {
                if (toolbarTooltips[tool])
                    el.setAttribute('title', toolbarTooltips[tool]);
            }
            //buttons with value
            else if (typeof el.value !== 'undefined') {
                if (toolbarTooltips[tool][el.value])
                    el.setAttribute('title', toolbarTooltips[tool][el.value]);
            }
            //default
            else
                el.setAttribute('title', toolbarTooltips[tool]);
        }
    };

    var toolbarElement = document.querySelector('.ql-toolbar');
    if (toolbarElement) {
        var matchesButtons = toolbarElement.querySelectorAll('button');
        for (var i = 0, icount = matchesButtons.length; i < icount; i++) {
            showTooltip('button', matchesButtons[i]);
        }
        //for submenus inside 
        var matchesSpans = toolbarElement.querySelectorAll('.ql-toolbar > span > span');
        for (var i = 0, icount = matchesSpans.length; i < icount; i++) {
            showTooltip('span', matchesSpans[i]);
        }
        const alignOptions = toolbarElement.querySelectorAll('.ql-toolbar span span.ql-align span span');
        for (var i = 0, icount = alignOptions.length; i < icount; i++) {
            var span = alignOptions[i];
            span.title = toolbarTooltips.alignOptions[span.dataset.value ? span.dataset.value : ''];
        }
    }
}

Quill.import('formats/link').PROTOCOL_WHITELIST = ['http', 'https', 'mailto', 'tel', 'data']

if (videoupload) document.querySelector('.ql-videoupload').innerHTML = videouploadSVG;

function onResize(event) {
    const locEditor = document.getElementById('editor');
    locEditor.style.height = '' + (window.innerHeight - locEditor.offsetTop - 8) + 'px';
};
window.addEventListener('resize', onResize);

showTooltips();
onResize(undefined);

// *** END SETUP *** //

// *** QuillJS resize for Chat *** //

let resizeEnabled;

let qlEditor    = document.getElementsByClassName('ql-editor')[0];
let qlToolbar   = document.getElementsByClassName('ql-toolbar')[0];
let startHeight = qlEditor.scrollHeight + qlToolbar.scrollHeight;

const observer = new MutationObserver(function(mutationsList, observer) {
    setTimeout(resizeQuill, 50);
});
                
observer.observe(qlEditor, { attributes :true, characterData :true, childList: true, subtree: true });   

function resizeQuill() {
    let vHeight     = qlToolbar.scrollHeight + 10;
    let vChildNodes = qlEditor.childNodes;

    for (let i = 0; i < vChildNodes.length; i++) {
        vHeight += vChildNodes[i].scrollHeight;
    }

    if (vHeight <= startHeight) {
        return;
    }

    vHeight += 10 + vHeight * 3 / 100;
    
    let iframe = window.frameElement
    if (iframe) {
        iframe.height = vHeight
    }
    else {
        window.parent.postMessage({ sender :"Quill", command :"SetFrameHeight", height :vHeight }, '*')
    }       

    window.parent.postMessage({ sender :"Quill", command :"ResizeChat", height :vHeight }, '*')
}

// *** QuillJS resize for Chat *** //

const data = window.getData ? window.getData() : undefined;
var selection;

if (data !== undefined) {
    quill.setContents(data.contents)
    selection = data.selection;

    resizeEnabled = data.resizeEnabled;
    if (resizeEnabled) {
        setQuillMutationObserver();
        setTimeout(resizeQuill, 50);
    }
}

if (selection) {
    quill.setSelection(selection);
}

quill.on('selection-change', function (range, oldRange, source) {
    if (range !== null) {
        window.callProcEx('DoSelectionChange', [range.index, range.length]);
    }
    else {
        window.callProcEx('DoSelectionChange', [0, 0]);
    }
});

quill.on('text-change', function (delta, oldContent, source) {
    window.callProcEx('OnTextChange', [source]);
});

window.saveData = function () {
    if (quill) {
        return { contents: quill.getContents(), selection: quill.getSelection(), resizeEnabled: resizeEnabled }
    }
};

window.setQuillHeight = function (height) {
    if (typeof height === 'string') {
        if (height.endsWith('px') || height.endsWith('vh') || height.endsWith('%')) {
            quill.container.style.height = height;
        } else {
            quill.container.style.height = '' + (parseInt(height, 10) * 4) + 'px';
        }
    } else {
        quill.container.style.height = '' + (height * 4) + 'px';
    }
}

window.getQuillHeight = function () {
    const height = quill.container.style.height;
    if (height.endsWith('px')) {
        return (+Math.round(parseInt(height, 10) / 4))
    } else {
        return (height);
    }
}

if (resizeEnabled) { setTimeout(resizeQuill, 50) }

// Поддержка загрузки видео

const supportedExtensions = ['mp4', 'mkv', 'mov'];
const maxSizeInBytes = 1572864;

let errorMessage = '';

let supportedExtensionsString = '';
supportedExtensions.forEach(function (ext) {
    if (supportedExtensionsString) supportedExtensionsString += ', ';
    supportedExtensionsString += '.' + ext;
})


const maxSizeInMegaBytes = maxSizeInBytes / 1024 / 1024;

document.getElementsByClassName('ql-editor')[0].addEventListener('click', function () {
    const videos = document.querySelectorAll('iframe.ql-video');
    if (videos.length) {
        videos.forEach(function (video) {
            video.style.pointerEvents = 'auto'
        });
    }

})

document.getElementsByClassName('ql-editor')[0].addEventListener('scroll', function () {
    attachLockIconToVideos();
})

quill.on('editor-change', function () {
    if (document.getElementById('fileinput')) {
        const fileinputContainer = document.getElementsByClassName('fileinput-container')[0];
        removeElement(fileinputContainer);
    }
    attachLockIconToVideos();
})

quill.root.onscroll = function () {
    const fileinputContainer = document.getElementsByClassName('fileinput-container')[0];
    if (fileinputContainer) {
        fileinputContainer.style.marginTop = -quill.root.scrollTop + 'px';
    }
}

function getVideoPopupCoordinates(index) {
    const containerSizes = {height: 110, width: 370};
    const editorSizes = {
        height: parseFloat(quill.container.style.height),
        width: parseFloat(quill.container.clientWidth) - 10
    }
    const marginTop = quill.root.scrollTop;
    const caretBottom = quill.getBounds(index).bottom;
    const caretLeft = quill.getBounds(index).left;
    const coordinates = {
        top: caretBottom, 
        left: caretLeft,
        marginTop: -marginTop // дублирование чтобы вернуть один объект
    };
    const freeSpace = {
        height: editorSizes.height - coordinates.top,
        width: editorSizes.width - coordinates.left
    };

    if (freeSpace.height < containerSizes.height) { // если от нижней части коретки до нижней части редактора, не вмещается попап
        if (coordinates.top - 20 > containerSizes.height) { // если выше каретки он момещается
            coordinates.top -= containerSizes.height + 15; // 15 - высота коретки
        } else { // если не помещается ни снизу, ни сверху, то ставим его в начало редактора
            coordinates.top = 5; 
        }
    } 
    coordinates.top += marginTop; // добавляем скрол
    if (freeSpace.width < containerSizes.width) { // тоже что и с высотой
        if (coordinates.left > containerSizes.width){
            coordinates.left -= containerSizes.width
        } else {
            coordinates.left = 5
        }
    }

    return coordinates;
}

function onVideoUploadClick() {
    if (!videoupload) return;

    if (document.getElementById('fileinput')) {
        const fileinputContainer = document.getElementById('fileinput').parentElement;
        removeElement(fileinputContainer);
    }

    const index = quill.getSelection().index || 0;
    const coordinates = getVideoPopupCoordinates(index);

    const fileinputContainer = document.createElement('div');
    fileinputContainer.classList.add('fileinput-container');

    const errorMessageBlock = document.createElement('p');
    errorMessageBlock.classList.add('fileinput-container__error');
    errorMessageBlock.style.color = 'red';

    fileinputContainer.style.top = coordinates.top + 'px';
    fileinputContainer.style.left = coordinates.left + 'px';
    fileinputContainer.style.marginTop = coordinates.marginTop + 'px';

    const fileinput = document.createElement('input');
    fileinput.id = 'fileinput';
    fileinput.type = 'file';
    fileinput.accept = supportedExtensionsString;
    fileinputContainer.innerHTML = '<p>Максимальный размер файла:'
        + (maxSizeInMegaBytes).toFixed(2)
        + ' MB.<br>Типы файлов: '
        + supportedExtensionsString
        +'</p>';
    
    const label = document.createElement('label');
    label.htmlFor = 'fileinput';
    label.innerHTML = 'Выбрать видео: ';

    fileinputContainer.appendChild(label)
    fileinputContainer.appendChild(fileinput);
    fileinputContainer.appendChild(errorMessageBlock);

    fileinput.addEventListener('change', readSingleFile, false);
    document.querySelector('#editor').appendChild(fileinputContainer);

    if (quill.getBounds(index).bottom > quill.root.getBoundingClientRect().height) {
        quill.root.scrollBy({ top: fileinputContainer.getBoundingClientRect().height + 10 });
    }
}

function attachLockIconToVideos() {
    if (isIE()) return;

    const locEditor = document.getElementById('editor');
    const videos = document.querySelectorAll('iframe.ql-video');
    let lockIcon;

    const addLockIconToVideo = function (video) {
        locEditor.querySelectorAll('.pointer-events-disabler').forEach(removeElement);

        const videoRect = video.getBoundingClientRect();
        lockIcon = document.createElement('div');
        lockIcon.classList.add('pointer-events-disabler');

        const height = 25;
        const width = height;

        lockIcon.innerHTML = resizeSVG;
        lockIcon.onclick = function () {
            video.style.pointerEvents = 'none'
        };

        lockIcon.style.position = 'absolute';
        lockIcon.style.top = videoRect.bottom - locEditor.getBoundingClientRect().top - height / 2 + 'px';
        lockIcon.style.left = videoRect.right - width / 2 + 'px';
        lockIcon.style.height = height + 'px';
        lockIcon.style.width = width + 'px';

        locEditor.appendChild(lockIcon);
    }

    for (var i = 0, icount = videos.length; i < icount; i++) {
        const video = videos[i]
        if (video && matches(video, ':hover')) {
            addLockIconToVideo(video);
        }

        video.onmouseenter = function () {
            addLockIconToVideo(video);
        }

        video.onmouseleave = function () {
            if (matches(lockIcon, ':hover')) {
                lockIcon.onmouseleave = function () {
                    removeElement(lockIcon)
                };
            } else {
                removeElement(lockIcon)
            }
        }
    }
}

function readSingleFile(event) {
    const file = event.target.files[0];
    errorMessage = '';
    if (!file) {
        errorMessage = 'Can\'t read video file';
    }

    const sizeInBytes = file.size;
    if (sizeInBytes > maxSizeInBytes) {
        errorMessage = 'File size over 1.5 MB not supported'
    }

    const ext = file.name.substring(file.name.lastIndexOf('.') + 1);
    if (supportedExtensions.indexOf(ext) === -1) {
        errorMessage = 'File extension ". ' + ext + '" not supported';
    }

    if (errorMessage) {
        document.getElementsByClassName('fileinput-container__error')[0].innerHTML = errorMessage;
        throw new Error(errorMessage);
    }

    const reader = new FileReader();
    reader.onload = function (event) {
        const contents = event.target.result;
        const uint8Array = new Uint8Array(contents);
        const arrayBuffer = uint8Array.buffer;
        const blob = new Blob([arrayBuffer]);
        convertBlobToBase64(blob, reader, function (base64) {
            const range = quill.getSelection();
            const index = range ? range.index : 0;
            const base64Url = 'data:video/mp4;' + base64.substring(base64.lastIndexOf(';') + 1, base64.length);
            quill.insertEmbed(index, 'video', base64Url);
        })
    }
    reader.readAsArrayBuffer(file);
}

function convertBlobToBase64(blob, reader, callback) {
    reader.readAsDataURL(blob);
    reader.onload = function () { callback(reader.result) };
    reader.onerror = console.error;
};

function matches(element, selector) {
    if (!element) return null;
    return element.matches ? element.matches(selector) : element.msMatchesSelector(selector);
}

function removeElement(element) {
    if (!element) return null;
    if (element.remove) element.remove()
    if (element.parentElement) element.parentElement.removeChild(element)
}

/**
 * @type {HTMLDivElement}
 */
const editor = quill.root; 
let isHoverLink = false;
editor.addEventListener('mousemove',  function(e) {
    if (e.target.tagName === 'A') {
        isHoverLink = true;
    } else {
        isHoverLink = false;
    }
});
window.addEventListener('keydown', function(e) {
    if (e.ctrlKey && isHoverLink) {
        editor.setAttribute('contenteditable', 'false');
    }
});
window.addEventListener('keyup', function() {
    editor.setAttribute('contenteditable', 'true');
});