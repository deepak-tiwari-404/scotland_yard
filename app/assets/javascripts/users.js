// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

var UserEngine = {
  initialize: function(_cities, _triangles){
    var cities = JSON.parse(_cities), triangles = JSON.parse(_triangles);
    var canvas = document.getElementById("game-canvas");
    var context = canvas.getContext("2d");
    var startX = 0;
    var startY = 0;
    var boardWidth = canvas.width;
    var boardHeight = canvas.height;
    var blockHeight = 50;
    var blockWidth = 50;
    var streetWidth = 5;
    var streetColor = "#FFFFFF";
    function drawMazeAndRectangle() {
        makeWhite(0, 0, canvas.width, canvas.height);
        for(var i=0; i < boardWidth/blockWidth; i++){
          drawRectangle((i+1)*blockWidth - streetWidth, startY, streetWidth, boardHeight, streetColor);
          drawRectangle(startX, (i+1)*blockHeight - streetWidth, boardWidth, streetWidth, streetColor);
        }
    }
    function drawRectangle(i, j, width, height, style) {
        context.beginPath();
        context.rect(i,j,width,height);
        context.closePath();
        context.fillStyle = style;
        context.fill();
    }
    function makeWhite(x, y, w, h) {
      context.beginPath();
      context.rect(x, y, w, h);
      context.closePath();
      context.fillStyle = "#ffffff";
      context.fill();
    }

    function drawLines(p1, p2){
      context.beginPath();
      context.moveTo(p1[0], p1[1]);
      context.lineTo(p2[0], p2[1]);
      context.stroke();
      context.closePath();
      context.fillStyle = "#000000";
      context.fill();
    }

    function drawCities(cities, triangles){
      makeWhite(0, 0, canvas.width, canvas.height);
      for(var i=0; i < cities.length; i++){
        context.beginPath();
        context.arc(cities[i][0], cities[i][1], 5, 0, 2*Math.PI);
        context.stroke();
        context.closePath();
        context.fillStyle = "#ff0000";
        context.fill();
      }
      for(var i=0;i<triangles.length;i++){
        var points = triangles[i];
        drawLines(cities[points[0]], cities[points[1]]);
        drawLines(cities[points[1]], cities[points[2]]);
        drawLines(cities[points[2]], cities[points[0]]);
      }
    }
    //drawMazeAndRectangle();
    drawCities(cities, triangles);
  } 
};
