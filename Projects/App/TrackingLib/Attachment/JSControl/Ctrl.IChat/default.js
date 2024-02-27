'use strict'

let commentIconPath;
let clipIconPath;
let editIconPath;
let trashIconPath;
let playIconPath;
let errorIconPath;
let fileIconPath;
let imageIconPath;
let docxIconPath;
let audioIconPath;
let bdIconPath;
let cssIconPath;
let csvIconPath;
let exeIconPath;
let flashIconPath;
let pdfIconPath;
let pptIconPath;
let rtfIconPath;
let txtIconPath;
let videoIconPath;
let visioIconPath;
let xlsIconPath;
let xmlIconPath;
let zipIconPath;
let mailIconPath;

let isEmbeddedWindow;
let useOneSide;




function resizeChat() {
    let vHeight = 0
    let iframe = window.frameElement

    if (iframe) {
        let vNodes = document.body.childNodes;
        for (let i = 0; i < vNodes.length; i++) {
            if (typeof vNodes[i].scrollHeight === 'number') {
                vHeight += vNodes[i].scrollHeight
            }
        }

        iframe.height = vHeight + vHeight * 0.25 / 100
    }
    else {
        vHeight = getMain().offsetHeight

        let vDiv = document.getElementById("editor-container")
        if (vDiv) {
            vHeight += vDiv.offsetHeight 
        }
        window.callProcEx('ResizeBrowser', [Math.ceil(vHeight + vHeight * 5.5 / 100)]);
    }
}

const observer = new MutationObserver(function (mutationsList, observer) {
    setTimeout(resizeChat, 50)
});

observer.observe(document.body, { childList: true, subtree: true });


window.saveData = function () {
    return {
        "mainHTML": getMain().innerHTML,
        "footerHTML": getFooter().innerHTML,
        "commentIconPath": commentIconPath,
        "clipIconPath": clipIconPath,
        "editIconPath": editIconPath,
        "trashIconPath": trashIconPath,
        "playIconPath": playIconPath,
        "isEmbeddedWindow": isEmbeddedWindow,
        "useOneSide": useOneSide,        
    };
}

if (window.getData != undefined) {
    var vData = window.getData();
    if (vData) {
        getMain().innerHTML = vData.mainHTML;
        getFooter().innerHTML = vData.footerHTML;
        commentIconPath = vData.commentIconPath;
        clipIconPath = vData.clipIconPath;
        editIconPath = vData.editIconPath;
        trashIconPath = vData.trashIconPath;
        playIconPath = vData.playIconPath;
        isEmbeddedWindow = vData.isEmbeddedWindow;
        useOneSide = vData.useOneSide;        
    }
}


window.addEventListener('message', (event) => {
    if (event.data.sender !== 'Quill') {
        return
    }
   
    let vDiv = document.getElementById("editor-container")
    if (vDiv && ['AddComment', 'EditComment'].includes(event.data.command)) {
        vDiv.parentNode.removeChild(vDiv)
    }

    if (event.data.command === 'AddComment') {
        let vID = Math.random().toString(16).slice(2)
        window.callProcEx('AddNewComment', [vID, event.data.HTML]);
    } else if (event.data.command === 'EditComment') {
        window.callProcEx('EditComment', [event.data.CommentID, event.data.HTML]);
    } else if (event.data.command === 'ResizeChat') {
        resizeChat()
    } else if (event.data.command === 'SetFrameHeight') {
        document.getElementById("editor-frame").height = event.data.height
    }
}, false)


function setEditor(aOnClick, aAddFunc) {
    let vDiv = document.getElementById("editor-container")
    
    if (vDiv) {
        vDiv.parentNode.removeChild(vDiv)
    } 
 
    vDiv = document.createElement("div")
    vDiv.id = "editor-container"
 
    let vIframe = document.createElement("iframe")
    vIframe.id = "editor-frame"
    vIframe.src = "Ctrl.IQuillJS/default.html"
    vIframe.frameBorder = 0      
 
    let vOkButton = document.createElement("button")
    vOkButton.className = "chat-button"
    vOkButton.id = "editor-container-ok-button"
    vOkButton.textContent = "Сохранить"
    vOkButton.onclick = aOnClick
 
    let vCancelButton = document.createElement("button")
    vCancelButton.className = "chat-button"
    vCancelButton.id = "editor-container-ok-button"
    vCancelButton.textContent = "Отменить"
    vCancelButton.onclick = () => {
        vDiv.parentNode.removeChild(vDiv)
    }
 
    document.body.appendChild(vDiv)  
    vDiv.appendChild(vOkButton)        
    vDiv.appendChild(vCancelButton)       
    vDiv.appendChild(vIframe)    

    if (aAddFunc) {
        aAddFunc()
    }
}


