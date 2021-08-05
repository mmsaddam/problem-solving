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


func invertBinaryTree(tree: BST?) {
	if let node = tree {
		var queue = [BST]()
		queue.append(node)
		
		while queue.count > 0 {
			var top = queue[0]
			queue.removeFirst()
			
			let temp = top.left
			top.left = top.right
			top.right = temp
			
			if let leftNode = top.left {
				queue.append(leftNode)
			}
			if let rightNode = top.right {
				queue.append(rightNode)
			}
		}
	}
  }


func printTee(_ root: BST?) {
	if root == nil {
		return
	}
	print(root!.value)
	printTee(root?.left)
	printTee(root?.right)
}

printTee(tree)

invertBinaryTree(tree: tree)

printTee(tree)
