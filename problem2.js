var sum = 0;
var num = 0;
var counter = 1;
while(num<4000000){
  if(num%2===0){sum+=num};
  num+=counter;
  counter = num-counter;
};
console.log(sum);