	//: [Previous](@previous)

import Foundation


var tree = BST(value: 1)
tree.left = BST(value: 2)
tree.right = BST(value: 3)
tree.left!.left = BST(value: 4)
tree.left!.right = BST(value: 5)
tree.right!.left = BST(value: 6)
tree.right!.right = BST(value: 7)
tree.left!.left!.left = BST(value: 8)
tree.left!.left!.right = BST(value: 9)
tree.left!.right!.left = BST(value: 10)

typealias BinaryTree = BST

struct TreeInfo {
	var height: Int
	var isBalance: Bool
}
	// O(n) time | O(h) space
func heightBalancedBinaryTree(_ tree: BinaryTree) -> Bool {
		// Write your code here.
	return checkBalance(tree).isBalance
}

func checkBalance(_ node: BinaryTree?) -> TreeInfo {
	if node == nil {
		return TreeInfo(height: -1, isBalance: true)
	}
	let leftInfo = checkBalance(node!.left)
	let rightInfo = checkBalance(node!.right)
	
	let balance = leftInfo.isBalance && rightInfo.isBalance && (abs(leftInfo.height - rightInfo.height) <= 1)
	let maxHeight = max(leftInfo.height, rightInfo.height) + 1
	return TreeInfo(height: maxHeight, isBalance: balance)
}

heightBalancedBinaryTree(tree)

