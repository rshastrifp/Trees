//
//  BST.swift
//  Trees
//
//  Created by Ronak Shastri on 2019-10-08.
//  Copyright © 2019 Ronak Shastri. All rights reserved.
//

import Foundation

class BST {
    
    var root: Node
    
    init(value: Int) {
        self.root = Node(value: value)
    }
    
    func search(_ value: Int) -> Bool {
        return searchHelper(root, value: value)
    }
    
    // create a node with the given value and insert it into the binary tree
    func insert(_ value: Int) {
        insertHelper(root, value: value)
    }
    
    // helper method - use to implement a recursive search function
    func searchHelper(_ current: Node?, value: Int) -> Bool {
        if let curr = current {
            guard curr.value != value else {
                return true
            }
            if value < curr.value {
                if let left = curr.left {
                    return searchHelper(left, value: value)
                }
            }
            else if value > curr.value {
                if let right = curr.right {
                    return searchHelper(right, value: value)
                }
            }
        }
        return false
    }
    
    // helper method - use to implement a recursive insert function
    func insertHelper(_ current: Node, value: Int) {
        guard current.value != value else {
            return
        }
        if value < current.value {
            if let left = current.left {
                insertHelper(left, value: value)
            }
            else {
                current.left = Node(value: value)
            }
        }
        else if value > current.value {
            if let right = current.right {
                insertHelper(right, value: value)
            }
            else {
                current.right = Node(value: value)
            }
        }
    }
}
