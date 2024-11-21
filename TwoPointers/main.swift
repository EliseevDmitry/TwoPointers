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


//func calculate (array: [Int]) -> Int {
//    var sum = 0
//    (1..<array.count).forEach {
//        sum += max(0, array[$0-1] - array [$0])}
//        return sum
//    }
//
//    let array = [4, 2, 0, 3, 2, 5]
//    print( calculate(array: array))


//Из LeetCode 5 задача

//class Solution {
//    func longestPalindrome(_ s: String) -> String {
//        if s.isEmpty {
//            return ""
//        }
//        if s.count == 1 {
//            return s
//        }
//        let arrString = Array(s)
//        var lastIndex = arrString.count - 1
//        var charIndex = Int()
//        var counter = Int()
//        var resultString = String()
//        while charIndex != arrString.count - 1 {
//            while lastIndex > charIndex {
//                if arrString[charIndex] == arrString[lastIndex] {
//                    if getPolindrom(String(arrString[charIndex ... lastIndex])){
//                        if String(arrString[charIndex ... lastIndex]).count > counter {
//                            resultString = String(arrString[charIndex ... lastIndex])
//                            counter = String(arrString[charIndex ... lastIndex]).count
//                        }
//                    }
//                }
//                lastIndex -= 1
//            }
//            charIndex += 1
//            lastIndex = arrString.count - 1
//        }
//        return counter == 0 ? String(arrString[0]) : resultString
//    }
//
//    func getPolindrom(_ str: String) -> Bool {
//        var leftIndex = 0
//        var rightIndex = str.count - 1
//        var newArr = Array(str)
//
//        while leftIndex < rightIndex {
//            newArr.swapAt(leftIndex, rightIndex)
//            leftIndex += 1
//            rightIndex -= 1
//        }
//        return str == String(newArr) ? true : false
//    }
//}
//
//


//class Solution {
//    func longestPalindrome(_ s: String) -> String {
//        if s.isEmpty {
//            return ""
//        }
//        if s.count == 1 {
//            return s
//        }
//        if getPolindrom(s) {
//            return s
//        }
//        var leftIndex = s.startIndex
//        var rightIndex = s.index(before: s.endIndex)
//        while leftIndex < rightIndex {
//            if s[leftIndex] == s[s.index(after: leftIndex)] {
//                leftIndex = s.index(after: leftIndex)
//                continue
//            }
//            break
//        }
//        if (s[s.startIndex ... leftIndex]).count > Int(s.count/2) {
//            return String(s[s.startIndex ... leftIndex])
//        }
//        leftIndex = s.startIndex
//        rightIndex = s.index(before: s.endIndex)
//        while leftIndex < rightIndex {
//            if s[rightIndex] == s[s.index(before: rightIndex)] {
//                rightIndex = s.index(before: rightIndex)
//                continue
//            }
//            break
//        }
//        if (s[rightIndex ... s.index(before: s.endIndex)]).count > Int(s.count/2) {
//            return String(s[rightIndex ... s.index(before: s.endIndex)])
//        }
//        leftIndex = s.startIndex
//        rightIndex = s.index(before: s.endIndex)
//        var result = String()
//        var counter = Int()
//        while leftIndex < rightIndex {
//            if s[leftIndex] == s[rightIndex] && s[leftIndex ... rightIndex].count > counter {
//                if getPolindrom(String(s[leftIndex ... rightIndex])) {
//                    if counter < String(s[leftIndex ... rightIndex]).count {
//                        counter = String(s[leftIndex ... rightIndex]).count
//                        result = String(s[leftIndex ... rightIndex])
//                        rightIndex = s.index(before: s.endIndex)
//                        leftIndex = s.index(after: leftIndex)
//                        continue
//                    }
//                }
//            }
//            rightIndex = s.index(before: rightIndex)
//            if rightIndex == leftIndex {
//                rightIndex = s.index(before: s.endIndex)
//                leftIndex = s.index(after: leftIndex)
//            }
//        }
//        return counter == 0 ? String(s[s.startIndex]) : result
//    }
//
//    func getPolindrom(_ str: String) -> Bool {
//        var leftIndex = str.startIndex
//        var rightIndex = str.index(before: str.endIndex)
//        while leftIndex < rightIndex {
//            if str[leftIndex] != str[rightIndex] {
//                return false
//            }
//            leftIndex = str.index(after: leftIndex)
//            rightIndex = str.index(before: rightIndex)
//        }
//        return true
//    }
//}
//
//
//var a = Solution().longestPalindrome("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaabcaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
//print(a)





