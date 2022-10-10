function Singleton(param){
    let list=[param];
    return list;
}
console.log(Singleton("Task one"));

function Null(list){
    if(list.length===0){
        return true;
    }else{
        return false;
    }
}
console.log(Null([]));

function snoc(list, elem){

    list.push(elem);
    return list;
}
console.log(snoc(["old island", "simple island"], "new island"));

function length(list){
    let i=0;
    for(let elem of list){
        i++;
    }
    console.log(i);
    return i;
}
length([1, 2, 3]);