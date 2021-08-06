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
	// O(n) time | O(n) space
func findSuccessor(_ tree: BinaryTree, _ node: BinaryTree) -> BinaryTree? {
	var inOrderList = [BinaryTree]()
	inOrderTraverse(tree, queue: &inOrderList)
	var pointer = 0
	for idx in stride(from: 0, to: inOrderList.count, by: 1) {
		let currentNode = inOrderList[idx]
		if node !== currentNode {
			pointer += 1
			continue
		} else {
			break
		}
	}
	if pointer == inOrderList.count - 1 {
		return nil
	}
	return inOrderList[pointer + 1]
}

func inOrderTraverse(_ root: BinaryTree?, queue: inout [BinaryTree]) {
	if root == nil {
		return
	}
	inOrderTraverse(root?.left, queue: &queue)
	queue.append(root!)
	inOrderTraverse(root?.right, queue: &queue)
}

findSuccessor(tree, tree.left!.left!)
