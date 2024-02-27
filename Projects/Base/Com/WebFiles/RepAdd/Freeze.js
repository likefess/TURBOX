function domReady(fn) {
        // If we're early to the party
        document.addEventListener("DOMContentLoaded", fn);
        // If late; I mean on time.
        if ((document.readyState === "interactive" || document.readyState === "complete") && fn) {
                fn();
        }
}

// Точка входа после загрузки страницы
domReady(() => {
        const tableBodyPadding = 10;
        const tableBodyHeight = 'auto';

        let findSelector = (selector, parent) => Array.prototype.slice.call((parent ? parent : document).querySelectorAll(selector));

        let tableRep = findSelector('table.rep');
        tableRep = (tableRep && tableRep.length && tableRep.length > 0 ? tableRep[0] : undefined);
        if (!tableRep)
                return;
        let tableRows = findSelector('tr', tableRep);
        if (!(tableRows && tableRows.length && tableRows.length > 0))
                return;
        let tableHead = findSelector('thead', tableRep); tableHead = (tableHead && tableHead.length && tableHead.length > 0 ? tableHead[0] : undefined);
        let tableBody = findSelector('tbody', tableRep); tableBody = (tableBody && tableBody.length && tableBody.length > 0 ? tableBody[0] : undefined);

        // Вычисление высоты элемента
        let calculateHeight = ((el, fn) => {
                if (el) {
                        let clientHeight = el.offsetHeight;
                        let height = clientHeight;
                        let compStyle = window.getComputedStyle(el);
                        height += parseInt(compStyle.getPropertyValue('margin-top'));
                        height += parseInt(compStyle.getPropertyValue('margin-bottom'));
                        if (fn)
                                fn(clientHeight, height);
                }
        })

        // Вычисление ширины элемента
        let calculateWidth = ((el, fn) => {
                if (el) {
                        let offsetWidth = el.offsetWidth;
                        let width = offsetWidth;
                        let compStyle = window.getComputedStyle(el);
                        width += parseInt(compStyle.getPropertyValue('margin-left'));
                        width += parseInt(compStyle.getPropertyValue('margin-right'));
                        if (fn)
                                fn(offsetWidth, width);
                }
        })

        // Данные для расчета
        let tableData = {
                "rows": [],
                "freezedCells": []
        };
        // Расчет размера ячеек таблицы
        tableRows.forEach((rowItem) => {
                let rowData = { "row": rowItem, "cells": [], maxHeight: 0, isCalcMaxHeight: true};
                tableData.rows.push(rowData);
                let tableCells = findSelector('td', rowItem);
                if (!(tableCells && tableCells.length && tableCells.length > 0)) {
                        tableCells = findSelector('th', rowItem);
                }

                tableCells.forEach((cellItem) => {
                        rowData.cells.push(cellItem);
                        if (cellItem.classList.contains('freeze')) {
                                tableData.freezedCells.push(cellItem);
                        }
                        calculateWidth(cellItem, (offsetWidth, width) => {
                                let cellWidth = width ;
                                const {backgroundColor, color, fontSize} = cellItem.style;
                                cellItem.style = `min-width: ${cellWidth}px; max-width: ${cellWidth}px; background-color: ${backgroundColor}; color: ${color}; font-size: ${fontSize}`;
                                if (rowData.isCalcMaxHeight) {
                                        calculateHeight(cellItem, (clientHeight, height) => {
                                                if (rowData.maxHeight < clientHeight)
                                                        rowData.maxHeight = clientHeight;
                                        });
                                }
                        });
                })
        })

        if (tableBody) {
                tableBody.style.height = tableBodyHeight;
                tableBody.style.paddingBottom = `${tableBodyPadding}px`;
                // Подключаем обработчик скроллирования содержимого таблицы отчета
                tableBody.addEventListener('scroll', () => {
                        let scrollLeft = `${tableBody.scrollLeft}px`;
                        tableHead.style.left = `-${scrollLeft}`;
                        tableData.freezedCells.forEach((freezedCellItem) => {
                                if (freezedCellItem && freezedCellItem.style && freezedCellItem.style.left !== undefined)
                                        freezedCellItem.style.left = scrollLeft;
                        })
                });
        }

        // Изменение размеров окна - расчет и установка размеров таблицы для работы заморозки
        function resize() {
                let windowWidth = window.innerWidth, windowHeight = window.innerHeight;
                let compStyleTableRep = window.getComputedStyle(tableRep);
                windowWidth -= parseInt(compStyleTableRep.getPropertyValue('margin-left'));
                windowWidth -= parseInt(compStyleTableRep.getPropertyValue('margin-right'));
                windowWidth -= (4 * tableRep.offsetLeft);
                let windowWidthString = ` ${windowWidth}px`;
                tableRep.style.width = windowWidthString;
                tableHead.style.width = windowWidthString;
                tableBody.style.width = windowWidthString;
                tableBody.style.maxHeight = `${windowHeight - tableRep.offsetTop - tableBody.offsetTop - tableBody.offsetLeft}px`;
        }
        resize();
        // Подключаем обработчик изменения размеров окна
        window.addEventListener('resize', resize);
});