//11. Даны 2 отсортированных значения нужно найти их пересечения
//
//[4,5,9,11] и [1, 2, 3, 4, 5, 5, 9] -> [4, 5, 9]

//func intersection(_ nums1: inout [Int], _ nums2: inout [Int]) -> [Int] {
//    if nums1.count > nums2.count {
//        (nums1, nums2) = (nums2, nums1)
//    }
//    var leftIndex = Int()
//    var rightIndex = nums1.count - 1
//    var setArr = Set(nums2) //если я правильно понимаю сложность O1 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
//    var resultArr = [Int]()
//    //перебираем короткий массив
//    while leftIndex < rightIndex {
//        if setArr.contains(nums1[leftIndex]) {
//            resultArr.append(nums1[leftIndex])
//        }
//        if setArr.contains(nums1[rightIndex]) {
//            resultArr.append(nums1[rightIndex])
//        }
//        leftIndex += 1
//        rightIndex -= 1
//    }
//    return resultArr
//}
//
//var arrOne = [4,5,9,11]
//var arrTwo = [1, 2, 3, 4, 5, 5, 9]
//print(intersection(&arrOne, &arrTwo))


//12. Смержить строки
//
//"abc", "pqr" -> "apbqcr"
//"ab", "pqrs" -> "apbqrs"
//

//незнаю на сколько это рациональное решение!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
//func mergeAlternately(_ word1: String, _ word2: String) -> String {
//    let firstArr = Array(word1)
//    let secondArr = Array(word2)
//    var firstIndex = Int()
//    var secondIndex = 1
//    var resultArr: [Character] = []
//    
//    for _ in 1...(firstArr.count > secondArr.count ? firstArr.count - 1 : secondArr.count - 1) {
//        if firstIndex < firstArr.count {
//            resultArr.append(firstArr[firstIndex])
//        }
//        if firstIndex < secondArr.count {
//            resultArr.append(secondArr[firstIndex])
//        }
//        if secondIndex < firstArr.count {
//            resultArr.append(firstArr[secondIndex])
//        }
//        if secondIndex < secondArr.count {
//            resultArr.append(secondArr[secondIndex])
//        }
//        firstIndex += 2
//        secondIndex += 2
//    }
//    return String(resultArr)
//}
//
//let wordOne = "abcdeg"
//let wordTwo = "abcde"
//print(mergeAlternately(wordOne, wordTwo))

//
//13. Найти первую палиндром строку в массиве
//
//["abc","car","ada","racecar","cool"] -> "ada"
//["def","ghi"] -> ""

//с  одной стороны, я понимаю что мы проходим за раз 2-а элемента, с другой стороны 2 повторяющегося блока кода!!!!!!!!!!!!!!!!!!
//func firstPalindrome(_ words: [String]) -> String {
//    var firstIndex = Int()
//    var secondIndex = 1
//    for _ in 1 ... words.count - 1 {
//        if firstIndex < words.count {
//            if words[firstIndex] == String(words[firstIndex].reversed()) {
//                return words[firstIndex]
//            }
//        }
//        if secondIndex < words.count {
//            if words[secondIndex] == String(words[secondIndex].reversed()) {
//                return words[secondIndex]
//            }
//        }
//        firstIndex += 2
//        secondIndex += 2
//    }
//    return ""
//}
//
//print(firstPalindrome(["abc","car","ada","racecar","cool"]))

