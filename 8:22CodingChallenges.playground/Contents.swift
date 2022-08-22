import UIKit
import Foundation

/*
 Given two sorted arrays nums1 and nums2 of size m and n respectively, return the median of the two sorted arrays.
 The overall run time complexity should be O(log (m+n)).
 
 Example1:
 Input:nums1 = [1,3], nums2 = [2]
 Output:2.00000
 Explanation: merged array = [1,2,3] and median is 2.
 */

func medianOfTwoSortedArrays(_ arr1 : [Int],_ arr2 : [Int]) -> Double {
    
    let combinedArray = arr1 + arr2
    var median = 0.0
    
    if combinedArray.count % 2 == 0 {
        let leftMiddle = combinedArray[(combinedArray.count / 2) - 1]
        let rightMiddle = combinedArray[(combinedArray.count / 2)]

        median = Double((Double(leftMiddle) + Double(rightMiddle)) / 2)
    }else {
        median = Double(combinedArray[combinedArray.count / 2])
    }

    return median
}

let arr1 = [1,2]
let arr2 = [3,4]

medianOfTwoSortedArrays(arr1, arr2) //returns 2.5


/*
 2) Merge Sorted Lists
 You are given an array of k linked-lists lists, each linked-list is sorted in ascending order.
 Merge all the linked-lists into one sorted linked-list and return it.

 Example1:
 Input: lists = [[1,4,5],[1,3,4],[2,6]]
 Output:[1,1,2,3,4,4,5,6]
 Explanation: The linked-lists are:
 [
 1->4->5,
 1->3->4,
 2->6
 ]
 merging them into one sorted list:
 1->1->2->3->4->4->5->6
 */


func mergeSortedLists(_ lists: [[Int]]) -> [Int] {
    var mergedList = lists.flatMap({$0})
    mergedList = mergedList.sorted()
    return mergedList
}

mergeSortedLists([[1,4,5],[1,3,4],[2,6]]) //returns [1,1,2,3,4,4,5,6]
