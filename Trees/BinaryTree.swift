//
//  BinaryTree.swift
//  Trees
//
//  Created by Ronak Shastri on 2019-10-08.
//  Copyright © 2019 Ronak Shastri. All rights reserved.
//

import Foundation

class Node {
    
    var value: Int
    var left: Node?
    var right: Node?
    
    init(value: Int) {
        self.value = value
    }
}

class BinaryTree {
    
    var root: Node
    
    init(rootValue: Int) {
        self.root = Node(value: rootValue)
    }
    
    // Return true if the value is in the tree, otherwise return false
    func search(_ value: Int) -> Bool {
        return preorderSearch(root, value: value)
    }
    
    // Return a string containing all tree nodes as they are visited in a pre-order traversal.
    func printTree() -> String {
        return preorderPrint(root, traverse: "") ?? ""
    }
    
    // Helper method - use to create a recursive search solution.
    func preorderSearch(_ start: Node?, value: Int) -> Bool {
        if start?.left != nil {
            if preorderSearch(start?.left, value: value) {
                return true
            }
            if (start?.right != nil) {
                if preorderSearch(start?.right, value: value) {
                    return true
                }
            }
        }
        return (start?.value == value)
    }
    
    // Helper method - use to construct a string representing the preordered nodes
    func preorderPrint(_ start: Node?, traverse: String) -> String? {
        var result = traverse
        if start?.left != nil {
            result = preorderPrint(start?.left, traverse: result)!
        }
        if (start?.right != nil) {
            result = preorderPrint(start?.right, traverse: result)!
        }
        
        result = result + String(start!.value)
        return result
    }
}
