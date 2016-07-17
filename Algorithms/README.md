Danny-Search
----
The Search class takes in a string which it turns into a hash of nodes where each node represents a unique character in the string. Each node has a hash where the keys are its locations in the string, and the values are an array of two nodes: the preceding and succeeding character's node at the given location

The search function finds the node representing the first character in the search text. At each of the locations in the node's hash, the search function calls a depth first search on the succeeding node.

Here is an example of what the graph looks like for "hello world", and also what the "l" hash looks like.

[Graph Example](http://i.imgur.com/CbzuDcP.png)

[Danny Search Code](/Algorithms/Ruby/danny_search.rb)
