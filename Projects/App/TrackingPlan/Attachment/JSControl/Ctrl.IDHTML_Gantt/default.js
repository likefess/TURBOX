var fact_on = false;
var useLightbox = false;

var task_types_for_lightbox = [
    {key:"project", label: "Эпик"},
    {key:"task", label: "Задача"},
    {key:"Subtask", label: "Подзадача"},
    {key:"milestone", label: "Веха"}
];

var lightboxConfigForAdd = [
  {name:"taskname", height:25, map_to:"task_name", type:"textarea", focus:true},
  {name: "rutype", type: "select", map_to: "type", options: task_types_for_lightbox},
  {name: "time", type: "duration", map_to: "auto" }
  ];

var lightboxConfigForTask = [
  {name:"taskname", height:25, map_to:"task_name", type:"textarea", focus:true},
  {name: "time", type: "duration", map_to: "auto" }
  ];
gantt.config.lightbox.sections = lightboxConfigForTask;

var lightboxConfigForEpic = [
  {name:"taskname", height:25, map_to:"task_name", type:"textarea", focus:true},
  {name: "time", type: "duration", map_to: "auto" }
  ];
gantt.config.lightbox.project_sections = lightboxConfigForEpic;

var lightboxConfigForMilestone = [
  {name:"taskname", height:25, map_to:"task_name", type:"textarea", focus:true},
  {name: "time", type: "duration", map_to: "auto" }
  ];
gantt.config.lightbox.milestone_sections = lightboxConfigForMilestone;

const fixedColumn = {
  columns: [
    {name: "add_button", label: '<i value="add_button" class="fa fa-plus add_button" onclick=clickAddButton(0)></i>', width: 50, template: function (task){
      var add_button = '<i value="add_button" class="fa fa-plus add_button" onclick=clickAddButton("'+task.id+'")></i>';
      return add_button;
      }
    },
  ]
};
const fixedColumnForLightbox = {
  columns: [
    {name:"add", width:40},
  ]
};



gantt.save = function (type) {
	type = type || "json";
	window.callProcEx('ReturnJson', [this[type].serialize()]);
};

gantt.attachEvent("onAfterTaskDelete", function(id,item){
	window.callProcEx('JsTaskDelete', [id, item])
});

gantt.attachEvent("onAfterTaskUpdate", function(id,item){
  if (item.end_date != ''){
    var level = gantt.calculateTaskLevel(item);
    window.callProcEx('JsTaskUpdate', [id, item]);
    while(level)
    {
	 level--;
	 id = gantt.getParent(id);
	 gantt.updateDatesOfTask(id);
    }
  }
});

gantt.attachEvent("onAfterLinkDelete", function(id,item){
	window.callProcEx('JsLinkDelete', [id, item])
});

gantt.attachEvent("onAfterLinkAdd", function(id,item){
	window.callProcEx('JsLinkAdd', [id, item])
});

gantt.attachEvent("onLightboxSave", function(id, task, is_new){
  if(is_new){
    window.callProcEx('JsTaskAddViaLightbox', [id, task]);
  } else{
    window.callProcEx('JsTaskUpdateViaLightbox', [id, task]);
  }
  return true;
})

gantt.attachEvent("onLightboxDelete", function(id){
  window.callProcEx('JsTaskDeleteViaLightbox', [id]);
  gantt.hideLightbox();
  gantt.deleteTask(id);
  return false;
})


/*gantt.configProjectType = function () {
	gantt.config.lightbox.project_sections = [
	{name:"taskname", height:25, map_to:"task_name", type:"textarea", focus:true},
	{name:"comment", height:50, map_to:"comment", type:"textarea", focus:true},
	{name: "time", type: "duration", readonly: true, map_to: "auto" }
	];

};  */

/*
gantt.addEpic = function () {
	gantt.config.types.epic = "epic";
	gantt.locale.labels.type_epic = "Epic";


}; */

gantt.templates.grid_row_class = function( start, end, task ){
   if ( task.$rendered_type =="subtask" || task.$rendered_type == "milestone" ){
	  return "nested_task"
   }

   return "";
};

gantt.templates.rightside_text = function(start, end, task){
    if(task.type == gantt.config.types.milestone){
	return task.task_name;
    }
    return "";
};

