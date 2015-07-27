 //Setup
var b = require('bonescript'); // Read library
var tempPin = 'P9_38'; // Pin location for temperature sensor

//Check the temperature every 10 seconds. Adjust according to your preferred intervals.
setInterval(readTMP, 10000);

console.log("Reading started.");
console.log("Output at 10-sec Intervals.");

//Define the 'readTMP' function
function readTMP(){
    b.analogRead(tempPin, printTemp);
}

// function printTemp(aRead) {
//     console.log("Getting temperature...");
//     var x = (aRead.value * 1800/1024);

function printTemp(x) {
    console.log("Getting temperature for Ground Control...");
    var millivolts = x.value * 1800; //1.8V data
    var temp_c = (millivolts - 500) /10;
    var temp_f = (temp_c *9/5) + 32;
//    console.log("value " + aRead.value);
//    console.log("x:  " + x);

    // var cel = 100*x -50;
    // var fah = (cel *9/5)+32;
    // var temp_c = 100*x -50;
    // var temp_f = (temp_c *9/5) + 32;
    console.log("Fahrenheit:  " + temp_f);
    console.log("Celsius:  " + temp_c);
    console.log("----------");
}
