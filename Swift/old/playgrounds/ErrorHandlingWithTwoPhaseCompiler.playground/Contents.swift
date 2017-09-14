//: Playground - noun: a place where people can play

import UIKit

enum Token {
    case number(Int)
    case plus
    case minus
}

class Lexer {
    enum Error: Swift.Error {
        // Nested type - Lexer.Error
        case invalidCharacter(Character)
    }
    
    let input: String.CharacterView
    var position: String.CharacterView.Index
    
    init(input: String) {
        self.input = input.characters
        self.position = self.input.startIndex
    }
    
    func peek() -> Character? {
        guard position < input.endIndex else {
            return nil
        }
        
        return input[position]
    }
    
    func advance() {
        assert(position < input.endIndex, "Cannot advance past endIndex!") // check for a non-recoverable error
        position = input.index(after: position)
    }

    // Loops over input characters, accumulating digits into a single integer value
    func getNumber() -> Int {
        var value = 0
        
        while let nextCharacter = peek() {
            switch nextCharacter {
            case "0" ... "9":
                // Another digit - add it to the value
                let digitValue = Int(String(nextCharacter))!
                print("\(#function): digitValue is \(digitValue)")
                value = 10 * value + digitValue
                print("\(#function): value is \(value)")
                advance()
            default:
                // A non-digit - go back to regular lexing
                return value
            }
        }
        
        return value
    }
    
    func lex() throws -> [Token] {
        var tokens = [Token]()
        print("\(#function): tokens - \(tokens)")
        
        // peek() returns optional
        while let nextCharacter = peek() {
            switch nextCharacter {
            case "0" ... "9":
                // Start of a number - need to grab the rest
                print("\(#function): nextCharacter is \(nextCharacter)")
                let value = getNumber()
                tokens.append(.number(value))
            case "+":
                tokens.append(.plus)
                advance()
            case "-":
                tokens.append(.minus)
                advance()
            case " ":
                // Just advance to ignore spaces
                advance()
            default:
                // Something unexpected - need to send back an error
                throw Lexer.Error.invalidCharacter(nextCharacter)
            }
        }
        
        return tokens
    }
}

class Parser {
    enum Error: Swift.Error {
        case unexpectedEndOfInput
        case invalidToken(Token)
    }
    
    let tokens: [Token]
    var position = 0
    
    init(tokens: [Token]) {
        self.tokens = tokens
    }
    
    func getNextToken() -> Token? {
        guard position < tokens.count else {
            return nil
        }
        
        let token = tokens[position]
        position += 1
        
        return token
    }
    
    func getNumber() throws -> Int {
        guard let token = getNextToken() else {
            throw Parser.Error.unexpectedEndOfInput
        }
        
        switch token {
        case .number(let value):
            return value
        case .plus:
            throw Parser.Error.invalidToken(token)
        case .minus:
            throw Parser.Error.invalidToken(token)
        }
    }
    
    func parse() throws -> Int {
        // Require a number first
        var value = try getNumber()
        
        while let token = getNextToken() {
            switch token {
            // Getting a minus after a number is legal
            case .minus:
                let nextNumber = try getNumber()
                value -= nextNumber
            // Getting a plus after a number is legal
            case .plus:
                // After a plus, we must get another number
                let nextNumber = try getNumber()
                value += nextNumber
            // Getting a number after a number is not legal
            case .number:
                throw Parser.Error.invalidToken(token)
            }
        }
        
        return value
    }
}

func evaluate(_ input: String) {
    print("\(#function): input string is \(input)")
    let lexer = Lexer(input: input)
    
    do {
        let tokens = try lexer.lex()
        print("\(#function): output token is \(tokens)")
        
        let parser = Parser(tokens: tokens)
        let result = try parser.parse()
        
        print("\(#function): parser output \(result)")
    } catch Lexer.Error.invalidCharacter(let character) {
        print("\(#function): Input contained an invalid character: \(character)")
    } catch Parser.Error.unexpectedEndOfInput {
        print("\(#function): Unexpected end of input during parsing")
    } catch Parser.Error.invalidToken(let token) {
        print("\(#function): Invalid token during parsing: \(token)")
    } catch {
        print("\(#function): evaluate failed with error - \(error)")
    }
}

evaluate("1 + 2 2 - 3")