function commentButtonOnClick() {
    if (!isEmbeddedWindow) {
        window.callProcEx('DoCommentButtonClick', []);
        return 
    }
    
    setEditor(() => {
        document.getElementById("editor-frame").contentWindow.postMessage({sender :"Chat", command :"AddComment"}, '*')
    })
}


function editInputOnClick(aID) {
    if (!isEmbeddedWindow) {
        window.callProcEx('DoEditInputClick', [aID]);
        return 
    }

    setEditor(
        () => {
            document.getElementById("editor-frame").contentWindow.postMessage({sender :"Chat", command :"EditComment", CommentID :aID}, '*')
        }, 
        () => {
            let vHTML = document.getElementById(aID).getElementsByClassName('user-comment-content')[0].innerHTML
            setTimeout(() => {
                document.getElementById("editor-frame").contentWindow.postMessage({sender :"Chat", command :"SetHTML", HTML :vHTML}, '*')
            }, 500)          
        })
}


function clipInputOnClick(aID) {
    window.callProcEx('DoClipInputClick', [aID]);
}



function deleteInputOnClick(aID) {
    window.callProcEx('DeleteComment', [aID]);
}


function attachmentButtonOnClick(aCommentID, aFileID) {
    window.callProcEx('DoAttachmentButtonClick', [aCommentID, aFileID]);
}


function attachmentDelButtonOnClick(aCommentID, aFileID) {
    window.callProcEx('DoAttachmentDelButtonClick', [aCommentID, aFileID]);
}


function attachmentOnMouseOver(aID) {
    let vUserAttachment = document.getElementById(aID);
    let vAttachmentFile = vUserAttachment.getElementsByClassName('attachment-file')[0];
    let vAttachmentDel = vUserAttachment.getElementsByClassName('attachment-del')[0];

    vAttachmentFile.style.marginLeft = '16px';
    vAttachmentDel.hidden = false;
}


function attachmentOnMouseOut(aID) {
    let vUserAttachment = document.getElementById(aID);
    let vAttachmentFile = vUserAttachment.getElementsByClassName('attachment-file')[0];
    let vAttachmentDel = vUserAttachment.getElementsByClassName('attachment-del')[0];

    vAttachmentFile.style.marginLeft = '0px';
    vAttachmentDel.hidden = true;
}


function showCommentsButtonOnClick(aCount) {
    window.callProcEx('ShowComments', [aCount]);
}


function addNewComment(aCommentJSONstr) {
    let vJSON = JSON.parse(aCommentJSONstr);
    let vComment = getUserComment(vJSON, vJSON.OwnerID);

    getMain().insertAdjacentHTML('beforeend', vComment);
}


function showComments(aCommentsJSONstr, aCurrentUserID, aHideButtons) {
    let vJSON = JSON.parse(aCommentsJSONstr);
    let vCommentList = vJSON.Comments;

    removeElementsByClassName('user-comment');

    for (let i = (vCommentList.length - 1); i >= 0; i--) {
        let vCommentJSON = vCommentList[i];
        let vComment = getUserComment(vCommentJSON, aCurrentUserID);
        getMain().insertAdjacentHTML('beforeend', vComment);
        if (vCommentJSON.FilesInfo != null) {
            addAttachmentFiles(vCommentJSON.CommentID, JSON.stringify(vCommentJSON), aCurrentUserID);
        }
    }

    if (aHideButtons === true) {
        removeElementsByClassName('show-comments-button');
    }
}


function editComment(aID, aHTML, aTime) {
    let vUserComment = document.getElementById(aID);

    let commentContent = vUserComment.getElementsByClassName("user-comment-content")[0];
    commentContent.innerHTML = '';
    commentContent.insertAdjacentHTML('beforeend', aHTML);

    let commentEditInfo = vUserComment.getElementsByClassName("user-comment-edit-info")[0];
    if (commentEditInfo != null) {
        vUserComment.removeChild(commentEditInfo);
    }

//    Закомментировано, чтобы убрать надпись "изменено" при изменении комментария
//    commentContent.insertAdjacentHTML('beforebegin', getEditInfo(aTime))
}


function deleteComment(aID) {
    let vComment = document.getElementById(aID);
    getMain().removeChild(vComment);
}