gantt.config.editor_types.progressNumber = {
    show: function (id, column, config, placeholder) {
	var min = config.min || 0,
	max = config.max || 100;
 
	var html = "<div><input type='number' min='" + min + 
		      "' max='" + max + "' name='" + column.name + "'></div>";
	placeholder.innerHTML = html;
    },
    hide: function () {
    },
    set_value: function (value, id, column, node) {
	getInput(node).value = parseFloat((value*100).toFixed(2));
    },
    get_value: function (id, column, node) {
	var value = getInput(node).value/100;
	if (value > 1) value = 1;
	if (value < 0) value = 0;
	return	value || 0;
    },
    is_changed: function (value, id, column, node) {
	var currentValue = this.get_value(id, column, node);
	return Number(value) !== Number(currentValue);
    },
    is_valid: function (value, id, column, node) {
	return !isNaN(parseInt(value, 10));
    },
    focus: defaultFocusInlineEditor
};
gantt.config.editor_types.simpleNumber = {
    show: function (id, column, config, placeholder) {
	var min = config.min || 0,
	max = config.max || 100;
 
	var html = "<div><input type='number' min='" + min + 
		      "' name='" + column.name + "'></div>";
	placeholder.innerHTML = html;
    },
    hide: function () {
      // can be empty since we don't have anything to clean up after the editor 
	  // is detached
    },
    set_value: function (value, id, column, node) {
	getInput(node).value = value;
    },
    get_value: function (id, column, node) {
	return getInput(node).value || 0;
    },
    is_changed: function (value, id, column, node) {
	var currentValue = this.get_value(id, column, node);
	return Number(value) !== Number(currentValue);
    },
    is_valid: function (value, id, column, node) {
	return !isNaN(parseInt(value, 10))&&parseInt(value, 10)>=0;
    },
    focus: defaultFocusInlineEditor
};
function getInput(node){
  return node.querySelector("input");
}
function getSelect(node){
  return node.querySelector("select");
}

var task_types_for_lightbox = [
    {key:"project", label: "Эпик"},
    {key:"task", label: "Задача"},
    {key:"Subtask", label: "Подзадача"},
    {key:"milestone", label: "Веха"}
];

var progressEditor = {type: "progressNumber", map_to: "progress", min:0, max: 100};
var task_nameEditor = {type: "text", map_to: "task_name"};
var start_dateEditor = {type: "date", map_to: "start_date", max: function(taskId){
										   return gantt.getTask(taskId).end_date;
										 }};
var end_dateEditor = {type: "date", map_to: "end_date", min: function(taskId){
									       return gantt.getTask(taskId).start_date;
									     }};
var durationEditor = {type: "simpleNumber", map_to: "duration", min:0};

gantt.config.editor_types.date.focus = defaultFocusInlineEditor;
gantt.config.editor_types.text.focus = defaultFocusInlineEditor;

function defaultFocusInlineEditor(node) {
    var input = getInput(node);
    if (input == null) input = getSelect(node);
    input.addEventListener('blur', function(){
      gantt.ext.inlineEditors.save();
    })
    if (!input) {
	return;
    }
    if (input.focus) {
	input.focus();
    }

    if (input.select) {
      input.select();
    }
}
function getResourcesArray(){
  var res_store = gantt.getDatastore(gantt.config.resource_store).pull;
  const arr = [];
  for (const key in res_store) {
    if (res_store.hasOwnProperty(key)) {
      const resource = res_store[key];
      arr.push({ key: resource.id, label: resource.text });
    }
  }
  return arr;
}

