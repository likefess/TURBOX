class Root {
    constructor() {
        this._uid = 1;
    }
    modelCreateUtil(modelData){
        const canvas = this.diagram.get('canvas');
        const elementFactory = this.diagram.get('elementFactory');
        const eventBus = this.diagram.get('eventBus');
        eventBus.fire('diagram.clear');
        const root = elementFactory.createRoot();
        canvas.setRootElement(root);
        this.updateElements(modelData);
    }
    getAllElementsArray () {
        return this.diagram.get('canvas').getRootElement().children || [];
    }
    getAllElementsObj () {
        return this.diagram.get('canvas')._elementRegistry._elements || {};
    }

    modelExtractUtil() {
        if (!this.diagram) {
            return []
        }
        const elements = this.getAllElementsArray();
        return elements.map(this.convertElementToJson);
    }
    convertElementToJson (element) {
        const el = {...element}
        delete el.labels
        delete el.children
        if(el.type === 'connection' &&
        element.target && element.source){
            el.initialTarget = element.target.id;
            el.initialSource = element.source.id;
        }
        return el;
    }
    mergeDeep(...objects) {
        const isObject = obj => obj && typeof obj === 'object';
        const excludedProperties = ['labels', 'children']

        return objects.reduce((prev, obj) => {
            Object.keys(prev).forEach(key => {
                if(excludedProperties.includes(key)){
                    return
                }
                delete prev[key]
            })
            Object.keys(obj).forEach(key => {
                if(excludedProperties.includes(key)){
                    return
                }
                const pVal = prev[key];
                const oVal = obj[key];

                if (isObject(pVal) && isObject(oVal)) {
                    prev[key] = this.mergeDeep(pVal, oVal);
                }
                else {
                    prev[key] = oVal;
                }
            });

            return prev;
        }, objects[0]);
    }
    deleteElements (elementsId) {
        if(!Array.isArray(elementsId)){
            elementsId = [elementsId];
        }
        const canvasElements = this.getAllElementsObj();
        const modeling = this.diagram.get('modeling');
        const elementsDelete = [];
        elementsId.forEach((elementId) => {
            if(canvasElements[elementId]){
                elementsDelete.push(canvasElements[elementId].element);
            }
        })

        modeling.removeElements(elementsDelete);
        return JSON.stringify(elementsId);
    }
    clearElement (element) {
        const defaultParams = this.diagram.get('defaultParams')
        const typeDefault = defaultParams[element.type.toUpperCase()]
        element.hint = typeDefault.hint || ''
        if (element.innerLabel) element.innerLabel = typeDefault.innerLabel || {}
        if (element.style) element.style = typeDefault.style || {}
        if (element.hoverStyle) element.hoverStyle = typeDefault.hoverStyle || {}
        if (element.type === 'shape') {
            element.height  = 0
            element.width   = 0
            element.x       = 0
            element.y       = 0
            element.subType = ''
        } else {
            if (element.markerEnd) element.markerEnd = typeDefault.markerEnd || {}
            if (element.markerStart) element.markerStart = typeDefault.markerEnd || {}
        }
        return element;
    }
    updateElements (elements) {
        if(!Array.isArray(elements)){
            elements = [elements];
        }
        const shape = {};
        const connection = [];
        const canvas = this.diagram.get('canvas');
        const eventBus = this.diagram.get('eventBus');
        const elementFactory = this.diagram.get('elementFactory');
        const canvasElements = this.getAllElementsObj();
        const addId = [];
        const updatedElements = [];

        elements
        .sort((a, b) => a.zIndex > b.zIndex ? -1 : 1)
        .forEach((element) => {
            if(!canvasElements[element.id]){
                if(!element.id){
                    console.error('the element ' + element.type + ' has no id ');
                    throw element;
                }
                getGlobals.call(this, element)
                if(element.type === 'shape'){
                    shape[element.id] = elementFactory.createShape(element);
                    canvas.addShape(shape[element.id], null, element.zIndex);
                } else {
                    connection.push(element);
                }
                addId.push(element.id);

                return;
            } else {
                if (element.type === 'connection') {
                    if (!element.waypoints) {  
                        element.waypoints = this.diagram.get('layouter').layoutConnection(element, {
                            target: shape[element.initialTarget] || canvasElements[element.initialTarget].element, 
                            source: shape[element.initialSource] || canvasElements[element.initialSource].element
                        });
                    }
                }
            }
            const canvasEl = canvasElements[element.id].element
            updatedElements.push(this.mergeDeep(canvasEl, element));
        })
        connection.forEach(element => {
            if(!element.initialTarget){
                console.error('the ' + element.type + ' with id ' + element.id + ' not specified initialTarget')
                throw element
            }
            if(!element.initialSource){
                console.error('the ' + element.type + ' with id ' + element.id + ' not specified initialSource')
                throw element
            }
            if(!(shape[element.initialTarget] || canvasElements[element.initialTarget])){
                throw 'No found shape with id ' + element.initialTarget + ' specified at ' + element.id + ' as initialTarget'
            }
            if(!(shape[element.initialSource] || canvasElements[element.initialSource])){
                throw 'No found shape with id ' + element.initialSource + ' specified at ' + element.id + ' as initialSource'
            }
            
            element.target = shape[element.initialTarget] || canvasElements[element.initialTarget].element;
            element.source = shape[element.initialSource] || canvasElements[element.initialSource].element;

            if (!element.waypoints) {
                element.waypoints = this.diagram.get('layouter').layoutConnection(element, null);
            }

            canvas.addConnection(elementFactory.createConnection(element), null, element.zIndex)
        })
        if(updatedElements.length !== 0){
            eventBus.fire('elements.changed', { elements: updatedElements });
        }
        return JSON.stringify(addId);
    }
    getModuleDefaultParams (globalParams) {
        return {
            __init__: ['defaultParams'],
                'defaultParams': ['type', function () {
                return {
                    CONNECTION: {
                        style:
                            {
                                fill: 'none',
                                strokeWidth: 2,
                                stroke: '#000'
                            },
                        showLabel: 'hover',
                        hoverStyle:{strokeOpacity: 0.3},
                        markerEnd: {type: 'arrow-fill'},
                        innerLabel: {
                            style: {
                                fill: 'black',
                                "fontFamily": "Arial, sans-serif",
                                "fontSize": "12px",
                                "fontWeight": "normal",
                            }
                        }
                    },
                    SHAPE: {
                        style: {
                            fill: 'white',
                            stroke: '#000',
                            strokeWidth: 2
                        },
                        innerLabel: {
                            style: {
                                fill: 'black',
                                "fontFamily": "Arial, sans-serif",
                                "fontSize": "12px",
                                "fontWeight": "normal",
                            }
                        }
                    },
                    ...globalParams
                }
            }]
        }
    }
    additionalModules = {}
    render({data, snippets, commands, additionalModules , isEdit = this.isEdit, globals}) {
        if(!data){
            data = this.modelExtractUtil();
        }
        this.globals = globals;
        if(additionalModules){
            this.additionalModules = additionalModules;
        }
        if(isEdit !== this.isEdit){
            if(this.diagram){
                var viewbox = this.diagram.get('canvas').viewbox();
                this.scale = viewbox.scale;
                this.offset = {x: viewbox.x, y: viewbox.y};
                
                this.diagram.destroy();
                this.diagram = null;
            }
            this.diagram = Editor({
                container: document.querySelector('#container'),
                additionalModules: [
                    this.getModuleDefaultParams(this.additionalModules.globalParams)
                ]
            },isEdit);
            this.isEdit = isEdit
            this.zoomAndOffset({scale: this.scale, offset: this.offset})
        }
        if(!this.diagram){
            this.diagram = Editor({
                container: document.querySelector('#container'),
                additionalModules: [this.getModuleDefaultParams(this.additionalModules.globalParams)]
            },isEdit);
        }
        this.modelCreateUtil(data)
        if(!this.offset) {
            var viewbox = this.diagram.get('canvas').viewbox();
            this.offset = {x: viewbox.inner.x, y: viewbox.inner.y};
            this.zoomAndOffset({scale: this.scale, offset: this.offset})
        }
        if (isEdit) {
            if (snippets) {
                const create = this.diagram.get('create');
                const elementFactory = this.diagram.get('elementFactory');
                let uid = this._uid;
                const items = [
                    {
                        name: 'tool-separator-html',
                        group: 'html',
                        separator: true
                    }
                ]
                snippets.forEach(snippet => {
                    items.push(
                        {
                            name: 'create-html-' + uid++,
                            group: 'html',
                            ...(snippet.icon ? {
                                icon: snippet.icon
                            } : {
                                className: 'palette-icon-create-html'
                            }),
                            title: `Создать ${snippet.title || snippet.hint || 'Html'}`,
                            action: {
                                click: function () {
                                    const shape = elementFactory.createShape({
                                        ...snippet
                                    });
            
                                    create.start(event, shape);
                                }
                            }
                        }
                    )
                })
                this.paletteAdd(items)
            }
            if (commands) {
                const eventBus = this.diagram.get('eventBus');
                const palette = this.diagram.get('palette');
                const popupMenu = this.diagram.get('popupMenu');
                let uid = this._uid;

                const items = commands.map(command => {
                    return {
                        label: command.label,
                        name: 'command' + uid++,
                        action: function () {
                            eventBus.fire('elements.customCommand', { command: command.action });
                        }
                    }
                })
                const paletteItem = [
                    {
                        name: 'custom-commands',
                        group: 'tools',
                        className: 'palette-icon-custom-commands',
                        title: 'Кастомные команды',
                        action: {
                          click: function (event) {
                            const { right, top } = palette._container.getBoundingClientRect();
                            const position = {
                              x: right,
                              y: top,
                              cursor: { x: event.x, y: event.y }
                            };
                            popupMenu.open(true, 'custom-commands-menu', position);
                          }
                        }
                    },
                ]
                this.customCommandsMenuAdd(items, 'Команды', 'custom-commands');
                this.paletteAdd(paletteItem)
            }
        }
    }
    customCommandsMenuAdd(items, label, name) {
        const customCommandsMenuProvider = this.diagram.get('customCommandsMenuProvider');

        const entries = items.map(item => {
            const {label, action, name: itemName} = item;
            return {
                id: name + '-item-' + itemName,
                className: name + '-item',
                label: label,
                action: action
            }
        })

        const headerEntries = [
            {
                id: name + '-header',
                className: name + '-header',
                disabled: true,
                label: label
            }
        ];
        customCommandsMenuProvider.addEntries(entries);
        customCommandsMenuProvider.addHeaderEntries(headerEntries);
    }
    paletteAdd(items) {
        const palette = this.diagram.get('palette');
        const paletteProvider = this.diagram.get('examplePaletteProvider');
        const paletteItems = {};
        items.forEach(item => {
            const {name, title, group, icon, className, action, separator} = item;
            paletteItems[name] = {
                group: group,
                imageUrl: icon,
                className,
                title,
                action,
                separator
            }
        })
        paletteProvider.addPaletteEntries(paletteItems);
        palette._update();
    }
    exportJson() {
        return JSON.stringify(this.modelExtractUtil());
    }
    calculateOffset (offset) {
        var currentViewbox = this.diagram.get('canvas').viewbox()
        var newViewbox = {
            x: currentViewbox.inner.x,
            y: currentViewbox.inner.y,
            width: currentViewbox.width,
            height: currentViewbox.height
        }
        if(offset.x){
            offset.x === 'center'
                ? newViewbox.x += (currentViewbox.inner.width / 2 - currentViewbox.outer.width / currentViewbox.scale / 2)
                : newViewbox.x = offset.x

        } else{
            newViewbox.x = currentViewbox.x;
        }
        if(offset.y){
            offset.y === 'center'
                ? newViewbox.y += (currentViewbox.inner.height / 2 - currentViewbox.outer.height / currentViewbox.scale / 2)
                : newViewbox.y = offset.y
        } else{
            newViewbox.y = currentViewbox.y;
        }
        return newViewbox;

    }
    zoomAndOffset (props) {
        if(!this.diagram){
            return
        }
        if(props){
            if (props.auto) {
                this.diagram.get('canvas').zoom('fit-viewport', true)
            }
            if (props.scale) {
                this.diagram.get('canvas').zoom(props.scale)
            }
            if (props.offset) {
                var newViewbox = this.calculateOffset(props.offset)
                this.diagram.get('canvas').viewbox(newViewbox)
            }
        }
        var currentValue = this.diagram.get('canvas').viewbox()
       return JSON.stringify({x:currentValue.x, y:currentValue.y, scale:currentValue.scale});
    }
    toggleMenu () {
        this.diagram.get('palette').toggle()
    }
    openMenu () {
        this.diagram.get('palette').open()
    }
    closeMenu () {
        this.diagram.get('palette').close()
    }
    hideMenu () {
        this.diagram.get('palette').hide()
    }
    showMenu () {
        this.diagram.get('palette').show()
    }
    undo () {
        this.diagram.get('commandStack').undo()
    }
    redo () {
        this.diagram.get('commandStack').redo()
    }
}
var RootDiagram = new Root()

window.onload = function () {
    window.callProcEx('initDiagram', [])
}

function getGlobals(element) {
    if (this.globals) {
        const type = element.type;
        const typeParams = this.globals[type];
        for (const param in typeParams) {
            if (element[param] === undefined) {
                element[param] = typeParams[param];
            }
        }
    }
    return element;
}