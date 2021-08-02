
import UIKit

// Задание 1
// Четное или нечетное число?

let chislo = 13

func chetNeChet() {
    let ostatok = chislo % 2
    ostatok == 1 ? print("Число \(chislo) является нечетным") : print("Число \(chislo) является четным")
    
}
chetNeChet()

// Задание 2
// Делится ли число без остатка на 3?

func bezOstatkaNaTri() {
    let ostatok = chislo % 3
    ostatok == 0 ? print("Число \(chislo) делится на 3 без остатка") : print("Число \(chislo) не делится на 3 без остатка")
    
}

bezOstatkaNaTri()

// Задание 3
// Создать возрастающий массив из 100 чисел

var myArray: [Int] = []
for i in 0...99 {
    myArray.append(i)
}

// Задание 4
// Удалить из предыдущего массива все четные числа, и числа которые которые не делятся на 3.

for value in myArray {
    if (value % 2) == 0 {
        myArray.remove(at: myArray.firstIndex(of: value)!)
    }
}

for value in myArray {
    if (value % 3) != 0 {
        myArray.remove(at: myArray.firstIndex(of: value)!)
    }
}

print(myArray)


// Задание 5
// Создать массив из чисел Фибонначи

var fiboArray: [Int] = [0, 1]

func createFiboArray(n: Int) -> [Int] {
    
    for n in 2...n {
    fiboArray.append(fiboArray[n-1] + fiboArray[n-2])
    }
    return fiboArray
}
print(createFiboArray(n: 50))

// Задание 6
// Создать массив простых чисел по методу Эрастофена

func primeNumbers(maxNumber: Int) -> [Int] {
    var resultPrimes: [Int] = []
    
    var eraArray: [Int] = []
    for n in 2...maxNumber {
        eraArray.append(n) }
    
    var newArr = eraArray
    while let newP = newArr.first {
        resultPrimes.append(newP)
        newArr = newArr.filter { $0 % newP != 0 }
    }
    return resultPrimes
}

let maxNumber: Int = 100
print(primeNumbers(maxNumber: maxNumber))
