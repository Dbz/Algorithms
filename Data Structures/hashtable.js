#Generating a hash table with string keys

function HashTable(){
  this.table = new Array(137);
  this.hashFunction = hashFunction;
  this.showDistro = showDistro;
  this.put = put;
};

function put(data){
  var pos = this.hashFunction(data);
  this.table[pos] = data;
};

function hashFunction(string){
	var total = 0;
  const H = 37;

  for (var i = 0; i < string.length; i++){
    total += H * total + string.charCodeAt(i);
  }

  total = total % this.table.length;

  if (total < 0){
    total += this.table.length - 1
	}

	return parseInt(total);
};

function showDistro(){
	for (var i = 0; i < this.table.length; i++){
		if (this.table[i] != undefined){
			console.log(i + ": " + this.table[i]);
		}
	}
};