//
//
//
//14. Раскидать массив так чтобы слева были четные а справа нечетные
//
//[3,1,2,4] -> [2,4,3,1] или [4,2,1,3] (порядок неважен)
//
//func sortArrayByParity(_ nums: [Int]) -> [Int] {
//    var result = [Int]()
//    var leftIndex = Int()
//    var rightIndex = nums.count - 1
//    
//    while leftIndex < rightIndex {
//        if nums[leftIndex] % 2 == 0 {
//            result.insert(nums[leftIndex], at: 0)
//        } else {
//            result.append(nums[leftIndex])
//        }
//        if nums[rightIndex] % 2 == 0 {
//            result.insert(nums[rightIndex], at: 0)
//        } else {
//            result.append(nums[rightIndex])
//        }
//        leftIndex += 1
//        rightIndex -= 1
//    }
//    return result
//}
//
//print(sortArrayByParity([3,1,2,4]))
//
//
//15. Перевернуть строку
//
//["h","e","l","l","o"] -> ["o","l","l","e","h"]
//["H","a","n","n","a","h"] -> ["h","a","n","n","a","H"]
//
//func reverseString(_ s: inout [Character]) {
//    var firstIndex = Int()
//    var lastIndex = s.count - 1
//    
//    while firstIndex < lastIndex {
//        s.swapAt(firstIndex, lastIndex) // запомнить swapAt !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
//        firstIndex += 1
//        lastIndex -= 1
//    }
//}
//
//var arrChar: [Character] = ["h","e","l","l","o"]
//reverseString(&arrChar)
//print(arrChar)
//
//
//16. Перенести нули вправо
//[0,1,0,3,12] -> [1, 3, 12, 0, 0]
//[0] -> [0]
//
//func moveZeroes(_ nums: inout [Int]){
//    var leftIndex = Int()
//    var rightIndex = nums.count - 1
//    
//    while leftIndex < rightIndex {
//        if nums[leftIndex] == 0 {
//            nums.remove(at: leftIndex)
//            nums.append(0)
//            leftIndex += 1
//            continue
//        }
//        if nums[rightIndex] == 0 {
//            nums.remove(at: rightIndex)
//            nums.append(0)
//            rightIndex -= 1
//            continue
//        }
//        leftIndex += 1
//        rightIndex -= 1
//    }
//}
//
//var arrInt = [0]
//moveZeroes(&arrInt)
//print(arrInt)
//
//
//17. Смержить 2 отсортированных массива
//
//[2, 4, 6] [1, 2, 3, 4, 5] -> [1, 2, 2, 3, 4, 4, 5, 6]

func mergeArrays(lhs: [Int], rhs: [Int]) -> [Int]{
    var firstIndex = Int()
    var secondIndex = 1
    var resultArr = [Int]()
    for _ in (1...(lhs.count > rhs.count ? lhs.count - 1 : rhs.count - 1)) {
        
    }
    return []
}

let lhs = [2, 4, 6]
let rhs = [1, 2, 3, 4, 5]

print(mergeArrays(lhs: lhs, rhs: rhs))
//
//
//
//18. Определение длины самого длинного подмассива с определенной суммой.
//
//[1, 2, 2, 3, 3, 4, 5, 6, 7] , таргет = 10, -> [1, 4]
//

