	//: [Previous](@previous)

import Foundation

var tree = BST(value: 1)
let node2 = BST(value: 2)
let node3 = BST(value: 3)
let node4 = BST(value: 4)
let node5 = BST(value: 5)
let node6 = BST(value: 6)
let node7 = BST(value: 7)

tree.left = node2
tree.right = node3

node2.left = node4
node2.right = node5

node4.left = node6


func printTee(_ root: BST?) {
//	print(#function, root?.value)
	if root == nil {
		return
	}
	
	printTee(root?.left)
	print(root!.value)
	printTee(root?.right)
	

	
}
func findSuccessor(_ tree: BST, _ node: BST) -> BST? {
	// Write your code here.
	return nil
  }

printTee(tree)
