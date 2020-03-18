//
//  Queue using Arrays Implementation in Swift
//  DS & Algo
//
//  Created by Fayaz on 3/15/20.
//  Copyright © 2020 Queue using Arrays. All rights reserved.
//



import Foundation

protocol Queue {
    associatedtype Element
    mutating func enqueue(_ element:Element)
    mutating func dequeue() -> Element?
    var isEmpty: Bool { get }
    var peek: Element? { get }
}


struct QueueArray<T>: Queue {
  private var array: [T] = []
  var isEmpty: Bool {
    return array.isEmpty
  }
  var peek: T? {
    return array.first
  }
  
  mutating func enqueue(_ element: T) {
    array.append(element)
  }
  
  @discardableResult
  mutating func dequeue() -> T? {
    return isEmpty ? nil : array.removeFirst()
  }
}


struct QueueStack<T> : Queue {
    private var enqueueStack : [T] = []
    private var dequeueStack : [T] = []
    
    var isEmpty : Bool {
        return enqueueStack.isEmpty && dequeueStack.isEmpty
    }
    
    var peek : T? {
        !dequeueStack.isEmpty ? dequeueStack.last : enqueueStack.first
    }
    
    mutating func enqueue(_ element: T) {
        enqueueStack.append(element)
    }
    
    @discardableResult
    mutating func dequeue() -> T? {
        if dequeueStack.isEmpty {
            dequeueStack = enqueueStack.reversed()
            enqueueStack.removeAll()
        }
        return dequeueStack.popLast()
    }
    
}


var queueArray = QueueArray<String>()
queueArray.enqueue("Fayaz")
queueArray.enqueue("Mammoo")
queueArray.dequeue()
queueArray.dequeue()

var queueStack = QueueStack<String>()
queueStack.enqueue("Ramy")
queueStack.enqueue("Fayaz")
queueStack.dequeue()
queueStack.dequeue()