gantt.configColumns = function () {
	var resourcesArray = getResourcesArray();
	var responsibleEditor = {type: "select", map_to: "responsible", options:resourcesArray};
	gantt.config.editor_types.select.focus = defaultFocusInlineEditor;
	default_columns = [
	{name:"wbs", label:"WBS", width:40, resize: true, template: gantt.getWBSCode },
	//{name:"rutype", label:"Тип задачи", align:"left", resize: true, min_width:170},
	//{name:"text", label:"Номер", align:"left", resize: true, min_width:90},
	{name:"task_name", label:"Название задачи", align:"left", tree:true, resize: true, min_width:250, editor: task_nameEditor},
	{name:"start_date", label:"Дата начала", align:"center", resize: true, min_width:100, editor: start_dateEditor},
	{name:"end_date", label:"Дата окончания", align:"center", resize: true, min_width:100, editor: end_dateEditor},
	{name:"duration", label:"Длительность", align:"center", resize: true, min_width:100, editor: durationEditor},
	{name:"progress", label:"Прогресс", align:"center", resize: true, editor:progressEditor, min_width:80, template: function (task){
												   return Math.round(task.progress * 100) + "%"}},
	{name:"users", label:"Ресурсы", align:"left", resize: true, min_width:100, template: function (task) {
				var store = gantt.getDatastore(gantt.config.resource_store);
				var userValue = task.user_id;
				var result = "";
				if (userValue) {
					for (var i = 0; i<userValue.length; i++)
					{
					   result += store.getItem(userValue[i]).text + ', ';
					}
					result = result.substr(0, result.length-2);
				}
				return result;
			}
		},
	{name:"responsible", label:"Ответственный", align:"left", resize: true, min_width:100, template: function (task) {
				var store = gantt.getDatastore(gantt.config.resource_store);
				var responsible = store.getItem(task.responsible);
				if(!responsible) return null;
				return responsible.text;
			}, editor: responsibleEditor
		},
	//{name:"add", width:40},


	];

	gantt.config.columns = default_columns;
};

function clickAddButton(id) {
     window.callProcEx('JsTaskAddWBS', [id]);
}


gantt.addSubtask = function () {
	gantt.config.types.subtask = "subtask";
	gantt.locale.labels.type_subtask = "Subtask";

	var lightboxConfigForSubtask = [
	  {name:"taskname", height:25, map_to:"task_name", type:"textarea", focus:true},
	  //{name: "rutype", type: "select", map_to: "type", options: task_types_for_lightbox},
	  {name: "time", type: "duration", map_to: "auto" }
	  ];
	gantt.config.lightbox.subtask_sections = lightboxConfigForSubtask;

	gantt.templates.task_class = function(start, end, task){
	//if(gantt.isCriticalTask(task)) return "gantt_critical_task";
	if(task.type == gantt.config.types.subtask){
		return "subtask_task";
	}

	gantt.locale.labels.section_taskname = "Название";
	gantt.locale.labels.section_rutype = "Тип";

	return "";
	};
};

gantt.attachEvent("onBeforeLightbox", function(id) {
  var task = gantt.getTask(id);
  if (!useLightbox){
    window.callProcEx('JsTaskWBS', [id, task])
    return false;
  }
  if (task.$new){
    var task_types_for_lightbox_add = task_types_for_lightbox.filter((obj, index) => index === 0 || index === 1 || index === 3);
    if (task.parent != 0){
      var parentTask = gantt.getTask(task.parent);
      switch(parentTask.type) {
      case "project":
	if (gantt.calculateTaskLevel(parentTask) != 0){
	  task_types_for_lightbox_add = task_types_for_lightbox.filter((obj, index) =>index === 1 || index === 2|| index === 3);
	}
	break;
      case "task":
	task_types_for_lightbox_add = task_types_for_lightbox.filter((obj, index) => index === 2|| index === 3);
	break;
      default:
	task_types_for_lightbox_add = task_types_for_lightbox.filter((obj, index) => index === 0 || index === 1 || index === 3);
	break
      }
    }
    lightboxConfigForAdd[1].options = task_types_for_lightbox_add;
    gantt.config.lightbox.sections = lightboxConfigForAdd;
  }else{
    gantt.config.lightbox.sections = lightboxConfigForTask;
  }
  gantt.changeLightboxType(gantt.config.lightbox.sections);
  return true;
});

gantt.update = function (id, task, start_date, end_date) {
	if(start_date!=null && end_date!=null){
	  task.start_date = new Date(start_date);
	  task.end_date = new Date(end_date);
	}
	gantt.updateTask(id, task);
	var parentTask = gantt.getTask(task.parent);
	if (parentTask.type != "project"){
	  delete parentTask.start_date;
	  delete parentTask.end_date;
	  delete parentTask.duration;
	  gantt.updateTask(parentTask.id, deleteServiceFields(parentTask));
	  gantt.updateTask(parentTask.id);
	}
};

function deleteServiceFields(obj)
{
  const filteredKeys = Object.keys(obj).filter(prop => !prop.startsWith('$'));
  const filteredObj = filteredKeys.reduce((acc, prop) => {
	acc[prop] = obj[prop];
	return acc;
	}, {});
  return filteredObj;
}

