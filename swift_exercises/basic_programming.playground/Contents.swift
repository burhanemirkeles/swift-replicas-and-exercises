import UIKit

//1. Write a Swift program to compute the sum of the two integers. If the values are equal return the triple their sum.
func triple_sum(a:Int,b:Int)->Int{
    if(a==b){
        return (a+b) * 3
    }
    else{
        return (a+b)
    }
}
print(triple_sum(a: 5, b: 5))
print(triple_sum(a: 3, b: 2))

//2. Write a Swift program to compute and return the absolute difference of n and 51, if n is over 51 return double the absolute difference
func diff_51(a:Int)->Int{
    if(a>51){
        return (a-51) * 2
    }else{
        return (51 - a)
    }
}
print(diff_51(a: 59))
print(diff_51(a: 4))

//3. Write a Swift program that accept two integer values and return true if one of them is 20 or if their sum is 20.
func ques_three(a:Int,b:Int)->Bool{
    let sum  = a + b
    if((sum > 20) || a == 20 || b == 20){
        return true
    }else{
        return false
    }
}
print(ques_three(a: 20, b: 2))
print(ques_three(a: 5, b: 6))
print(ques_three(a: 17, b: 6))
//4. Write a Swift program to accept two integer values and return true if one is negative and one is positive. Return true only if both are negative.
func isBothPositive(a:Int,b:Int)-> Bool{
    if(a>0 && b>0){
        return false
    }else{
        return true
    }
}
print(isBothPositive(a: -5, b: -2))
print(isBothPositive(a: 4, b: -2))
print(isBothPositive(a: 9, b: 9))
//5. Write a Swift program to add "Is" to the front of a given string. However, if the string already begins with "Is", return the given string.
func isStartWithIs(a:String)->String{
    if(a.hasPrefix("Is")){
        return a
    }else{
        return "Is \(a)"
    }
}
print(isStartWithIs(a: "Is blabla"))
print(isStartWithIs(a: "bla bla"))
//6. Write a Swift program to remove a character at specified index of a given non-empty string. The value of the specified index will be in the range 0..str.length()-1 inclusive.
func remove_character(str1: String, n: Int) -> String {
    let count = str1.count
    var newWord = str1
    let index = str1.index(str1.startIndex, offsetBy: n)
    if  count > 0
    {
        newWord.remove(at: index)
    }
    return newWord
}
print(remove_character(str1: "Delete seventh index", n: 7))
//7. Write a Swift program to change the first and last character of a given string.
func change_first_and_last(str1: String)->String{
    let count = str1.count
    
    if count == 1
    {
        return str1
    }
    var result = str1
    let first_char = result.remove(at: result.startIndex)
    let findLast = result.index(before: result.endIndex)
    let last_char = result.remove(at: findLast)
    
    result.append(first_char)
    result.insert(last_char, at: (result.startIndex))
    
    return result
}
print(change_first_and_last(str1:"Swift"))
//8. Write a Swift program to add the last character (given string) at the front and back of a given string. The length of the given string must be 1 or more.
func addLastCharFrontAndBack(text:String)->String{
    var result = text
    let lastChar = result.removeLast()
    let lastStr = String(lastChar)
    result = result + lastStr
    return lastStr + result + lastStr
}
print(addLastCharFrontAndBack(text: "Last"))
print(addLastCharFrontAndBack(text: "H"))
//9. Write a Swift program to check if a given non-negative number is a multiple of 3 or a multiple of 5.
func isMultipleOfThreeOrFive(x:Int)->Bool{
    if((x % 3 == 0) || (x%5 == 0)){
        return true
    }else{
        return false
    }
}
print(isMultipleOfThreeOrFive(x: 8))
//10. Write a Swift program to take the first two characters from a given string and create a new string with the two characters added at both the front and back.
func questionTen(text:String)->String{
    let result = text
    let firstTwoChar = result.prefix(2)
    return firstTwoChar + result + firstTwoChar
}
print(questionTen(text: "taketwo"))
//11. Write a Swift program to test a given string whether it starts with "Is". Return true or false.
func isStartWith(str1: String) -> Bool {
    let str2 = str1
    let hello = "Is"
    let first2Values = str2.prefix(2)
    let first_two = String(first2Values)
    
    if hello == first_two {
        return true
    } else {
        return false
    }
}
print(isStartWith(str1: "Isvalid"))
print(isStartWith(str1: "thatsgonnabefalse"))

