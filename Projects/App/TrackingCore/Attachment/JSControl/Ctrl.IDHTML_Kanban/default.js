let startCol;
let startRow;
let emptySprintText = template(`<div class="blockOverlay empty-sprint">
                                   <span class="empty-sprint-header">Перенесите задачи из бэклога или создайте новые, после чего нажмите «Запустить»</span>
                                   </div>`);

function setHeightFirstRow()
{
   /*if (board.config.rows.length < 2){
       var rowElement = document.querySelector('.wx-content.svelte-30nbk4');
       var parentElement = document.querySelector('.wx-content-wrapper.svelte-13hgtri.svelte-13hgtri');
       if (rowElement!=null){
         rowElement.style.maxHeight = parentElement.clientHeight - rowElement.offsetTop +"px";
       }else{
         setTimeout(setHeightFirstRow, 500);
       }
    }   */
}
function transitionForTaskStatus()
{
    // запоминается с какого столбца переносят и если оно не конечное, то делают наложение
    board.api.on("start-drag-card", (obj) => {
       startCol = obj.columnId;
       startRow = obj.rowId;
       var k;
       for (k = 0; k < columns.length; ++k) {
                        if (startCol != columns[k].id && !dropAllowedNew(startCol, columns[k].id, obj.id))
                        {
                        board.api.exec("update-column", {
                                id: columns[k].id,
                                column: {
                                        overlay: template(`
                                                <div class="blockOverlay disable-drop">
                                                <span class="disable-drop-header">Переход не разрешен</span>
                                                <span class="disable-drop-description">Настройте правила переходов</span>
                                                </div>`),
                                },
                        });  
                        }
            }
    });

     // выделение места куда можно вставить карточку
     board.api.intercept("drag-card", (obj) => {
       if ((startCol != obj.columnId && !dropAllowedNew(startCol, obj.columnId, obj.id)) || startRow != obj.rowId) return false;
     });

     // снимает наложение со столбца и запрещает перенос в определенные состояния состояние
     board.api.intercept("move-card", (obj) => {
                var k;
                for (k = 0; k < columns.length; ++k) {
                        board.api.exec("update-column", {
                                id: columns[k].id,
                                column: {
                                overlay: null,
                                },
                        });
                }
           if(!dropAllowedNew(startCol, obj.columnId, obj.id) || startRow != obj.rowId){
                return false;
           } else {
                if (startCol!=obj.columnId){
                  window.callProcEx('DoMoveCard', [obj.id, getColumnById(obj.columnId)]);
                }
           }
     });

     board.api.intercept("set-edit", (obj) => {
          if (obj != null)
          {
              window.callProcEx('DoOpenCard', [obj.cardId]);
          }
          return false;
     });
     defaultEvents();
 }

 function transitionForSprints()
{
    // запоминается с какого столбца переносят и если оно не конечное, то делают наложение
    board.api.on("start-drag-card", (obj) => {
       startCol = obj.columnId;
       var k;
       for (k = 0; k < columns.length; ++k) {
                        if (startCol != columns[k].id && columns[k].sprintStatus == 2)
                        {
                        board.api.exec("update-column", {
                                id: columns[k].id,
                                column: {
                                        overlay: template(`
                                                <div class="blockOverlay disable-drop">
                                                <span class="disable-drop-header">Переход не разрешен</span>
                                                <span class="disable-drop-description">Нельзя добавить задачу в закрытый спринт</span>
                                                </div>`),
                                },
                        });  
                        }
            }
    });

     // если это конечное состояние, то не выделяется место куда можно вставить карточку
     board.api.intercept("drag-card", (obj) => {
       if (startCol != obj.columnId && !dropAllowedForSprint(startCol, obj.columnId)) return false;
     });

     // снимает наложение со столбца и запрещает перенос в последнее состояние
     board.api.intercept("move-card", (obj) => {
           var allow = dropAllowedForSprint(startCol, obj.columnId);
           setOverlayForSprints(allow, startCol, obj.columnId);
           if(!allow){
                return false;
           } else {
                window.callProcEx('DoMoveCard', [obj.id, getColumnById(obj.columnId)]);
           }
     });

     board.api.intercept("set-edit", (obj) => {
          if (obj != null)
          {
              window.callProcEx('DoOpenCard', [obj.cardId]);
          }
          return false;
     });
     defaultEvents();
 }

 function setOverlayForSprints(allow, startCol, endCol){
          var k;
          for (k = 0; k < columns.length; ++k) {
                  if(columns[k].id == endCol && allow){
                          columns[k].cardCount += 1;
                  }
                  if(columns[k].id == startCol && allow){
                          columns[k].cardCount -= 1;
                  }
                  var columnOverlay = columns[k].cardCount < 1 && columns[k].id !="nil" ? emptySprintText : null;
                  board.api.exec("update-column", {
                          id: columns[k].id,
                          column: {
                          overlay: columnOverlay,
                          },
                  });
          }
 }

     function dropAllowedForSprint(startColumnId, targetColumnId) {
             var i;
             for (i = 0; i < columns.length; ++i) {
                     if (columns[i].id == targetColumnId)
                     {
                             if (columns[i].sprintStatus == 2) {return false;}
                             else {return true;}
                     }
             }
             return true;
     }

     function dropAllowedNew(startColumnId, targetColumnId, cardId) {
             var startColumn = getColumnById(startColumnId);
             var targetColumn = getColumnById(targetColumnId);
             if (startColumn.transitions.length == 0) return false
             if (startColumn.transitions[0][3] == "Anywhere") return true;
             var j;
             var vCard = board.getCard(cardId);
             for (j = 0; j < startColumn.transitions.length; ++j) {
                     var k;
                     for (k = 0; k < targetColumn.statuses.length; ++k){
                           if (startColumn.transitions[j][0] == vCard.project && (startColumn.transitions[j][1] == vCard.taskType || startColumn.transitions[j][1] == '')
                                                       && (startColumn.transitions[j][2] == vCard.columnStatus || startColumn.transitions[j][2] == '')
                                                       && startColumn.transitions[j][3] == targetColumn.statuses[k]){
                             return true;
                           }
                     }
             }
             return false;
             }

   function setColumns(vColumns){
     vColumns.forEach((vColumn) => {
       if (vColumn.empty && vColumn.sprintStatus != 2 && vColumn.id != "nil"){
         vColumn.overlay = template(`<div class="blockOverlay empty-sprint">
                                   <span class="empty-sprint-header">Перенесите задачи из бэклога или создайте новые, после чего нажмите «Запустить»</span>
                                   </div>`);
       }
     });
     columns = vColumns;
   }

   function parse(vData){
     vData.columns.forEach((vColumn) => {
       if (vColumn.cardCount < 1 && vColumn.sprintStatus != 2 && vColumn.id != "nil"){
         vColumn.overlay = template(`<div class="blockOverlay empty-sprint">
                                   <span class="empty-sprint-header">Перенесите задачи из бэклога или создайте новые, после чего нажмите «Запустить»</span>
                                   </div>`);
       }
     });
     columns = vData.columns;
     board.parse(vData);
   }

   function defaultEvents(){
        board.api.on("move-column", (obj) => {
          window.callProcEx('DoMoveColumn', [obj.id, obj.before]);
        });

        board.api.on("delete-card", (obj) => {
          window.callProcEx('DoDeleteCard', [obj.id]);
        });
   }



   var WIPinput;
   var columnId;
   var modal;
document.addEventListener("DOMContentLoaded", function() {
   modal = document.querySelector('#myModal');
   const saveBtn = document.querySelector('#modal-button');
   const closeBtn = document.querySelector('#close-button');
   const cancelBtn = document.querySelector('#modal-cancel');
   WIPinput = document.querySelector('#modal-input');
   saveBtn.addEventListener('click', () => {
    const newData = '0'+WIPinput.value;
    board.updateColumn({id: columnId, column: { limit: Number(newData)}});
    modal.style.display = 'none';
    window.callProcEx('DoSetLimit', [columnId, Number(newData)]);
   });
   closeBtn.addEventListener('click', () => {
    modal.style.display = "none";
   });
   cancelBtn.addEventListener('click', () => {
    modal.style.display = "none";
   });
   window.addEventListener("click", (e) => {
    if (e.target == modal) {
      modal.style.display = "none";
    }
   });
});

function getColumnById(id){
  var i;
  for (i = 0; i < columns.length; ++i){
    if (columns[i].id == id){
      return columns[i];
    }
  }

}

