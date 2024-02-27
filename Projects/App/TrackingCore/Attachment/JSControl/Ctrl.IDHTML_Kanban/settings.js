let doers;
let projects;
let versions;
let labels;
let sprints;
let types;
let epics;

const getDefaultColumnMenuItems = ({ column, columnIndex, store }) => [
    { id: "add-card", icon: "wxi-plus", text: "Добавить новую карточку", onClick: ({column}) => window.callProcEx('DoAddCard', [column.id])},
    { id: "set-edit", icon: "wxi-edit", text: "Переименовать", },
    {
        id: "move-column:left",
        icon: "wxi-arrow-left",
        text: "Переместить влево",
        disabled: columnIndex <= 0,
    },
    {
        id: "move-column:right",
        icon: "wxi-arrow-right",
        text: "Переместить вправо",
        disabled: columnIndex >= columns.length - 1
    },
    {
        id: "set-limit",
        icon: "wxi-edit",
        text: "Редактировать лимит",
        onClick: ({column}) =>
        {
          modal.style.display = 'block';
          WIPinput.value = column.limit;
          columnId = column.id;
        },
    },
   // { id: "delete-column", icon: "wxi-delete", text: "Удалить" }
];

const getSprintBoardColumnMenuItems = (obj) =>{
  var column = obj.column;
  if(column.id == "nil"){
    return [{ id: "add-card", text: "Добавить задачу", onClick: ({column}) => window.callProcEx('DoAddCardToSprint', [column.id])}];
  }else{
     switch(column.sprintStatus) {
     case 0:        //незапущенные
       return [{ id: "run-sprint", text: "Запустить", onClick: ({column}) => window.callProcEx('DoRunSprint', [column.id])},
       { id: "add-card", text: "Добавить задачу", onClick: ({column}) => window.callProcEx('DoAddCardToSprint', [column.id])},
       { id: "edit-sprint", text: "Редактировать", onClick: ({column}) => window.callProcEx('DoEditSprint', [column.id])},
       { id: "capacity-sprint", text: "Емкость команды", onClick: ({column}) => window.callProcEx('DoCapacitySprint', [column.id])},
       { id: "delete-sprint", text: "Удалить", onClick: ({column}) => window.callProcEx('DoDeleteSprint', [column.id])}];
       break;
     case 1:        //запущенный
       return [{ id: "close-sprint", text: "Завершить", onClick: ({column}) => window.callProcEx('DoCloseSprint', [column.id])},
       { id: "add-card", text: "Добавить задачу", onClick: ({column}) => window.callProcEx('DoAddCardToSprint', [column.id])},
       { id: "edit-sprint", text: "Редактировать", onClick: ({column}) => window.callProcEx('DoEditSprint', [column.id])},
       { id: "capacity-sprint", text: "Емкость команды", onClick: ({column}) => window.callProcEx('DoCapacitySprint', [column.id])},
       { id: "delete-sprint", text: "Удалить", onClick: ({column}) => window.callProcEx('DoDeleteSprint', [column.id])}];
       break;
     default:      //завершенные
       return [{ id: "capacity-sprint", text: "Емкость команды", onClick: ({column}) => window.callProcEx('DoCapacitySprint', [column.id])},
       { id: "delete-sprint", text: "Удалить", onClick: ({column}) => window.callProcEx('DoDeleteSprint', [column.id])}];
       break;
    }
  }
}

var columnShape = {
    menu: {
        show: true,
        items: getDefaultColumnMenuItems
    }
};

var columnShapeForSprints = {
    menu: {
        show: true,
        items: getSprintBoardColumnMenuItems
    }
};

const getDefaultCardMenuItems = ({ card, store }) => {
    const readonly = store.getState();
    if (!readonly?.select && readonly?.edit) {
        return [
            { id: "set-edit", icon: "wxi-edit", text: "Edit",  },
            { id: "delete-card", icon: "wxi-delete", text: "Delete"},
        ];
    }
    return [{ id: "delete-card", icon: "wxi-delete", text: "Delete"}];
};