//какая то жесть получилась - но она реально работает - но не понимаю на какой сложности !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
//func lenghtOfSubArray(_ array: [Int], target: Int) -> [Int] {
//    var result = [Int]()
//    var resultCount = Int()
//    var firstIndex = Int()
//    var secondIndex = 1
//    var counter = Int()
//    var calcArr = [Int]()
//    var calcSum = Int()
//    while firstIndex <= array.count - 1 || secondIndex <= array.count - 1 {
//        if firstIndex <= array.count - 1 && calcSum < target {
//            if calcSum + array[firstIndex] < target {
//                calcSum += array[firstIndex]
//                calcArr.append(array[firstIndex])
//            }
//            if calcSum + array[firstIndex] == target {
//                calcSum += array[firstIndex]
//                calcArr.append(array[firstIndex])
//                if resultCount < calcArr.count {
//                    result.removeAll()
//                    result.append(counter)
//                    result.append(calcArr.count - 1 + counter)
//                    resultCount = calcArr.count
//                    calcArr.removeAll()
//                    calcSum = 0
//                    counter += 1
//                    firstIndex = counter
//                    secondIndex = counter + 1
//                    continue
//                }
//            }
//            if calcSum + array[firstIndex] > target {
//                calcArr.removeAll()
//                calcSum = 0
//                counter += 1
//                firstIndex = counter
//                secondIndex = counter + 1
//                continue
//            }
//        }
//        if secondIndex <= array.count - 1 && calcSum < target {
//            if calcSum + array[secondIndex] < target {
//                calcSum += array[secondIndex]
//                calcArr.append(array[secondIndex])
//            }
//            if calcSum + array[secondIndex] == target {
//                calcSum += array[secondIndex]
//                calcArr.append(array[secondIndex])
//                if resultCount < calcArr.count {
//                    result.removeAll()
//                    result.append(counter)
//                    result.append(calcArr.count - 1 + counter)
//                    resultCount = calcArr.count
//                    calcArr.removeAll()
//                    calcSum = 0
//                    counter += 1
//                    firstIndex = counter
//                    secondIndex = counter + 1
//                    continue
//                }
//            }
//            if calcSum + array[secondIndex] > target {
//                calcArr.removeAll()
//                calcSum = 0
//                counter += 1
//                firstIndex = counter
//                secondIndex = counter + 1
//                continue
//            }
//        }
//        firstIndex += 2
//        secondIndex += 2
//    }
//    return result
//}
//
//print(lenghtOfSubArray([1, 2, 2, 3, 3, 4, 5, 6, 7], target: 10))
//
//
//19. Поиск единственного неповторяющегося символа в строке
//
//"aaaaaaaaaaacaaaaa" -> "c"
//
//func findUnique(string: String) -> Character {
//    let arrString = Array(string)
//    var leftIndex = Int()
//    var rightIndex = arrString.count - 1
//    var sample: Character?
//    if let first = arrString.first, let last = arrString.last {
//        if first == last {
//            sample = first
//        }
//        if first != last {
//            sample = arrString[arrString.index(after: arrString.startIndex)]
//        }
//    }
//    while leftIndex < rightIndex {
//        if arrString[leftIndex] != arrString[rightIndex] {
//            if let element = sample {
//                if arrString[leftIndex] != element {
//                    sample = arrString[leftIndex]
//                    break
//                }
//                if arrString[rightIndex] != element {
//                    sample = arrString[rightIndex]
//                    break
//                }
//            }
//        }
//        leftIndex += 1
//        rightIndex -= 1
//    }
//        return sample ?? " "
//}
//
//print(findUnique(string: "aaaaaaaaaaacaaaaa"))
//
//
//20. Определите подмассива максимальной суммы в заданном массиве. минимум из 2 элементов
//
//[1, 1, 1, 1, 1, 2, 2, 3, 4] -> [3, 4]
//
//func findSmallestSubArray(_ array: [Int], target: Int) -> [Int] {
//    var result = [Int]()
//    var resultCounter = Int()
//    var firstIndex = Int()
//    var secondIndex = 1
//    var counter = Int()
//    var calcArr = [Int]()
//    var calcCounter = Int()
//    while secondIndex <= array.count - 1 || firstIndex <= array.count - 1 {
//        if calcArr.count < target {
//            if firstIndex < array.count {
//                calcArr.append(array[firstIndex])
//                calcCounter += array[firstIndex]
//            }
//        }
//        if calcArr.count < target {
//            if secondIndex < array.count {
//                calcArr.append(array[secondIndex])
//                calcCounter += array[firstIndex]
//            }
//        }
//        if calcArr.count == target {
//            if resultCounter < calcCounter {
//                result = calcArr
//                resultCounter = calcCounter
//                calcArr.removeAll()
//                calcCounter = 0
//            }
//            calcArr.removeAll()
//            calcCounter = 0
//            counter += 1
//            firstIndex = counter
//            secondIndex = counter + 1
//            continue
//        }
//        firstIndex += 2
//        secondIndex += 2
//    }
//    return result
//}
//
//print(findSmallestSubArray([1, 1, 1, 1, 1, 2, 2, 3, 4], target: 2))
