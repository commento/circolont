var vis = d3.select("body").append("svg")
var pi = Math.PI;


//var arc = d3.svg.circle()
    //.innerRadius(65)
    //.outerRadius(70)
    //.startAngle(45 * (pi/360)) //converting from degs to radians
//    .endAngle(45) //just radians

    
vis.attr("width", "400").attr("height", "400") // Added height and width so arc is visible
    //.attr("d", arc)
        .append("circle")
        .attr("cx", 30)
    .attr("cy", 30)
        .attr("r", 20)                 .attr("fill", "red")
    .attr("transform", "translate(200,200)")
    .on("click", function (d, i){

        d3.select(this)
        .attr("r", 60)
    .attr("fill", "black")

    });
    
var i = 20;


setInterval(function(){ //alert("Hello");   
d3.select("circle").attr("r", i++); 
}, 500);



