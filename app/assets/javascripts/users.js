// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

var GameEngine = {
  initialize: function(){
    var canvas = document.getElementById("mazecanvas");
    var context = canvas.getContext("2d");
    var startX = 50;
    var startY = 50;
    var boardWidth = 500;
    var boardHeight = 500;
    var blockHeight = 50;
    var blockWidth = 50;
    var streetWidth = 5;
    var streetColor = "#FFFFFF";
    function drawMazeAndRectangle() {
        makeWhite(0, 0, canvas.width, canvas.height);
        for(var i=0; i <= boardWidth/blockWidth; i++){
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
      context.fillStyle = "#555555";
      context.fill();
    }
    drawMazeAndRectangle();
  } 
};