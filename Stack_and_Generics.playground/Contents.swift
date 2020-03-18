//
//  Stack and Generics Implementation in Swift
//  DS & Algo
//
//  Created by Fayaz on 3/18/20.
//  Copyright © 2020 Stack and Generics. All rights reserved.
//

import Foundation

struct User {
    let firstName : String
    let lastName  : String
}

class Node {
    let value : Int
    var next : Node?
    init(value:Int){
        self.value = value
    }
}

class Stack {
    var top : Node?
    func push(_ value:Int){
        let oldTop = top
        top = Node(value: value)
        top?.next = oldTop
    }
    func pop() -> Int? {
        let currentTop = top
        top = top?.next
        return currentTop?.value
    }
}

var stack = Stack()
stack.push(1)
stack.push(2)
stack.push(3)

stack.pop()
stack.pop()
stack.pop()
stack.pop()