const getSprintBoardCardMenuItems = ({ card, store }) => {
  if (card.column != "nil"){
    return [
           { id: "move-card", text: "Перенести в спринт", items: getNotClosedSprints(card)},
           { id: "move-to-backlog", text: "Удалить из спринта", onClick: (obj) => {startCol = card.column; board.moveCard({id:card.id, columnId: "nil"}); window.callProcEx('DoMoveCard', [card.id, {'id':"nil"}]);}}
           ];
  }else{
    return [
           { id: "move-card", text: "Перенести в спринт", items: getNotClosedSprints(card)},
           ];
  }
};

function getNotClosedSprints(card) {
  let Result = new Array();
  columns.forEach((element) => {
    if(element.sprintStatus != 2 && element.id != card.column && element.id != "nil"){
      Result.push({
        id: element.id,
        text: element.label,
        onClick: (obj) => {startCol = card.column; board.moveCard({id:card.id, columnId: element.id}); window.callProcEx('DoMoveCard', [card.id, element]);}
      });
    }
  });
  return Result;
}

var cardShape = {
    menu: {
        show: true,
        items: getDefaultCardMenuItems
    },
    color: true,
};

const cardShapeForSprints = {
    menu: {
        show: true,
        items: getSprintBoardCardMenuItems
    },
    color: true,
};

const readonly = {
        edit: true, // disable editing
        add: false, // enable adding
        select: true, // disable selecting
        dnd: true // enable dragging
    }

//let dictionary_labels = new Object();

function cardTemplate({ cardFields, selected, cardShape }) {
    const { label, color } = cardFields;
    let labels = ``;
    if(cardShape.showLabel.show){
      for(var i = 0; i<cardFields.labels.length; i++)
      {
        labels += `<div class="card-item text" title="Метка" style="background-color: #${cardShape.labelColor}">${cardFields.labels[i]}</div>`;
      }
    }
    let version = ``;
    if(cardShape.showVersion.show && cardFields.version != 'nil'){
      var versionLabel = getVersionLabelById(cardFields.version);
      version = `<div class="card-item text" title="Версия" style="background-color: #${cardShape.versionColor}">${versionLabel}</div>`;
    }
    let components = ``;
    if(cardShape.showComponent.show){
      for(var i = 0; i<cardFields.comps.length; i++)
      {
        components += `<div class="card-item text" title="Компонент" style="background-color: #${cardShape.componentColor}">${cardFields.comps[i]}</div>`;
      }
    }
    let planHours = ``;
    if(cardShape.showPlanHours.show && cardFields.planHours>0){
      planHours += `<div class="card-item text" title="Плановые часы" style="background-color: #${cardShape.planHoursColor}">План: ${cardFields.planHours}ч</div>`;
    }
    let factHours = ``;
    if(cardShape.showFactHours.show && cardFields.factHours>0){
      factHours += `<div class="card-item text" title="Фактические часы" style="background-color: #${cardShape.factHoursColor}">Факт: ${cardFields.factHours}ч</div>`;
    }
    let resources = ``;
    for(var i = 0; i<cardFields.resources.length; i++)
    {
      resources += `<div class="wx-user normal svelte-1u63mex border" style="height: 24px; width:24px;"><img src="${cardFields.resources[i].img}" title="${cardFields.resources[i].name}" class="svelte-1u63mex"></div> `;
    }
    return `
        <div class="myCard ${selected ? "selected" : ""}">
    <div class="label text" style="display:flex; justify-content: space-between; height:16px; padding: 0 0;">
      <div>
        <img class="card_icon" style="float:left; padding: 2px; height: 16px; width: 16px;" src="${cardFields.category}"> 
                            <span style="float:left; color:#454854; line-height: 14px; margin: 1px;">${cardFields.id}</span>
      </div>
      <div style="text-align:right; font-size:16px;" class="menu-icon" data-menu-id=${cardFields.id} data-ignore-selection="true">
        <i class="wxi-dots-v"></i>
      </div>
    </div>
    <div style="display:flex;flex-basis: 100%;">
      <div style = "padding: 0 0;" class="label multiline text">${cardFields.label}</div>
    </div>
    <div style="flex-basis: 100%; font-size: 12px; margin-top: 8px;">
      Приоритет: ${cardFields.priority}
    </div>
    <div style="margin-top: 8px;">
            <div class="wx-users svelte-vhwr63">
                    ${resources}
            </div>
    </div>
    <div style="margin-top: 6px; flex-basis: 100%;">
      ${labels}
      ${version}
      ${components}
      ${planHours}
      ${factHours}
    </div>
</div>          
    `;
}

