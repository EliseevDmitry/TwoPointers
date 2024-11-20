//
//  main.swift
//  TwoPointers
//
//  Created by Dmitriy Eliseev on 19.11.2024.
//

import Foundation

//Этот подход эффективен при решении задач, где необходимо найти пары, определить сумму элементов или найти определенное целевое значение в отсортированном массиве.


//1. Перевернуть строку без использования reversed()
//
//"hello" -> "olleh"

//func reverse(string: String) -> String {
//    var left = 0
//    var right = string.count - 1
//    var arrString = Array(string)
//
//    while left < right {
//        arrString.swapAt(left, right)
//        left += 1
//        right -= 1
//    }
//    return String(arrString)
//}
//
//print(reverse(string: "hello"))

//2. Определить что слово является палиндромом
//
//"kayak" -> true
//"level" -> true
//"wow" -> true
//"hay" -> false

//func isPalindrom(string: String) -> Bool {
//    var left = 0
//    var right = string.count - 1
//    var arrString = Array(string)
//
//    while left < right {
//        arrString.swapAt(left, right)
//        left += 1
//        right -= 1
//    }
//    return string == String(arrString) ? true : false
//}
//
//print(isPalindrom(string: "hay"))


//3. Найти индекс единственного нечетного числа в массиве
//
//[2, 4, 6, 7, 10] -> 3
//[4, -8, -10, 6, 8, 11, 100] -> 5
//[2, 4, 8, 10] -> nil

//func addOne(_ array: [Int]) -> Int? {
//    var leftIndex = 0
//    var rightIndex = array.count - 1
//
//    while leftIndex < rightIndex {
//        if array[leftIndex] % 2 != 0 {
//            return leftIndex
//        }
//        if array[rightIndex] % 2 != 0 {
//            return rightIndex
//        }
//        leftIndex += 1
//        rightIndex -= 1
//    }
//    return nil
//}
//
//print(addOne([2, 4, 6, 7, 10]))



//4. Дан отсортированный массив, вернуть пары сумм которых равна таргету
//
//[-3,-2,-1,0,1,2,3] , target: 0 -> [[-3,3], [-2,2], [-1,1]]

//func sumPairs(_ nums: [Int], target sum: Int) -> [[Int]] {
//    var result: [[Int]] = []
//    var leftIndex = 0
//    var rightIndex = nums.count - 1
//    while leftIndex < rightIndex {
//        if nums[leftIndex] + nums[rightIndex] == 0 {
//            result.append([nums[leftIndex], nums[rightIndex]])
//        }
//        leftIndex += 1
//        rightIndex -= 1
//    }
//    return result
//}
//
//print(sumPairs([-3,-2,-1,0,1,2,3], target: 0))


//5. Есть массив целых чисел, необходимо вернуть индексы двух чисел сумма которых равна таргету.
// Можно считать что массив имеет одно решение. Нельзя использовать одно и то же число дважды.
//
//[2, 7, 11, 15], 9 -> [0, 1]

//func twoSum(_ array: [Int], target: Int) -> [Int]? {
//    var firstIndex = 0
//    for secondIndex in 1..<array.count {
//        if array[firstIndex] + array[secondIndex] != target {
//            firstIndex += 1
//        } else {
//            return [firstIndex, secondIndex]
//        }
//    }
//    return nil
//}
//
//print(twoSum([2, 7, 11, 15], target: 9))


//6. Удалить дубликаты из отсортированного массива.
//
//[0,0,1,1,1,2,2,3,3,4] -> [0, 1, 2, 3, 4]


//func removeDuplicated(_ nums: inout [Int]) {
//    var firstIndex = 0
//    for secondIndex in 1..<nums.count {
//        if (secondIndex - firstIndex) == nums.count {
//            break
//        }
//        //уменьшение индеска перебора secondIndex - на величину firstIndex - дошло до меня быстро
//        if nums[firstIndex] == nums[secondIndex - firstIndex] {
//            nums.remove(at: firstIndex)
//            print(nums)
//            //долго осмысливал это условие
//            if secondIndex == 1 {
//                firstIndex += 1
//            }
//            continue
//        }
//       firstIndex += 1
//    }
//}
//var nums = [0,0,1,1,1,2,2,3,3,4]
//removeDuplicated(&nums)
//print(nums)