gantt.updateDatesOfTask = function (id) {
	var taskObj = gantt.getTask(id);
	window.callProcEx('UpdateDateOfTask', [taskObj.start_date, taskObj.end_date, id]);
};

//gantt.attachEvent("onTaskLoading", function(task){
//    task.fact_start = gantt.date.parseDate(task.fact_start, "xml_date");
//    task.fact_end = gantt.date.parseDate(task.fact_end, "xml_date");
//    return true;
//});


var zoomConfig = {
   levels: [
      {
	  name:"day",
	  scale_height: 27,
	  min_column_width:80,
	  scales:[
		  {unit: "day", step: 1, format: "%d %M"}
	  ]
      },
      {
	  name:"week",
	  scale_height: 50,
	  min_column_width:50,
	  scales:[
	     {unit: "week", step: 1, format: function (date) {
		 var dateToStr = gantt.date.date_to_str("%d %M");
		 var endDate = gantt.date.add(date, +6, "day");
		 var weekNum = gantt.date.date_to_str("%W")(date);
		 return "#" + weekNum + ", " + dateToStr(date) + " - " + dateToStr(endDate);
	     }},
	     {unit: "day", step: 1, format: "%j %D"}
	  ]
      },
      {
	  name:"month",
	  scale_height: 50,
	  min_column_width:120,
	  scales:[
	     {unit: "month", format: "%F, %Y"},
	     {unit: "week", format: "Неделя #%W"}
	  ]
      },
      {
	  name:"quarter",
	  height: 50,
	  min_column_width:90,
	  scales:[
	     {unit: "month", step: 1, format: "%M"},
	     {
		unit: "quarter", step: 1, format: function (date) {
		    var dateToStr = gantt.date.date_to_str("%M");
		    var endDate = gantt.date.add(gantt.date.add(date, 3, "month"), -1, "day");
		    return dateToStr(date) + " - " + dateToStr(endDate);
		}
	     }
	  ]
      },
      {
	  name:"year",
	  scale_height: 50,
	  min_column_width: 80,
	  scales:[
		  {unit: "year", step: 1, format: "%Y"}
	  ]
      }
   ]
};;
gantt.ext.zoom.init(zoomConfig);
gantt.ext.zoom.setLevel("week");


gantt.FactOn = function () {
  fact_on = true;
  gantt.setBarRowHeightForBaseline();
  gantt.addTaskLayer({
    renderer:
      {render:
	function draw_fact(task)
	  {if (task.fact_start && task.fact_end)
	    {
	    var sizes = gantt.getTaskPosition(task, task.fact_start, task.fact_end);
	    var el = document.createElement('div');
	    el.textContent = task.status_type_name;
	    el.style.textAlign = 'center';
	    el.style.fontSize = '12px';
	    el.style.whiteSpace = 'nowrap';
	    el.style.overflow = 'hidden';
	    el.style.textOverflow = 'ellipsis';
	    if (sizes.width < 36)
	    {
	      el.textContent = '';
	      el.title = task.status_type_name;
	    }
	    var status_color_class = "baseline_unknown";
	    if (task.status_type_name === 'В процессе')
	    {
	      status_color_class = "baseline_in_process";
	    } else if (task.status_type_name === 'На паузе')
	    {
	      status_color_class = "baseline_pause";
	    } else if (task.status_type_name === 'Завершен')
	    {
	      status_color_class = "baseline_completed";
	    } else if (task.status_type_name === 'Отменен')
	    {
	      status_color_class = "baseline_canceled";
	    }
	    el.classList.add(status_color_class, 'baseline');
	    el.style.left = sizes.left + 'px';
	    el.style.width = sizes.width + 'px';
	    el.style.top = sizes.top + gantt.config.bar_height + 13 + 'px';
	    return el; }
	  return false; },
      getRectangle:
	function(task, view)
	  {if (task.fact_start && task.fact_end)
	    {
	      task.fact_start = gantt.date.parseDate(task.fact_start, "xml_date");
	      task.fact_end = gantt.date.parseDate(task.fact_end, "xml_date");
	      return gantt.getTaskPosition(task, task.fact_start, task.fact_end);}
	  return null;}}});
}

gantt.setBarRowHeightForBaseline = function()
{
  gantt.config.bar_height = 16;
  gantt.config.row_height = 40;
}

gantt.resetBarRowHeight = function(){
  gantt.config.bar_height = "full";
  gantt.config.row_height = 35;
}