//12. Write a Swift program that return true if either of two given integers is in the range 10..30 inclusive.
func isInRangeTenToThirty(a:Int,b:Int)->Bool{
    if(((a>=10) && (30>=a)) || ((b>=10) && (30>=b))){
        return true
    }else{
        return false
    }
}
print(isInRangeTenToThirty(a: 15, b: 25))
print(isInRangeTenToThirty(a: 8, b: 29))
print(isInRangeTenToThirty(a: 2, b: 2))

//13. Write a Swift program to check if a given string begins with "fix", except the 'f' can be any character or number.
func isStartWithFix(text:String)->Bool{
    var result = text
    let startInd = result.startIndex
    let firstChar = result.remove(at: startInd)
    
    if(result.hasPrefix("ix")){
        result.removeFirst(3)
        result.insert(firstChar, at: startInd)
        return true
    }else{
        return false
    }
}
print(isStartWithFix(text: "fix gold"))
print(isStartWithFix(text: "bla bla"))

//14. Write a Swift program to find the largest number among three given integers.
func maxOfThree(firstNumber:Int, secondNumber :Int, thirdNumber: Int)->Int{
    
    if((firstNumber>secondNumber) && (firstNumber>thirdNumber)){
        return firstNumber
    }else if((secondNumber > firstNumber) && (secondNumber>thirdNumber)){
        return secondNumber
    }else{
        return thirdNumber
    }
}

print(maxOfThree(firstNumber: 4, secondNumber: 634, thirdNumber: 1234))
print(maxOfThree(firstNumber: -123, secondNumber: -1234, thirdNumber: -23))

//15. Write a Swift program that accept two integer values and to test which value is nearest to the value 10, or return 0 if both integers have same distance from 10.
func nearestToTen(firstNumber:Int,secondNumber:Int)->Int{
    let distanceOfFirst = abs(10 - firstNumber)
    let distanceOfSecond = abs(10 - secondNumber)
    
    if(distanceOfFirst == distanceOfSecond){
        return 0
    }
    if(distanceOfFirst>distanceOfSecond){
        return secondNumber
    }else{
        return firstNumber
    }
}
print(nearestToTen(firstNumber: 12, secondNumber: 32))
print(nearestToTen(firstNumber: 12, secondNumber: 8))
//16. Write a Swift program that accept two integer values and test if they are both in the range 20..30 inclusive, or they are both in the range 30..40 inclusive.
func in3050(_ x: Int, _ y: Int) -> Bool {
    if x >= 20 && x <= 30 && y >= 20 && y <= 30
    {
        return true
    }
    else if x >= 30 && x <= 40 && y >= 30 && y <= 40
    {
        return true
    }
    else
    {
        return false
    }
}
print(in3050(20, 25))
print(in3050(30, 39))
print(in3050(23,12))

//17. Write a Swift program that accept two positive integer values and test whether the larger value is in the range 20..30 inclusive, or return 0 if neither is in that range.


//18. Write a Swift program to test whether the last digit of the two given non-negative integer values are same or not.

//19. Write a Swift program to convert the last three characters in upper case. If the string has less than 3 chars, lowercase whatever is there.

//20. Write a Swift program to check if the first instance of "a" in a given string is immediately followed by another "a".

//21. Write a Swift program to create a string made of every other char starting with the first from a given string. So "Python" will return "Pto"

//22. Write a Swift program to count the number of 7's in a given array of integers.

//23. Write a Swift program to check if one of the first 4 elements in a given array of integers is a 7. The length of the array may be less than 4.

//24. Write a Swift program to test if the sequence of numbers 0, 1, 2 appears in a given array of integers somewhere.

//25. Write a Swift program to create a new string where all the character "a" have been removed except the first and last positions.

//26. Write a Swift program to create a string taking characters at indexes 0, 2, 4, 6, 8, .. from a given string.

//27. Write a Swift program to count the number of times that two 7's are next to each other in a given array of integers.

//28. Write a Swift program to test whether a value presents sequentially three times in an array of integers or not.