function addCommentButton() {
    let vButton = '<button class="chat-button comment-button" onclick="commentButtonOnClick()">' +
        '<img class="comment-button-img" src="' + commentIconPath + '">' +
        '<span class="comment-button-span">Комментарий</span>' +
        '</button>';

    document.getElementById('comment-button-container').insertAdjacentHTML('beforeend', vButton);
}


function addShowCommentsButton(aCount) {
    const vText = (aCount != -1) ? ('Показать предыдущие ' + aCount) : 'Показать все';

    let vButton = '<button class="chat-button show-comments-button" onclick="showCommentsButtonOnClick(' + aCount + ')">' +
        '<span class="show-comments-span">' + vText + '</span>' +
        '</button>';

    document.getElementById('show-comments-button-container').insertAdjacentHTML('beforeend', vButton);
}


function addAttachmentFiles(aCommentID, aFilesJSONstr, aOwnerID) {
    let vJSON = JSON.parse(aFilesJSONstr);
    let vFileList = vJSON.FilesInfo;
    let vLength = vFileList.length;

    if (vLength === 0) {
        return;
    }

    let vAttachmentsClassName = "user-comment-attachments";
    let vComment = document.getElementById(aCommentID);

    vComment.insertAdjacentHTML('beforeend', '<div class="' + vAttachmentsClassName + '"></div>')

    for (let i = 0; i < vLength; i++) {
        let vID = vFileList[i].ID;

        let vEvents = '';
        if (vJSON.OwnerID === aOwnerID) {
            vEvents += ' onmouseover="attachmentOnMouseOver(\'' + vID + '\')" onmouseout="attachmentOnMouseOut(\'' + vID + '\')"';
        }

        let vIconPath = fileIconPath;
        let vFileName = vFileList[i].Name.substring(0, 10) + (vFileList[i].Name.length > 10 ? '...' : '');
        let vFileNameTag = vFileList[i].Name.split('.').reverse()[0];
        if (['img', 'png', 'jpeg', 'jpg', 'bmp', 'tiff', 'svg', 'gif'].includes(vFileNameTag)) {
            vIconPath = imageIconPath;
        } else if (['docx', 'doc'].includes(vFileNameTag)) {
            vIconPath = docxIconPath;
        } else if (['mp3', 'flac', 'aac', 'wav'].includes(vFileNameTag)) {
            vIconPath = audioIconPath;
        } else if (['accdb', 'xsd'].includes(vFileNameTag)) {
            vIconPath = bdIconPath;
        } else if (['css', 'html', 'js', 'php', 'java', 'py', 'json'].includes(vFileNameTag)) {
            vIconPath = cssIconPath;
        } else if (vFileNameTag === 'csv') {
            vIconPath = csvIconPath;
        } else if (vFileNameTag === 'exe') {
            vIconPath = exeIconPath;
        } else if (['swf', 'fla'].includes(vFileNameTag)) {
            vIconPath = flashIconPath;
        } else if (vFileNameTag === 'pdf') {
            vIconPath = pdfIconPath;
        } else if (['ppt', 'pptx'].includes(vFileNameTag)) {
            vIconPath = pptIconPath;
        } else if (vFileNameTag === 'rtf') {
            vIconPath = rtfIconPath;
        } else if (vFileNameTag === 'txt') {
            vIconPath = txtIconPath;
        } else if (['mp4', 'mkv', 'avi', 'mov', 'mpeg', 'flv'].includes(vFileNameTag)) {
            vIconPath = videoIconPath;
        } else if (['visio', 'vsdx'].includes(vFileNameTag)) {
            vIconPath = visioIconPath;
        } else if (['xls', 'xlsx', 'ods'].includes(vFileNameTag)) {
            vIconPath = xlsIconPath;
        } else if (vFileNameTag === 'xml') {
            vIconPath = xmlIconPath;
        } else if (['zip', 'rar', 'iso', 'jar'].includes(vFileNameTag)) {
            vIconPath = zipIconPath;
        } else if (['eml', 'msg'].includes(vFileNameTag)) {
            vIconPath = mailIconPath;
        }

        let vFile = '<div id="' + vID + '" class="user-comment-attachment"' + vEvents + '>' +
            '<input class="attachment-file" type="image" src="' + vIconPath + '" onclick="attachmentButtonOnClick(\'' + aCommentID + '\',\'' + vID + '\')"/>' +
            '<input class="attachment-del" type="image" src="' + trashIconPath + '" onclick="attachmentDelButtonOnClick(\'' + aCommentID + '\',\'' + vID + '\')" hidden="true"/>' +
            '<p>' + vFileName + '</p>' +
            '</div>';

        deleteAttachment(vID);
        vComment.getElementsByClassName(vAttachmentsClassName)[0].insertAdjacentHTML('beforeend', vFile);
    }
}