document.addEventListener("DOMContentLoaded", function() {
  var checkboxCritical = document.querySelector("#c1"); 

  checkboxCritical.addEventListener('change', function() {  
    if (this.checked) {
      gantt.config.highlight_critical_path = true;
    } else {
      gantt.config.highlight_critical_path = false;
    }
    gantt.render();
  });

  var checkboxResources = document.querySelector("#c2"); 

  checkboxResources.addEventListener('change', function() {
    if (useLightbox){
      if (this.checked) {
	gantt.config.layout = withResources;
      } else {
	gantt.config.layout = withoutResources;
      }
    }else{
      if (this.checked) {
	gantt.config.layout = withResourcesForLightbox;
      } else {
	gantt.config.layout = withoutResourcesForLightbox;
      }
    }

    gantt.resetLayout();
    if (fact_on)
    {
      gantt.FactOn();
      gantt.render();
    }
  });

  var checkboxFact = document.querySelector("#c3"); 
  checkboxFact.addEventListener('change', function() {	
    if (this.checked) {
      gantt.FactOn();
      gantt.$root.classList.add("visible-baselines");
      gantt.render();
    } else {
      fact_on = false;
      gantt.resetBarRowHeight();
      gantt.$root.classList.remove("visible-baselines");
      gantt.resetLayout();
    }

  });

  var radios = document.getElementsByName("scale");
	for (var i = 0; i < radios.length; i++) {
		radios[i].onclick = function (event) {
			gantt.ext.zoom.setLevel(event.target.value);
		};
	}

});

var layoutForBriefCase = {
    css: 'gantt_container',
    cols: [
	{
	    width: 400,
	    min_width: 300,
	    rows: [
		{ view: 'grid', bind: 'task', scrollX: 'gridScrollX', scrollable: true, scrollY: 'scrollVer' },
		{ view: 'scrollbar', id: 'gridScrollX' }
	    ]
	},
	{ resizer: true, width: 1 },
	{
	    rows: [
		{
		    group: 'gantt',
		    cols: [
			{
			    rows: [
				{ view: 'timeline', scrollX: 'scrollHor', scrollY: 'scrollVer' },
				{ view: 'scrollbar', id: 'scrollHor' }
			    ]
			},
			{ view: 'scrollbar', id: 'scrollVer' }
		    ]
		}
	    ]
	}
    ]
};

function removeCheckboxsDiv() {
  var div = document.getElementById("checkboxs_div");
  div.remove();
}

function useInfiniteScroll(){
   gantt.attachEvent("onGanttScroll", function (left, top) {
      const left_date = gantt.dateFromPos(left)
      const right_date = gantt.dateFromPos(left + gantt.$task.offsetWidth)
 
      gantt.config.start_date = gantt.config.start_date || gantt.getState().min_date;
      gantt.config.end_date = gantt.config.end_date || gantt.getState().max_date;

      const zoomLevels = gantt.ext.zoom.getLevels();
      const zoomLevel = zoomLevels[gantt.ext.zoom.getCurrentLevel()];
      var difference;
      switch (zoomLevel.name) {
	case "day":
	     difference = 1;
	     break;
	case "week":
	     difference = 3;
	     break;
	case "month":
	     difference = 4,7;	//80/120*7
	     break;
	case "quarter":
	     difference = 26,6; //80/90*30
	     break;
	case "year":
	     difference = 365 //80/80*365
	     break;
      }
      const min_allowed_date = gantt.date.add(gantt.config.start_date, difference, "day");
      const max_allowed_date = gantt.date.add(gantt.config.end_date, -2*difference, "day");
 
      let repaint = false;
      if (+left_date <= +min_allowed_date) {
	  gantt.config.start_date = gantt.date.add(gantt.config.start_date, -2*difference, "day");
	  repaint = true;
      }
      if (+right_date >= +max_allowed_date) {
	  gantt.config.end_date = gantt.date.add(gantt.config.end_date, 2*difference, "day");
	  repaint = true;
      }
 
      if (repaint) {
	  setTimeout(function () {
	      gantt.render()
	      gantt.showDate(left_date)
	  }, 20)
      }
   });

   /*gantt.attachEvent("onTaskDrag", function (id, mode, task, original) {
    if (task.start_date <= gantt.getState().min_date ||
	task.end_date >= gantt.getState().max_date) {
	gantt.render()
    }
});*/
}