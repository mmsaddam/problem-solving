import UIKit

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


func nodeDepths(root: BST?) -> Int {
	var sums = [Int]()
	
	calculateNodeDepths(root, depth: 0, sums: &sums)
	return sums.reduce(0, +)
}

func calculateNodeDepths(_ node: BST?, depth: Int, sums: inout [Int]) {
	if node == nil {
		return
	}
	sums.append(depth)
	let newDepth = depth + 1
	calculateNodeDepths(node?.left, depth: newDepth, sums: &sums)
	calculateNodeDepths(node?.right, depth: newDepth, sums: &sums)
}

let depthSum = nodeDepths(root: tree)

