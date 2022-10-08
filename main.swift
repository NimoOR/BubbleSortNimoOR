var unsortedWords: [String] = []

while let input = readLine(){
    unsortedWords.append(input)
}


var a = unsortedWords
var loop = false

func swap(words:inout [String], firstIndex: Int, secondIndex: Int) {
    (words[firstIndex], words[secondIndex]) = (words[secondIndex], words[firstIndex])
}

func bubbleSort(loop:inout Bool){
    while loop == false {
        loop = true
        for i in 0..<a.count - 1{
            if a[i] > a[i + 1]{
                swap(words:&a, firstIndex:i, secondIndex: (i + 1))
                loop = false
            }
        }
    }
}

bubbleSort(loop:&loop)

