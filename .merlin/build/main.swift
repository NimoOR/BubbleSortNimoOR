// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedIntegers = [-191, 709, -730, 660, 903, 343, -855, 758, -397]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧
// Add your code below:
/*
var usableUnsortedIntegers = unsortedIntegers
func swap(integers: inout [Int], firstIndex: Int, secondIndex: Int){
    var temp = 0
    temp = integers[firstIndex]
    integers[firstIndex] = integers[secondIndex]
    integers[secondIndex] = temp
}
func sort(integers: inout [Int]){
    for _ in 0 ..< integers.count{
        for j in 1 ..< integers.count-1{
            if integers[j] < integers[j+1]{
                swap(integers: &integers, firstIndex: integers[j-1], secondIndex: integers[j])
            }
        }
        print(integers)
    }
}
sort(integers: &usableUnsortedIntegers)
 */
var a = unsortedIntegers
var pass = 0
var swaps = 0
var swapstot = 0
var loop = false
func swap(integers:inout [Int], firstIndex:Int, secondIndex: Int) {
    let x = integers[firstIndex]
    integers[firstIndex] = integers [secondIndex]
    integers [secondIndex] = x
    swapstot += 1
}
func bubbleSort(loop:inout Bool){
    print("Pass: \(pass), Swaps: \(swaps)/\(swapstot), Array: \(a)")
    while loop == false {
        loop = true
        for i in 0..<a.count-1{
            if a[i] > a[i+1]{
                swap(integers:&a, firstIndex:i, secondIndex: (i+1))
                loop = false
                swaps += 1
            }
        }
        pass += 1
        print("Pass: \(pass), Swaps: \(swaps)/\(swapstot), Array: \(a)")
        swaps = 0
    }
}
bubbleSort(loop:&loop)

