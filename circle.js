var vis = d3.select("body").append("svg")
var pi = Math.PI;
    
var arc = d3.svg.arc()
    .innerRadius(65)
    .outerRadius(70)
    .startAngle(45 * (pi/180)) //converting from degs to radians
    .endAngle(45) //just radians
    
var arc2 = d3.svg.arc()
    .innerRadius(75)
    .outerRadius(80)
    .startAngle(45 * (pi/180)) //converting from degs to radians
    .endAngle(45) //just radians
    
vis.attr("width", "2000").attr("height", "2000") // Added height and width so arc is visible
    .append("path")
    .attr("d", arc)
    .attr("fill", "black")
    .attr("transform", "translate(200,200)")    
    .on("click", function (d, i){
        d3.select(this)
        .attr("d", arc2)
        .attr("fill", "black")

    });

vis.attr("width", "2000").attr("height", "2000") // Added height and width so arc is visible
    .append("path")
    .attr("d", arc)
    .attr("fill", "black")
    .attr("transform", "translate(70,70)")    
    .on("click", function (d, i){
        d3.select(this)
        .attr("d", arc2)
        .attr("fill", "black")

    });
    
vis.attr("width", "2000").attr("height", "2000") // Added height and width so arc is visible
    .append("path")
    .attr("d", arc)
    .attr("fill", "black")
    .attr("transform", "translate(70,300)")    
    .on("click", function (d, i){
        d3.select(this)
        .attr("d", arc2)
        .attr("fill", "black")

    });

vis.attr("width", "2000").attr("height", "2000") // Added height and width so arc is visible
    .append("path")
    .attr("d", arc)
    .attr("fill", "black")
    .attr("transform", "translate(300,70)")    
    .on("click", function (d, i){
        d3.select(this)
        .attr("d", arc2)
        .attr("fill", "black")

    });
    
vis.attr("width", "2000").attr("height", "2000") // Added height and width so arc is visible
    .append("path")
    .attr("d", arc)
    .attr("fill", "black")
    .attr("transform", "translate(300,300)")    
    .on("click", function (d, i){
        d3.select(this)
        .attr("d", arc2)
        .attr("fill", "black")

    });
    
    

var i = 65;
var j = 70;

setInterval(function() { //alert("Hello"); 

var arc3 = d3.svg.arc()
    .innerRadius(i++)
    .outerRadius(j++)
    .startAngle(45 * (pi/180)) //converting from degs to radians
    .endAngle(45) //just radians
    
  d3.selectAll("path").attr("d", arc3);
  
  if(i==600){
  i = 65;
  j = 70;
  }
}, 20);