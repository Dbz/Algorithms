var Node = function(value, nextNode) {
	this.value = value;
	this.nextNode = nextNode;
}

var Stack = function() {
	this.head = new Node(null, null);
}

Stack.prototype.push = function(value) {
	this.head = new Node(value, this.head);
}

Stack.prototype.pop = function() {
	if(this.head.nextNode === null)
		return null;
	
	var node = this.head;
	this.head = this.head.nextNode;
	return node.value;
}