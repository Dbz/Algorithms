var Node = function(value) {
	this.prevNode	= null;
	this.value		= value;
}

var Queue = function() {
	this.first	= null;
	this.last		= null;
	this.length = 0;
}

Queue.prototype.push = function(value) {
	var node = new Node(value);
	
	if(this.length !== 0) {
		this.last.prevNode	= node;
		this.last						= node;
	} else {
		this.last		= node;
		this.first	= node;
	}
	this.length++;
}

Queue.prototype.pop = function() {
	if(this.length === 0)
		return null;
	else if(this.length == 1) {
		var node		= this.first;
		this.first	= null;
		this.last		= null;
		this.length--;
		return node.value;
	}
	
	var node = this.first;
	this.first = this.first.prevNode;
	this.length--;
	return node.value;
}