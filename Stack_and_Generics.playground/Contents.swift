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

class Node<T>{
    let value : T
    var next : Node<T>?
    init(value:T){
        self.value = value
    }
}

class Stack<T> {
    var top : Node<T>?
    func push(_ value: T){
        let oldTop = top
        top = Node(value: value)
        top?.next = oldTop
    }
    func pop() -> T? {
        let currentTop = top
        top = top?.next
        return currentTop?.value
    }
}

var stack = Stack<Int>()
stack.push(1)
stack.push(2)
stack.push(3)

stack.pop()
stack.pop()
stack.pop()
stack.pop()


var stackUser = Stack<User>()
let me  = User(firstName: "Fayaz", lastName: "Mammoo")
let you = User(firstName: "Swift", lastName: "Playground")

stackUser.push(me)
stackUser.push(you)

let firstPop = stackUser.pop()
print(firstPop?.firstName ?? "Nil")

let secondPop = stackUser.pop()
print(secondPop?.firstName ?? "Nil")

let thirdPop = stackUser.pop()
print(thirdPop?.firstName ?? "Nil")






