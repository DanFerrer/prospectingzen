$(document).ready(function () {

  function createBigData() {
    return [
      [1, "George Washington", "http://en.wikipedia.org/wiki/George_Washington", "30/04/1789", "4/03/1797", "Independent ", "Virginia", true],
      [2, "John Adams", "http://en.wikipedia.org/wiki/John_Adams", "4/03/1797", "4/03/1801", "Federalist ", "Massachusetts", false],
      [3, "Thomas Jefferson", "http://en.wikipedia.org/wiki/Thomas_Jefferson", "4/03/1801", "4/03/1809", "Democratic-Republican ", "Virginia", false],
      [4, "James Madison", "http://en.wikipedia.org/wiki/James_Madison", "4/03/1809", "4/03/1817", "Democratic-Republican ", "Virginia", true],
      [5, "James Monroe", "http://en.wikipedia.org/wiki/James_Monroe", "4/03/1817", "4/03/1825", "Democratic-Republican ", "Virginia", false],
      [6, "John Quincy Adams", "http://en.wikipedia.org/wiki/John_Quincy_Adams", "4/03/1825", "4/03/1829", "Democratic-Republican/National Republican ", "Massachusetts", true],
      [7, "Andrew Jackson", "http://en.wikipedia.org/wiki/Andrew_Jackson", "4/03/1829", "4/03/1837", "Democratic ", "Tennessee", true],
      [8, "Martin Van Buren", "http://en.wikipedia.org/wiki/Martin_Van_Buren", "4/03/1837", "4/03/1841", "Democratic ", "New York", true],
      [9, "William Henry Harrison", "http://en.wikipedia.org/wiki/William_Henry_Harrison", "4/03/1841", "4/04/1841", "Whig", "Ohio", false],
      [10, "John Tyler", "http://en.wikipedia.org/wiki/John_Tyler", "4/04/1841", "4/03/1845", "Whig", "Virginia", false],
      [11, "James K. Polk", "http://en.wikipedia.org/wiki/James_K._Polk", "4/03/1845", "4/03/1849", "Democratic ", "Tennessee", false],
      [12, "Zachary Taylor", "http://en.wikipedia.org/wiki/Zachary_Taylor", "4/03/1849", "9/07/1850", "Whig", "Louisiana", false],
      [13, "Millard Fillmore", "http://en.wikipedia.org/wiki/Millard_Fillmore", "9/07/1850", "4/03/1853", "Whig", "New York", true],
      [14, "Franklin Pierce", "http://en.wikipedia.org/wiki/Franklin_Pierce", "4/03/1853", "4/03/1857", "Democratic ", "New Hampshire", true],
      [15, "James Buchanan", "http://en.wikipedia.org/wiki/James_Buchanan", "4/03/1857", "4/03/1861", "Democratic ", "Pennsylvania", false],
      [16, "Abraham Lincoln", "http://en.wikipedia.org/wiki/Abraham_Lincoln", "4/03/1861", "15/04/1865", "Republican/National Union", "Illinois", true],
      [17, "Andrew Johnson", "http://en.wikipedia.org/wiki/Andrew_Johnson", "15/04/1865", "4/03/1869", "Democratic/National Union", "Tennessee", true],
      [18, "Ulysses S. Grant", "http://en.wikipedia.org/wiki/Ulysses_S._Grant", "4/03/1869", "4/03/1877", "Republican ", "Ohio", true],
      [19, "Rutherford B. Hayes", "http://en.wikipedia.org/wiki/Rutherford_B._Hayes", "4/03/1877", "4/03/1881", "Republican ", "Ohio", false],
      [20, "James A. Garfield", "http://en.wikipedia.org/wiki/James_A._Garfield", "4/03/1881", "19/09/1881", "Republican ", "Ohio", true],
      [21, "Chester A. Arthur", "http://en.wikipedia.org/wiki/Chester_A._Arthur", "19/09/1881", "4/03/1885", "Republican ", "New York", true],
      [22, "Grover Cleveland", "http://en.wikipedia.org/wiki/Grover_Cleveland", "4/03/1885", "4/03/1889", "Democratic ", "New York", true],
      [23, "Benjamin Harrison", "http://en.wikipedia.org/wiki/Benjamin_Harrison", "4/03/1889", "4/03/1893", "Republican ", "Indiana", true],
      [24, "Grover Cleveland (2nd term)", "http://en.wikipedia.org/wiki/Grover_Cleveland", "4/03/1893", "4/03/1897", "Democratic ", "New York", true],
      [25, "William McKinley", "http://en.wikipedia.org/wiki/William_McKinley", "4/03/1897", "14/9/1901", "Republican ", "Ohio", false]
      ]
    }
  
  var container = document.getElementById('example2');
  
  var HOT = new Handsontable(container,{
    data: createBigData(),
    rowHeaders: true,
    colHeaders: true,
    colWidths: [45, 200, 110, 110, 200],
    columnSorting: true,
    columns: [
      {data: 7, type: 'checkbox'},
      {data: 1},
      {data: 6},
      {data: 2}, 
      {data: "party",
        type: 'autocomplete',
        source: ["Republican", "Whig", "Democratic-Republican", "Federalist", "Independent", "Democratic"]
      }
    ],
    manualColumnMove: true,
    manualColumnResize: true,
    minSpareRows: 0,
    contextMenu: true,
    persistentState: true
  });
  var resetState = document.querySelector('.reset-state');
  var stateLoaded = document.querySelector('.state-loaded');
  
  
  
  Handsontable.Dom.addEvent(resetState, 'click', function() {
    HOT.runHooks('persistentStateReset');
    HOT.updateSettings({
      columnSorting: true,
      manualColumnMove:true,
      manualColumnResize: true
    });
    stateLoaded.style.display = 'none';
    HOT.render();
  });
  
  
  var storedData = {};
  
  HOT.runHooks('persistentStateLoad', '_persistentStateKeys', storedData);
  
  var savedKeys = storedData.value;
  
  if(savedKeys && savedKeys.length > 0){
    stateLoaded.style.display = 'block';
  }
  
  
  
  function bindDumpButton() {
  
      Handsontable.Dom.addEvent(document.body, 'click', function (e) {
  
        var element = e.target || e.srcElement;
  
        if (element.nodeName == "BUTTON" && element.name == 'dump') {
          var name = element.getAttribute('data-dump');
          var instance = element.getAttribute('data-instance');
          var hot = window[instance];
          console.log('data of ' + name, hot.getData());
        }
      });
    }
  bindDumpButton();

});