//7. Вернуть количество уникальных элементов.
//
//[0,0,1,1,1,2,2,3,3,4] -> 5

//func countUniqueElements(_ nums: inout [Int]) -> Int {
//    var firstIndex = 0
//    if nums.isEmpty {
//        return 0
//    }
//    var counter = 1
//    for secondIndex in 1..<nums.count {
//        if nums[firstIndex] != nums[secondIndex] {
//            firstIndex = secondIndex
//            counter += 1
//        }
//    }
//    return counter
//}
//
//var nums = [0,0,1,1,1,2,2,3,3,4]
//countUniqueElements(&nums)
//print(countUniqueElements(&nums))




//Пример из теории разобрать! _______________________________________________________________________________

//Задача 3
//Подсчитать количество уникальных элементов
//
//[1,1,2,2,3,3,4,5] -> 5
//[1,1,1,2,2,2] -> 2


//func countUniqueValues(_ values: inout[Int]) -> Int {
//
//        if values.isEmpty {
//                return 0
//        }
//
//        var index1 = 0
//        for index2 in 1..<values.count {
//                
//                if values[index1] != values[index2] {
//                        index1 += 1
//                        values[index1] = values[index2]
//                }
//        }
//        return index1 + 1
//}
//var arr = [0,0,1,1,1,2,2,3,3,4]
//print(countUniqueValues(&arr))
//print(arr) // [0, 1, 2, 3, 4, 2, 2, 3, 3, 4]

//Пример из теории разобрать! _______________________________________________________________________________


//8. Удалить элементы в массиве по таргету
//
//[1, 2, 3, 2, 1], target - 2, -> [1, 3, 1]
//
//func removeElements(_ array: [Int], target: Int) -> [Int] {
//    var result:[Int] = []
//    var firstIndex = 0
//    var secondIndex = array.count - 1
//    var insertIndex = Int()
//    while firstIndex <= secondIndex {
//        if firstIndex == secondIndex {
//            if array[firstIndex] != target {
//                result.insert(array[firstIndex], at: result.count/2)
//            }
//            break
//        }
//        if array[firstIndex] != target {
//            result.insert(array[firstIndex], at: insertIndex)
//            insertIndex += 1
//            
//        }
//        if array[secondIndex] != target {
//            result.insert(array[secondIndex], at: insertIndex)
//        }
//        firstIndex += 1
//        secondIndex -= 1
//    }
//    return result
//}
//
//print(removeElements([1, 2, 3, 2, 1], target: 2))
//_____________________________________________________________________________дофига условий!!!

//9. Есть массив чисел и число таргет, нужно удалить из массива все числа target и посчитать сколько осталось
//
//[3, 2, 2, 3], target = 3, -> 2
//

//func removeElement(_ nums: inout [Int], _ target: Int) -> Int {
//    var leftIndex = Int()
//    var rightIndex = nums.count - 1
//    while leftIndex < rightIndex {
//        if nums[leftIndex] == target {
//            nums.remove(at: leftIndex)
//            continue
//        }
//        if rightIndex < nums.count {
//            if nums[rightIndex] == target {
//                nums.remove(at: rightIndex)
//                continue
//            }
//        }
//        leftIndex += 1
//        rightIndex -= 1
//    }
//    return nums.count
//}
//
//var arr: [Int] = [3, 2, 2, 3]
//print(removeElement(&arr, 3))
//print(arr)





//10. Проверить что фраза является валидным палиндромом
//
//"A man, a plan, a canal: Panama" -> true
//"race a car" -> false
//
//func isPalindrome(_ s: String) -> Bool {
//    var arrString = Array(s.replacingOccurrences(of: "[^a-zA-Z1-9]", with: "", options: .regularExpression).lowercased()) //запомнить метод!!!
//    var leftIndex = 0
//    var rightIndex = arrString.count - 1
//    while leftIndex < rightIndex {
//        if arrString[leftIndex] != arrString[rightIndex] {
//            return false
//        }
//        leftIndex += 1
//        rightIndex -= 1
//    }
//    return true
//}
//
//print(isPalindrome("race a car"))
