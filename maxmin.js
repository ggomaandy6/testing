function random(min, max) {
    var a = arguments[0];
    var b = arguments[1];

    if(arguments.length==1)
        return Math.round(Math.random()*arguments[0]+1)-1;
    else if(arguments.length==2)
        return Math.round(Math.random()*(arguments[1]-arguments[0]))+arguments[0];
    // return Math.round(Math.random()*(max-min))+min
}


function random(min, max) {
    var a = arguments[0];
    var b = arguments[1];

    if(b==undefined){
      b=a; a=0;
    }
    return Math.floor(Math.random()*(b-a))+a;
}