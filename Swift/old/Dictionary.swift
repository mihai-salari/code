import Foundation

func swappingValuesForKeys(_ key1: String, _ key2: String, in dictionary: [String: Int]) -> [String: Int] {
    var dictionary = dictionary
    var oldValue = dictionary[key1]
    
    dictionary.updateValue(dictionary[key2]!, forKey: key1)
    dictionary[key2] = oldValue
    
    return dictionary
}

let myDict1 = ["a": 1, "b": 2]
let myDict2 = swappingValuesForKeys("a", "b", in: myDict1)

print(myDict1)
print(myDict2)

let someStates = [
    "NY": "New York",
    "CA": "California",
    "MA": "Massachusetts"
]

func printStateMoreThanEight(_ statesDict: [String: String]) -> [String] {
    var moreThanEightStates: [String] = []
    
    for state in statesDict.keys {
        if statesDict[state]!.characters.count > 8 {
            moreThanEightStates.append(statesDict[state]!)
        }
    }
    
    return moreThanEightStates
}

printStateMoreThanEight(someStates)


func merging(_ dict1: [String: String], with dict2: [String: String]) -> [String: String] {
    var dict3 = dict1
    
    for item in dict2 {
        if dict3.keys.contains(item.key) {
            dict3.updateValue(item.value, forKey: item.key)
        } else {
            dict3[item.key] = item.value
        }
    }
    
    return dict3
}

let myStringDict1 = ["a": "1", "b": "2", "c": "9"]
let myStringDict2 = ["c": "3", "d": "4", "a": "10"]
merging(myStringDict1, with: myStringDict2)


func occurrencesOfCharacters(in text: String) -> [Character: Int] {
    var characters = text.characters
    var result: [Character: Int] = [:]
    
    for c in characters {
        if result.keys.contains(c) {
            result[c] = result[c]! + 1
        } else {
            result[c] = 1
        }
    }
    
    return result
}

print(occurrencesOfCharacters(in: "hello world"))

func isInvertible(_ dictionary: [String: Int]) -> Bool {
    var uniques: [Int] = []
    
    for item in dictionary.values {
        if uniques.contains(item) {
            return false
        } else {
            uniques.append(item)
        }
    }
    
    return true
}

print(isInvertible(["a": 1, "b": 2, "c": 3, "d": 4]))

func invert(_ input: [String: Int]) -> [Int: String] {
    precondition(isInvertible(input), "This dictionary can't be inverted")
    
    var output: [Int: String] = [:]
    
    for item in input {
        output[item.value] = item.key
    }
    
    return output
}

invert(["a": 1, "b": 2, "c": 3, "d": 4])

func printSortedKeysAndValues(_ input: [String: Int16]) {
    var sortedKeys: [String] = []
    
    for item in input.keys {
        print("\(#function): item is \(item)")
        
        if sortedKeys.isEmpty {
            print("\(#function): sorted key is empty")
            sortedKeys.append(item)
            print("\(#function): sortedKeys is \(sortedKeys)")
        } else {
            var c = 0
            
            print("\(#function): sorted key is not empty")
            for (index, key) in sortedKeys.enumerated() {
                print("\(#function): index is \(index), key is \(key)")
                
                print("\(#function): c is \(c)")
                
                if item > key {
                    print("\(#function): item is \(item), key is \(key), item > key")
                    if index+1 > c {
                        c = index+1
                    }
                    
                    //sortedKeys.insert(item, at: index+1)
                    //print(sortedKeys)
                    //break
                } else {
                    print("\(#function): item is \(item), key is \(key), item < key")
                    
                    if index <= c {
                        c = index
                    }
                    
                    //sortedKeys.insert(item, at: index)
                    //print(sortedKeys)
                    //break
                }
            }
        
            sortedKeys.insert(item, at: c)
            print(sortedKeys)
        }
    }
    
    print(sortedKeys)
    
    for key in sortedKeys {
        print("\(key): \(input[key]!)")
    }
}

let int16: [String: Int16] = ["hello": 12, "abc": 9, "zebra": 1200, "cucu": 21, "newton": 4848, "a": 290]

printSortedKeysAndValues(int16)