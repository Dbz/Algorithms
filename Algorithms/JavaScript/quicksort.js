var quickSort = function(array){
  if (array.length < 2) return array;

  var pivot = array[0],
       more = [],
       less = [];
  
  array.forEach(function(el, i){
    if (i > 0){
      (el > pivot) ? more.push(el) : less.push(el);
    }
  });
  
  return (quickSort(less)).concat([pivot], quickSort(more));
};
