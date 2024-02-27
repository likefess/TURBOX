class Map {
  constructor() {}
  mapCreate(mapData) {
    const eventBus = this.map.get("eventBus");
    eventBus.fire("map.clear");
    this.updateElements(mapData);
  }
  mapExtract() {
    if (!this.map) {
      return [];
    }
    return this.getAllElements();
  }
  getAllElements() {
    return this.map.get("elementRegistry").getAll() || [];
  }
  updateParams(config) {
    const map = this.map.get("map");
    map.updateMap(config);
  }
  updateElements(elements) {
    if (!Array.isArray(elements)) {
      return;
    }
    const map = this.map.get("map");
    map.updateMap({data: elements});
  }
  deleteElements(elementsIds) {
    const map = this.map.get("map");
    const eventBus = this.map.get("eventBus");
    if (!elementsIds) {
      eventBus.fire("map.clear");
      return true;
    }
    if (!Array.isArray(elementsIds)) {
      elementsIds = [elementsIds];
    }
    map.removeElements(elementsIds);
    return elementsIds;
  }
  getModuleDefaultParams(globalParams) {
    return {
      __init__: ["defaultParams"],
      defaultParams: [
        "type",
        function () {
          return {
            data: [],
            view: [55.75811, 37.677542],
            zoom: 10,
            legend: {
              show: true,
              position: "bottomleft",
              symbolWidth: 42,
              symbolHeight: 42,
              opacity: 0.5,
            },
            connection: {
              show: true,
              markers: "all",
              style: {
                color: "red",
                opacity: 0.5,
              },
            },
          };
        },
      ],
    };
  }
  render(params) {
    const { data, addtionalModules, ...options } = params || {};

    this.addtionalModules = [];
    if (addtionalModules) {
      this.addtionalModules = addtionalModules;
    }
    if (this.map) {
      this.updateParams(params);
    } else {
      this.map = IMapJS({
        container: document.querySelector("#map"),
        additionalModules: [
          this.getModuleDefaultParams(this.addtionalModules.globalParams),
        ],
        ...options,
      });
    }
    this.mapCreate(data);
  }
  exportJson() {
    return JSON.stringify(this.mapExtract());
  }
}

const MainMap = new Map();

window.onload = function () {
  MainMap.render();
  window.callProcEx("initMap", []);
};
