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

struct TreeInfo {
	let diameter: Int
	let height: Int
}
typealias BinaryTree = BST
	// O(n) time | O(h) space(average) | O(n) space(worst)
func binaryTreeDiameter(_ tree: BinaryTree) -> Int {
		// Write your code here.
	return getTreeInfo(tree).diameter
}

func getTreeInfo(_ tree: BinaryTree?) -> TreeInfo {
	if tree === nil {
		return TreeInfo(diameter: 0, height: 0)
	}
	
	let leftInfo = getTreeInfo(tree!.left)
	let rightInfo = getTreeInfo(tree!.right)
	
	let longesPathThroughRoot = leftInfo.height + rightInfo.height
	let maxDiameterSoFar = max(leftInfo.diameter, rightInfo.diameter)
	let maxDiameter = max(longesPathThroughRoot, maxDiameterSoFar)
	let currentHeight = 1 + max(leftInfo.height, rightInfo.height)
	return TreeInfo(diameter: maxDiameter, height: currentHeight)
}


binaryTreeDiameter(tree)
