// Return an array
function fizzbuzz(n){
  var arr = [];
  for(i=1; i<n+1; i++){
      if(i%3==0){
        if(i%5==0){
          arr.push("FizzBuzz");
          continue;
        }
        arr.push( "Fizz");
      } else if(i%5==0){
       arr.push("Buzz");
      } else {
        arr.push(i);
      }
  }
  return arr;

}

console.log(fizzbuzz(30));