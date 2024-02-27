var tasks;
var users;
function InitEvents(){
  list.api.intercept("add-task", (obj) => {
     if(obj.id.includes('temp')){
       window.callProcEx('JsTaskAdd', [obj]);
       return false;
     }
  });

  list.api.on("add-task", (obj) => {
     ResizeFrame(document.documentElement.offsetHeight+50);
  });

  list.api.on("delete-task", ({id}) => {
      window.callProcEx('JsTaskDelete', [id]);
      var task_block = document.querySelector('[data-list-id="'+id+'"]');
      ResizeFrame(document.documentElement.offsetHeight);
  });

  list.api.on("update-task", ({id, task}) => {
      window.callProcEx('JsTaskUpdate', [task]);
      ResizeFrame(document.documentElement.offsetHeight);
  });


  /*const menuButtons = document.querySelectorAll('.wx-todo_list-menu-button');
  menuButtons.forEach(button => {
    button.addEventListener('click', () => {
      var heightMenu = 200 < users.length*36 ? users.length*36 : 200;
      var heightFrame = document.documentElement.offsetHeight < heightMenu ? heightMenu : document.documentElement.offsetHeight;
      ResizeFrame(heightFrame);
      document.body.style.height = heightFrame+"px";
    });
    button.addEventListener('blur', function() {
      document.body.style.height = "100%";
      ResizeFrame(document.documentElement.offsetHeight);
    });
  });*/

  window.callProcEx('CallResizeFrame', [document.documentElement.offsetHeight]);

  document.addEventListener('click', function(event){
     ResizeFrameOnClick(event, '.wxi-dots-v');
  });

  document.addEventListener('contextmenu', function(event){
     ResizeFrameOnClick(event, '.wx-todo_list.svelte-p6km7j');
  });

}

function ResizeFrame(heightFrame){
      window.callProcEx('CallResizeFrame', [heightFrame]);
      document.body.style.height = "100%";
}

function ResizeFrameOnClick(event, cssclass){
      if(event.target.closest(cssclass)) {
	var heightMenu = 200 < users.length*36 ? users.length*36 : 200;
	var heightFrame = document.documentElement.offsetHeight < heightMenu ? heightMenu : document.documentElement.offsetHeight;
	ResizeFrame(heightFrame);
	document.body.style.height = heightFrame+"px";
      }else{
	document.body.style.height = "100%";
	ResizeFrame(document.documentElement.offsetHeight);
      }
}




