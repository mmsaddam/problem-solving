//: [Previous](@previous)

import Foundation


class Node {
	let name: String
	var children: [Node]

	init(name: String) {
		self.name = name
		children = []
	}

	func addChild(name: String) -> Node {
		let childNode = Node(name: name)
		children.append(childNode)
		return self
	}
}

func populateGraph() -> Node {
	let graph = Node(name: "A")
	graph.addChild(name: "B").addChild(name: "C").addChild(name: "D")
	graph.children[0].addChild(name: "E").addChild(name: "F")
	graph.children[2].addChild(name: "G").addChild(name: "H")
	graph.children[0].children[1].addChild(name: "I").addChild(name: "J")
	graph.children[2].children[0].addChild(name: "K")
	
	return graph
}

let bfsSequence = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K"]

func bfs(_ root: Node) -> [String] {
	var queue = [Node]()
	queue.append(root)
	
	var result = [String]()
	
	while queue.count > 0 {
		let front = queue.removeFirst()
		result.append(front.name)
		queue.append(contentsOf: front.children)
	}
	
	return result
}


let graph = populateGraph()

let bfsResult = bfs(graph)
print(bfsSequence)
print(bfsResult)
print(bfsSequence == bfsResult)

print("end")

//: [Next](@next)
