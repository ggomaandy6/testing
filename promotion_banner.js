function random(min, max) {
    if (max === undefined) { max = min; min = 0; }
    return Math.floor(Math.random() * (max - min)) + min;
}

    if(arr.length==0){
        while(1){
            var num = random(6);
            if(num!=arr_length && num!=arr_length/2) {
                arr.push(num, num+1);
                return;
            }
        }
    }

    while(1){
        var num = random(6);
        while(arr.indexOf(num)==-1){
            arr.push(num);
        }
        if(arr.length==arr_length){
            return;
        }
    }
function ha(num) {
    console.log(num+num);
    return num+num;
}

function arrange(arr_length) {
    var arr = [];
    while(1){
        var num = random(arr_length)+1;
        if(arr.length==0){
            if(num!=arr_length && num!=arr_length/2){
               arr.push(num, num+1);
            }
            continue;
        } else{
            while(arr.indexOf(num)==-1){
                arr.push(num);
            }
        }
        if(arr.length==arr_length){break;}
    }
    arr.pop(1);
    return arr;
}

function arrange() {
    var arr_or = [1,2,3,5,6,7];
    var arr = [];

    while(1){
        var num = random(6);
        if(arr.length==0){
            if(num!=2 && num!=5){
               arr.push(arr_or[num], arr_or[num+1]);
            }
            continue;
        } else{
            while(arr.indexOf(arr_or[num])==-1){
                arr.push(arr_or[num]);
            }
        }
        if(arr.length==6){break;}
    }
    arr.pop(1);
    return arr;
}

function arrange(){
    var arr_or = [1,2,3,5,6,7];
    var arr = [];
    var onOff = 0;

    for(var i=0; i<6; i++){
        var num = random(6-i);
        if(onOff==0){
            if(num!=2 && num!=5){
                arr.unshift(arr.or[num], arr.or[num+1])
            }
        }
        var ranNum = Number(arr_or.splice(num, 1));
        arr.push(ranNum);
    }
    return arr;
}

function arrange(){
    var arr_or = [1,2,3,5,6,7];
    var arr = [];
    var onOff = 0;

    for(var i=0; i<6; i++){
        var num = random(6-i);

        if(onOff==0){
            if(num!=2 && num!=5){
                arr.unshift(arr.or[num], arr.or[num+1])
            }
        }
        var ranNum = Number(arr_or.splice(num, 1));
        arr.push(ranNum);
    }
    return arr;
}

function arrange(){
    var arr_or = [1,2,3,5,6,7];
    var arr = [];

    while(arr.length<6){
        var num = random(arr_or.length);
        if(arr.length==0){
            if(num!=2 && num!=5){
                arr = arr_or.splice(num, 2);
            } else { continue; }
        }
        arr.push(Number(arr_or.splice(num, 1)));
    }
    return arr;
}





function arrange() {
    var arr = [1,2,3,5,6,7];
    var arr2 = [];

    while(arr.length>0){
        if(arranged_arr.length==0){
            arr2.
        }
    }

    for(var i=0; ) {
        while()
        var num = random(arr_length);
    }
}
