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


var queueArray = QueueArray<String>()
queueArray.enqueue("Fayaz")
queueArray.enqueue("Mammoo")
queueArray.dequeue()
queueArray.dequeue()
