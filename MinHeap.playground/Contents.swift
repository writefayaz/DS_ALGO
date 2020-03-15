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
    
    
    
    
}
