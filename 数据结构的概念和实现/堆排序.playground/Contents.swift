

// 对最大堆排序。
// 递归 [3, 5, 1, 2, 7, 9]

private extension Int {
    var parent: Int {
        return (self - 1) / 2
    }
    
    var leftChild: Int {
        return (self * 2) + 1
    }
    
    var rightChild: Int {
        return (self * 2) + 2
    }
}

public extension Array where Element: Comparable {
    mutating func heapSort() {
        buildHeap()
        shrinkHeap()
    }
    // 将数组转成最大堆
    mutating func buildHeap() -> Void {
        for index in 1..<self.count {
            var child = index
            var parent = child.parent
            while child > 0 && self[child] > self[parent] {
                // 内部交换的元素，较大的那个元素位置，要重构最大堆，因为可能比它的父节点值大。方向是从下到上
                swapAt(child, parent)
                child = parent
                parent = child.parent
            }
        }
        
    }
    // 将最大堆依次移除根节点，循环在重构最大堆
    mutating func shrinkHeap() -> Void {
        for index in stride(from: self.count - 1, to: 0, by: -1) {
            swapAt(0, index)
            var parent = 0
            var leftChild = parent.leftChild
            var rithChild = parent.rightChild
            while parent < index {
                //内部交换的元素，较小的那个元素位置，要重构最大堆，因为可能比它的左右子树值小。方向是从上到下
                var maxChild = -1
                if leftChild < index {
                    maxChild = leftChild
                }else {
                    break
                }
                if rithChild < index && self[maxChild] < self[rithChild] {
                    maxChild = rithChild
                }
                if self[maxChild] > self[parent] {
                    swapAt(parent, maxChild)
                    parent = maxChild
                    leftChild = parent.leftChild
                    rithChild = parent.rightChild
                }else {
                    break
                }
            }
        }
    }
    
}


var obj = [3, 5, 1, 2, 7, 9]
obj.heapSort()
print(obj)


//作者：知识小集
//链接：https://juejin.im/post/5c697d145188254e5e6195b5
//来源：掘金
//著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
