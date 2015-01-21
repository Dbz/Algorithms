var DFS = function(node, func){
	if (func) func(node);

	node.children.forEach(function (child){
		DFS(child, func);
	});
};