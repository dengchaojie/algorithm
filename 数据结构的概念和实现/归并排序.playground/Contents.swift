
// 排序算法中的一种
// 面向协议编程
extension Array where Element: Comparable {
    public mutating func mergeSort() {
        let startSlice = self[0..<self.count]
        let slice = mergeSortSlice(startSlice)
        let array = Array(slice)
        self = array
    }

    public func mergeSorted() -> Array<Element> {
        let startSlice = self[0..<self.count]
        let slice = mergeSortSlice(startSlice)
        let array = Array(slice)
        return array
    }
    
    private func mergeSortSlice(_ myArraySlice: ArraySlice<Element>) -> ArraySlice<Element> {
        if myArraySlice.count < 2 {
            return myArraySlice
        }else {
            // 方式1
            let midIndex = (myArraySlice.startIndex + myArraySlice.endIndex) / 2
            print("\(midIndex) -- \(myArraySlice.startIndex) -- \(myArraySlice.endIndex)")
            let leftSlice = myArraySlice[myArraySlice.startIndex..<midIndex]
            let rightSlice = myArraySlice[midIndex..<myArraySlice.endIndex]
// 方式2
//            let midIndex = myArraySlice.count / 2
//            print("\(midIndex) -- \(myArraySlice.startIndex) -- \(myArraySlice.endIndex)")
//            let newSlice = ArraySlice.init(myArraySlice)
//            print("\(midIndex) -- \(newSlice.startIndex) -- \(newSlice.endIndex)")
//            let leftSlice = newSlice[0..<midIndex]
//            let rightSlice = newSlice[midIndex..<newSlice.count]
            print(leftSlice)
            print(rightSlice)

            let slice1 = mergeSortSlice(leftSlice)
            print(slice1)

            let slice2 = mergeSortSlice(rightSlice)
            print(slice2)

            return merge(slice1, slice2)
        }
    }
    
    private func merge(_ leftSlice: ArraySlice<Element>, _ rightSlice: ArraySlice<Element>) -> ArraySlice<Element> {
        var newArray = ArraySlice<Element>()
        newArray.reserveCapacity(leftSlice.count + rightSlice.count)
        var leftIndex = leftSlice.startIndex
        var rightIndex = rightSlice.startIndex
        while leftIndex < leftSlice.endIndex && rightIndex < rightSlice.endIndex {
            if leftSlice[leftIndex] < rightSlice[rightIndex] {
                newArray.append(leftSlice[leftIndex])
                leftIndex += 1
            }else {
                newArray.append(rightSlice[rightIndex])
                rightIndex += 1
            }
        }
        if leftIndex < leftSlice.endIndex {
            let retain = leftSlice[leftIndex..<leftSlice.endIndex]
            newArray.append(contentsOf: retain)
        }
        if rightIndex < rightSlice.endIndex {
            let retain = rightSlice[rightIndex..<rightSlice.endIndex]
            newArray.append(contentsOf: retain)
        }
        
        return newArray
    }
    
}

//var obj = [8 , 4 , 7 , 7 , 4 , 9 , 3]
var obj = [8 , 4 , 7, 3]
obj.mergeSort()
print(obj)

//let newArr = obj.mergeSorted()
//print(newArr)


//let obj2 = [8 , 4 , 7 , 7 , 4 , 9 , 3]
//let newArr = obj2.mergeSorted()
//print(newArr)

