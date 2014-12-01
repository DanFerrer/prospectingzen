$(document).ready(function () {

  var getData = (function () {
    var data = [
          [1,2,4,5,6,7,8,9,0],[0,0,0,0,0,0,0,0,0,0],[1,2,3,4,5,6,7,8,9,0],
          [1,2,4,5,6,7,8,9,0],[0,0,0,0,0,0,0,0,0,0],[1,2,3,4,5,6,7,8,9,0],
          [0,0,0,0,0,0,0,0,0],[1,2,3,4,5,6,7,8,9,0],[0,0,0,0,0,0,0,0,0,0],
          [0,0,0,0,0,0,0,0,0],[1,2,3,4,5,6,7,8,9,0],[0,0,0,0,0,0,0,0,0,0],
          [1,2,4,5,6,7,8,9,0],[0,0,0,0,0,0,0,0,0,0],[1,2,3,4,5,6,7,8,9,0],
          [1,2,4,5,6,7,8,9,0],[0,0,0,0,0,0,0,0,0,0],[1,2,3,4,5,6,7,8,9,0],
          [0,0,0,0,0,0,0,0,0],[1,2,3,4,5,6,7,8,9,0],[0,0,0,0,0,0,0,0,0,0],
          [0,0,0,0,0,0,0,0,0],[1,2,3,4,5,6,7,8,9,0],[0,0,0,0,0,0,0,0,0,0],
          [1,2,4,5,6,7,8,9,0],[0,0,0,0,0,0,0,0,0,0],[1,2,3,4,5,6,7,8,9,0],
          [1,2,4,5,6,7,8,9,0],[0,0,0,0,0,0,0,0,0,0],[1,2,3,4,5,6,7,8,9,0],
          [0,0,0,0,0,0,0,0,0],[1,2,3,4,5,6,7,8,9,0],[0,0,0,0,0,0,0,0,0,0],
          [0,0,0,0,0,0,0,0,0],[1,2,3,4,5,6,7,8,9,0],[0,0,0,0,0,0,0,0,0,0],
          [1,2,4,5,6,7,8,9,0],[0,0,0,0,0,0,0,0,0,0],[1,2,3,4,5,6,7,8,9,0],
          [1,2,4,5,6,7,8,9,0],[0,0,0,0,0,0,0,0,0,0],[1,2,3,4,5,6,7,8,9,0],
          [0,0,0,0,0,0,0,0,0],[1,2,3,4,5,6,7,8,9,0],[0,0,0,0,0,0,0,0,0,0],
          [0,0,0,0,0,0,0,0,0],[1,2,3,4,5,6,7,8,9,0],[0,0,0,0,0,0,0,0,0,0]
        ];
  
    return function () {
      var page  = parseInt(window.location.hash.replace('#', ''), 10) || 1
        , limit = 6
        , row   = (page - 1) * limit
        , count = page * limit
        , part  = [];
  
      for(;row < count;row++) {
        part.push(data[row]);
      }
  
      return part;
    }
  })();
  
  var container = document.getElementById('example1');
  
  var hot = new Handsontable(container,{
    data: getData(),
    colHeaders: true
  });
  
  Handsontable.Dom.addEvent(window,'hashchange', function (event) {
    hot.loadData(getData());
  });
  
  
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