function addErrorText(aText) {
    let vError = '<img class="avatar" src="' + errorIconPath + '">' +
        '<span>' + aText + '</span>';
    getMain().insertAdjacentHTML('afterbegin', vError);
}


function deleteAttachment(aID) {
    let vAttachment = document.getElementById(aID);

    if (vAttachment != null) {
        vAttachment.parentNode.removeChild(vAttachment);
    }
}


function setIconPathes(aIconsJSONstr) {
    let vJSON = JSON.parse(aIconsJSONstr);

    commentIconPath = vJSON.commentIconPath;
    clipIconPath = vJSON.clipIconPath;
    editIconPath = vJSON.editIconPath;
    trashIconPath = vJSON.trashIconPath;
    playIconPath = vJSON.playIconPath;
    errorIconPath = vJSON.errorIconPath;
    fileIconPath = vJSON.fileIconPath;
    imageIconPath = vJSON.imageIconPath;
    docxIconPath = vJSON.docxIconPath;
    audioIconPath = vJSON.audioIconPath;
    bdIconPath = vJSON.bdIconPath;
    cssIconPath = vJSON.cssIconPath;
    csvIconPath = vJSON.csvIconPath;
    exeIconPath = vJSON.exeIconPath;
    flashIconPath = vJSON.flashIconPath;
    pdfIconPath = vJSON.pdfIconPath;
    pptIconPath = vJSON.pptIconPath;
    rtfIconPath = vJSON.rtfIconPath;
    txtIconPath = vJSON.txtIconPath;
    videoIconPath = vJSON.videoIconPath;
    visioIconPath = vJSON.visioIconPath;
    xlsIconPath = vJSON.xlsIconPath;
    xmlIconPath = vJSON.xmlIconPath;
    zipIconPath = vJSON.zipIconPath;
    mailIconPath = vJSON.mailIconPath;
}


function setUseOneSide(aUseOneSide) {
    useOneSide = aUseOneSide;
}


function getUserComment(aCommentJSON, aCurrentUserID) {
    let vAddInfo = '<div class="user-comment-add-info">' +
        '<img class="avatar" src="' + aCommentJSON.OwnerAvatar + '">' +
        '<div class="user-comment-text-info">' +
        '<span class="user-comment-owner-info">' + aCommentJSON.OwnerName + '</span>' +
        '<span>' + (aCommentJSON.OwnerName != '' ? ' добавил(а) комментарий - ' : '') + '</span>' +
        '<span class="user-comment-time-info">' + aCommentJSON.AddingTime + '</span>' +
        '</div>' +
        '</div>';

    let vInputs = '';
    let vClassName = 'user-comment user-comment-foreign';
    if (aCommentJSON.OwnerID === aCurrentUserID) {
        vInputs = '<div class="user-comment-inputs">' +
            '<input class="user-comment-input" type="image" src="' + clipIconPath + '" onclick="clipInputOnClick(\'' + aCommentJSON.CommentID + '\')"/>' +
            '<input class="user-comment-input" type="image" src="' + editIconPath + '" onclick="editInputOnClick(\'' + aCommentJSON.CommentID + '\')"/>' +
            '<input class="user-comment-input" type="image" src="' + trashIconPath + '" onclick="deleteInputOnClick(\'' + aCommentJSON.CommentID + '\')"/>' +
            '</div>';
        vClassName = 'user-comment user-comment-own';
    }

    if (useOneSide === true) {
        vClassName = 'user-comment';
    }

    return '<div class="' + vClassName + '" id="' + aCommentJSON.CommentID + '">' +
        vAddInfo +
        vInputs +
//    Закомментировано, чтобы убрать надпись "изменено" при отображении комментариев
//        getEditInfo(aCommentJSON.EditingTime) +
        '<div class="user-comment-content content-editor">' +
        aCommentJSON.HTML +
        '</div>' +
        '</div>';
}


function getMain() {
    return document.getElementById('chat-main');
}


function getFooter() {
    return document.getElementById('chat-footer');
}


function getEditInfo(aTime) {
    if (aTime != '') {
        return '<div class="user-comment-edit-info">Изменено ' + aTime + '</div>';
    }
    return '';
}


function removeElementsByClassName(aClassName) {
    const vElements = document.getElementsByClassName(aClassName);
    while (vElements.length > 0) {
        vElements[0].parentNode.removeChild(vElements[0]);
    }
}


function removeButtons() {
    removeElementsByClassName('chat-button')
}
