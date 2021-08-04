//: [Previous](@previous)

import Foundation
import CoreGraphics

class Program {
  // This is an input class. Do not edit.
  class LinkedList {
	var value: Int
	var next: LinkedList?

	init(value: Int) {
	  self.value = value
	}
  }

  func sumOfLinkedLists(_ linkedListOne: LinkedList, _ linkedListTwo: LinkedList) -> LinkedList {
	  var inputOne = 0
	  var idx1 = 0
	  var pointerOne: LinkedList? = linkedListOne
	  
	  while pointerOne != nil {
		  let currValue = pointerOne!.value
		  let powValue = Int(pow(Double(10), Double(idx1)))
		  inputOne = inputOne + (currValue * powValue)
		  pointerOne = pointerOne?.next
		  idx1 += 1
	  }
	  print("................")
	  var inputTwo = 0
	  var idx2 = 0
	  var pointerTwo: LinkedList? = linkedListTwo
	  
	  while pointerTwo != nil {
		  let currValue = pointerTwo!.value
		  print(currValue, idx2)
		  let powValue = Int(pow(Double(10), Double(idx2)))
		  inputTwo = inputTwo + (currValue * powValue)
		  pointerTwo = pointerTwo?.next
		  idx2 += 1
	  }
	  
	  print(inputOne, inputTwo)
	  
	  var sum = inputOne + inputTwo
	  
	  var head: LinkedList?
	  var current: LinkedList?
	  while sum > 0 {
		  let reminder = sum % 10
		  let newNode = LinkedList(value : reminder)
		  if head == nil {
			  head = newNode
			  current = head
		  } else {
			  current?.next = newNode
		  }
		  print(reminder)
		  sum = sum / 10
	  }
	  
	return head!
  }
}

class ProgramTest {
  func test() {
	
	  var ll1 = addMany(Program.LinkedList(value: 2), [4, 7, 1])
	  var ll2 = addMany(Program.LinkedList(value: 9), [4, 5])
	  var expected = addMany(Program.LinkedList(value: 1), [9, 2, 2])
	  var actual = Program().sumOfLinkedLists(ll1, ll2)
//	  try? assertEqual(getValues(expected), getValues(actual))
	  print(getValues(expected), getValues(actual))
	
  }

  func addMany(_ linkedList: Program.LinkedList, _ values: [Int]) -> Program.LinkedList {
	var current: Program.LinkedList = linkedList
	while current.next != nil {
	  current = current.next!
	}
	for value in values {
	  current.next = Program.LinkedList(value: value)
	  current = current.next!
	}
	return linkedList
  }

  func getValues(_ linkedList: Program.LinkedList) -> [Int] {
	var values = [Int]()
	var current: Program.LinkedList? = linkedList
	while current != nil {
	  values.append(current!.value)
	  current = current!.next
	}
	return values
  }
}

ProgramTest().test()


