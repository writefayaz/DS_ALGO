//
//  MinHeap Implementation in Swift
//  DS & Algo
//
//  Created by Fayaz on 3/15/20.
//  Copyright © 2020 MinHeap. All rights reserved.
//

import Foundation

struct MinHeap{
    var items:[Int] = []
    
    //MARK: Get left child index
    private func getLeftChildIndex(_ parentIndex: Int) -> Int {
        return 2 * parentIndex + 1
    }
    
    //MARK: Get right child index
    private func getRightChildIndex(_ parentIndex: Int) -> Int {
        return 2 * parentIndex + 2
    }
    
    //MARK: Get parent index
    private func getParentIndex(_ childIndex: Int) -> Int {
        return ( childIndex - 1 ) / 2
    }
    
    //MARK: Check if node has LeftChild
    private func hasLeftChild(_ nodeIndex: Int) -> Bool {
        return getLeftChildIndex(nodeIndex) < items.count
    }
    
    //MARK: Check if node has RightChild
    private func hasRightChild(_ nodeIndex: Int) -> Bool {
        return getRightChildIndex(nodeIndex) < items.count
    }
    
    //MARK: Check if node has parent
    private func hasParent(_ nodeIndex: Int) -> Bool {
        return getParentIndex(nodeIndex) >= 0
    }
    
    //MARK: Return left child item from Heap
    private func getLeftChild(_ index: Int) -> Int {
        return items[getLeftChildIndex(index)]
    }
    
    //MARK: Return right child item from Heap
    private func getRightChild(_ index: Int) -> Int {
        return items[getRightChildIndex(index)]
    }
    
    //MARK: Return parent item from Heap
    private func getParent(_ index: Int) -> Int {
        return items[getParentIndex(index)]
    }
    
    //MARK: Get parent node item
    public func peek() -> Int {
        if items.count != 0{
            return items[0]
        }else{
            fatalError()
        }
    }
    
    //MARK: Poll - Remove value of parent node from the heap
    mutating public func poll() -> Int {
        if items.count != 0 {
            let item = items[0]
            items[0]  = items[items.count - 1]
            heapifyDown()
            items.removeLast()
            return item
        }else{
            fatalError()
        }
    }
    
    //MARK: Add an Item
    mutating public func add(_ item: Int) {
        items.append(item)
        heapifyUp()
    }
    
    //MARK : Swap two items
    mutating public func swap(indexOne: Int ,indexTwo: Int){
        let placeHolder = items[indexOne]
        items[indexOne] = items[indexTwo]
        items[indexTwo] = placeHolder
    }
    
    //MARK: Compare and Push Up when added new item
    mutating private func heapifyUp(){
        var index = items.count - 1
        while hasParent(index) && getParent(index) > items[index]{
            swap(indexOne: getParentIndex(index), indexTwo: index)
            index = getParentIndex(index)
        }
    }
    
    //MARK: Compare and Push Down when polled top item and replaces with last item
    mutating private func heapifyDown(){
        var index = 0
        
        //Index moves from left to right, loop until left child
        while hasLeftChild(index){
            //Know which way to push
            //Push Left
            var smallerChildIndex = getLeftChildIndex(index)
            if hasRightChild(index) && getRightChild(index) < getLeftChild(index) {
                //Push Right
                smallerChildIndex = getRightChildIndex(index)
            }
            
            if items[index] < items[smallerChildIndex]{
                //Exit . No ned to push further
                break;
            }else{
                //Swap the two and continue pushing further
                swap(indexOne:index, indexTwo:smallerChildIndex)
            }
            index = smallerChildIndex
        }
    }
}
 
//Main

var minHeap = MinHeap()
minHeap.add(2)
minHeap.add(10)
minHeap.add(8)
minHeap.add(9)
minHeap.add(7)
minHeap.add(3)
minHeap.add(4)

dump(minHeap.items)


