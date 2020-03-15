import Foundation

struct MinHeap{
    var item:[Int] = []
    
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
    
    
}
