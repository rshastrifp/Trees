//
//  BinaryTreeTests.swift
//  TreesTests
//
//  Created by Ronak Shastri on 2019-10-08.
//  Copyright © 2019 Ronak Shastri. All rights reserved.
//
import XCTest
@testable import Trees

class TreesPracticeTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testBinaryTree() {
        // Test cases
        // Set up tree
        let tree = BinaryTree(rootValue: 1)
        tree.root.left = Node(value: 2)
        tree.root.right = Node(value: 3)
        tree.root.left?.left = Node(value: 4)
        tree.root.left?.right = Node(value: 5)

        // Test search
        print(tree.search(4)) // Should be true
        print(tree.search(6)) // Should be false

        // Test printTree
        print(tree.printTree()) // Should be 1-2-4-5-3
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testBST() {
        // Test cases
        // Set up tree
        let tree = BST(value: 4)

        // Insert elements
        tree.insert(2)
        tree.insert(1)
        tree.insert(3)
        tree.insert(5)

        // Check search
        print(tree.search(4)) // Should be true
        print(tree.search(6)) // Should be false
        print(tree.search(10)) // Should be false
        print(tree.search(1)) // Should be true

    }

}