function cardTemplateForSprints({ cardFields, selected, cardShape }) {
    const { label, color } = cardFields;
    let labels = ``;
    if(cardShape.showLabel.show){
      for(var i = 0; i<cardFields.labels.length; i++)
      {
        labels += `<div class="card-item text" title="Метка" style="background-color: #${cardShape.labelColor}">${cardFields.labels[i]}</div>`;
      }
    }
    let version = ``;
    if(cardShape.showVersion.show && cardFields.version != 'nil'){
      version = `<div class="card-item text" title="Версия" style="background-color: #${cardShape.versionColor}">${cardFields.version}</div>`;
    }
    let components = ``;
    if(cardShape.showComponent.show){
      for(var i = 0; i<cardFields.comps.length; i++)
      {
        components += `<div class="card-item text" title="Компонент" style="background-color: #${cardShape.componentColor}">${cardFields.comps[i]}</div>`;
      }
    }
    let planHours = ``;
    if(cardShape.showPlanHours.show && cardFields.planHours>0){
      planHours += `<div class="card-item text" title="Плановые часы" style="background-color: #${cardShape.planHoursColor}">План: ${cardFields.planHours}ч</div>`;
    }
    let factHours = ``;
    if(cardShape.showFactHours.show && cardFields.factHours>0){
      factHours += `<div class="card-item text" title="Фактические часы" style="background-color: #${cardShape.factHoursColor}">Факт: ${cardFields.factHours}ч</div>`;
    }
    let resources = ``;
    for(var i = 0; i<cardFields.resources.length; i++)
    {
      resources += `<div class="wx-user normal svelte-1u63mex border" style="height: 24px; width:24px;"><img src="${cardFields.resources[i].img}" title="${cardFields.resources[i].name}" class="svelte-1u63mex"></div> `;
    }

    let status = `<div class="card-item-status text" style="background-color: #${cardFields.status[1]}">${cardFields.status[0]}</div>`;

    return `
        <div class="myCard ${selected ? "selected" : ""}">
                        <div class="label text">
                        <img class="card_icon" src="${cardFields.category}"> 
                                                <span>${cardFields.id}</span>
                        </div> 
                        <div style="flex-basis: 100%; margin-top: 8px;">
                          ${status}
                        </div>
                        <div style="display:flex;flex-basis: 100%;">
                <div class="label multiline text">${cardFields.label}</div>
                                <div 
                    class="menu-icon"
                    data-menu-id=${cardFields.id}
                   data-ignore-selection="true">
                       <i class="wxi-dots-v"></i>
                </div>
                        </div>
                        <div style="font-size: 12px; margin-top: 8px;">
                          Приоритет: ${cardFields.priority}
                        </div>
                        <div style="margin-top: 8px; flex-basis: 100%;">
                                <div class="wx-users svelte-vhwr63" style="float: left;">
                                        ${resources}
                                </div>
                                <div style="flex-basis: 100%; text-align: right; flex-grow: 1;">
                                        ${labels}
                                        ${version}
                                        ${components}
                                        ${planHours}
                                        ${factHours}
                                </div>
                        </div>

         </div>
    `;
}

function getVersionLabelById(vId) {
  var i;
  for (i = 0; i < versions.length; i++){
    if (versions[i].id === vId) {
      return versions[i].label;
    }
  }
}

function AddUniqRow(array, vRow) {
  var itsCurrentRows = array.toString() === board.config.rows.toString();
  if (!array.some(element => element.id === vRow.id)){
    array.unshift(vRow);
    if (itsCurrentRows){
      window.callProcEx('DoPushToRowsArray');
    }
  }
}