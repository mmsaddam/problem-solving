//: [Previous](@previous)

import Foundation

class Node {
	let value: Int
	var next: Node?
	
	init(value: Int) {
		self.value = value
	}
}

class LinkedList {
	var head: Node?
	
	func setHead(node: Node) {
		if head == nil {
			head = node
			return
		}
		node.next = head
		head = node
	}
	
	func removeHead() {
		if head == nil {
			return
		}
		head = head?.next
	}
	
	func removeHead(node: Node) {
		if head == nil {
			return
		}
		
		if head! === node {
			head = head?.next
		}
	}
	
	func appendNode(node: Node) {
		if head == nil {
			setHead(node: node)
			return
		}
		
		var tail = head
		while tail?.next != nil {
			tail = tail?.next
		}
		tail?.next = node
	}
	
	func removeNode(node: Node) {
		if head == nil {
			return
		}
		
		if head! === node {
			removeHead()
			return
		}
		
		var pointer = head
		
		while pointer?.next != nil, pointer!.next !== node {
			pointer = pointer?.next
		}
		
		if pointer?.next != nil {
			pointer?.next = pointer?.next?.next
		}
		
	}
	
	func insertAfter(node: Node, nodeToInsert: Node) {
		if head == nil {
			return
		}
		
		removeNode(node: nodeToInsert)
		
		var pointer = head
		while pointer != nil, pointer! !== node {
			pointer = pointer?.next
		}
		
		if pointer != nil {
			nodeToInsert.next = pointer?.next
			pointer?.next = nodeToInsert
		}
		
	}
	
	func insertBefore(node: Node, nodeToInsert: Node) {
		if head == nil {
			return
		}
		
		if head! === node {
			setHead(node: nodeToInsert)
			return
		}
		
		var pointer = head
		while let next = pointer?.next, next !== node {
			pointer = pointer?.next
		}
		
		if pointer?.next != nil {
			insertAfter(node: pointer!, nodeToInsert: nodeToInsert)
		}
		
	}
	
	func reversed() {
		
		var prevNode: Node? = nil
		var nextNode: Node? = nil
		var currentNode = head
		
		while currentNode != nil {
			nextNode = currentNode?.next
			currentNode?.next = prevNode
			prevNode = currentNode
			currentNode = nextNode
			
		}
		
		head = prevNode
	}
	
//	func printReversed() {
//		reversedList(head)
//	}
//	
//	private func reversedList(_ node: Node?) {
//		var pointer = node
//		
//		if pointer == nil {
//			return
//		}
//		
//		reversedList(pointer?.next)
//		
//		print(pointer!.value)
//	}
	
	func printList() {
		var node = head
		var list: [Int] = []
		while node != nil {
			list.append(node!.value)
			node = node?.next
		}
		print(list)
	}
}

let nodeOne = Node(value: 1)
let nodeTwo = Node(value: 2)
let nodeThree = Node(value: 3)
let nodeFour = Node(value: 4)
let nodeFive = Node(value: 5)
let nodeSix = Node(value: 6)

let list = LinkedList()
list.appendNode(node: nodeOne)
list.appendNode(node: nodeTwo)
list.appendNode(node: nodeThree)
list.appendNode(node: nodeFour)

list.printList() // [1, 2,  3,  4]

list.removeNode(node: nodeThree)
list.printList()  // [1, 2, 4]

list.insertAfter(node: nodeTwo, nodeToInsert: nodeThree) // [1, 2, 3, 4]
list.insertAfter(node: nodeOne, nodeToInsert: nodeFive) // [1, 5, 2, 3, 4]
list.insertAfter(node: nodeFour, nodeToInsert: nodeSix) // [1, 5, 2, 3, 4, 6]
list.insertAfter(node: nodeFour, nodeToInsert: nodeFive) // [1, 5, 2, 3, 4, 5, 6]
list.printList() // [1, 5, 2, 3, 4, 5, 6]

list.removeNode(node: nodeTwo)
list.removeNode(node: nodeThree)
list.removeNode(node: nodeSix)
list.printList() // [1, 4, 5]

list.insertBefore(node: nodeFour, nodeToInsert: nodeTwo)
list.insertBefore(node: nodeFive, nodeToInsert: nodeSix)
list.insertBefore(node: nodeOne, nodeToInsert: nodeThree)
list.printList() // [3, 1, 2, 4, 6, 5]

list.reversed()
list.printList()

