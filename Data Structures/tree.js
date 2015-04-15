function Tree(value){
	this.parent = null;
	this.children = [];
	this.value = value || null;
};

Tree.prototype.addChild = function(value){
	var child;

	if (value.constructor === Tree){
		child = value;
	} else {
		child = new Tree(value);
	}

	child.parent = this;
	this.children.push(child);
};

Tree.prototype.contains = function(value){
	if (this.value === value) return true;

	for (var i = 0; i < this.children.length; i++){
		if (this.children[i].contains(value)){
			return true;
		}
	}

	return false;
};

Tree.prototype.removeChild = function(value){
	for (var i = 0; i < this.children.length; i++){
		if (this.children[i].value === value){
			var child = this.children.splice(i, 1);
			child.parent = null;
		}
	}
};

Tree.prototype.removeFromParent = function(){
	this.parent.removeChild(this.value);
};

Tree.prototype.isLeaf = function(){
	return this.children.length === 0;
};

Tree.prototype.isRoot = function(){
	return this.parent === null;
};
