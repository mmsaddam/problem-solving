//: [Previous](@previous)

import Foundation
import Darwin

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

let graph = Node(name: "A")
graph.addChild(name: "B").addChild(name: "C").addChild(name: "D")
graph.children[0].addChild(name: "E").addChild(name: "F")
graph.children[2].addChild(name: "G").addChild(name: "H")
graph.children[0].children[1].addChild(name: "I").addChild(name: "J")
graph.children[2].children[0].addChild(name: "K")

let dfsArray = ["A", "B", "E", "F", "I", "J", "C", "D", "G", "K", "H"]

func dfs(_ root: Node, result: inout [String]) {
	result.append(root.name)
	for child in root.children {
		dfs(child, result: &result)
	}
}

var result = [String]()

dfs(graph, result: &result)

if result == dfsArray {
	print("True")
} else {
	print("False")
}

print("end")
