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
    var sum  = a + b
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

//7. Write a Swift program to change the first and last character of a given string.
//
//
//8. Write a Swift program to add the last character (given string) at the front and back of a given string. The length of the given string must be 1 or more.
//
//
//9. Write a Swift program to check if a given non-negative number is a multiple of 3 or a multiple of 5.
//
//
//10. Write a Swift program to take the first two characters from a given string and create a new string with the two characters added at both the front and back.
//
//
//11. Write a Swift program to test a given string whether it starts with "Is". Return true or false.
//
//
//12. Write a Swift program that return true if either of two given integers is in the range 10..30 inclusive.
//
//
//13. Write a Swift program to check if a given string begins with "fix", except the 'f' can be any character or number.
//
//
//14. Write a Swift program to find the largest number among three given integers.
//
//
//15. Write a Swift program that accept two integer values and to test which value is nearest to the value 10, or return 0 if both integers have same distance from 10.
//
//
//16. Write a Swift program that accept two integer values and test if they are both in the range 20..30 inclusive, or they are both in the range 30..40 inclusive.
//
//
//17. Write a Swift program that accept two positive integer values and test whether the larger value is in the range 20..30 inclusive, or return 0 if neither is in that range.
//
//
//18. Write a Swift program to test whether the last digit of the two given non-negative integer values are same or not.
//
//
//19. Write a Swift program to convert the last three characters in upper case. If the string has less than 3 chars, lowercase whatever is there.
//
//
//20. Write a Swift program to check if the first instance of "a" in a given string is immediately followed by another "a".
//
//
//21. Write a Swift program to create a string made of every other char starting with the first from a given string. So "Python" will return "Pto"
//
//
//22. Write a Swift program to count the number of 7's in a given array of integers.
//
//
//23. Write a Swift program to check if one of the first 4 elements in a given array of integers is a 7. The length of the array may be less than 4.
//
//
//24. Write a Swift program to test if the sequence of numbers 0, 1, 2 appears in a given array of integers somewhere.
//
//
//25. Write a Swift program to create a new string where all the character "a" have been removed except the first and last positions.
//
//
//26. Write a Swift program to create a string taking characters at indexes 0, 2, 4, 6, 8, .. from a given string.
//
//
//27. Write a Swift program to count the number of times that two 7's are next to each other in a given array of integers.
//
//
//28. Write a Swift program to test whether a value presents sequentially three times in an array of integers or not.