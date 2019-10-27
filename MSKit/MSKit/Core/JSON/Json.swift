//
//  Json.swift
//  MSKit
//
//  Created by Marc Zhao on 2019/10/27.
//  Copyright © 2019 Marc Zhao. All rights reserved.
//


import Foundation

class CharacterArray{
    var ca : [Character]!
}

func characterArray(_ x : String) -> CharacterArray{
    let ca = CharacterArray()
    ca.ca = Array(x)
    return ca
}
func charToDouble(_ c : Character) -> Double{
    return Double(c.unicodeScalars.map{$0.value}.reduce(0, +))
}
public class ElementArrayReference{
    public var array : [Element]!
}
public class ElementArrayReferenceReferenceClass{
    public var ref : ElementArrayReference!
}
func ElementArrayReferenceCreateFunction() -> ElementArrayReferenceReferenceClass{
    var returnReference = ElementArrayReferenceReferenceClass()
    returnReference.ref = ElementArrayReference()
    return returnReference
}
public class ElementReferenceClass{
    public var ref : Element!
}
func ElementCreateFunction() -> ElementReferenceClass{
    var returnReference = ElementReferenceClass()
    returnReference.ref = Element()
    return returnReference
}
public class ElementReference{
    public var element : Element!
}
public class ElementReferenceReferenceClass{
    public var ref : ElementReference!
}
func ElementReferenceCreateFunction() -> ElementReferenceReferenceClass{
    var returnReference = ElementReferenceReferenceClass()
    returnReference.ref = ElementReference()
    return returnReference
}
public class ElementType{
    public var name : [Character]!
}
public class ElementTypeReferenceClass{
    public var ref : ElementType!
}
func ElementTypeCreateFunction() -> ElementTypeReferenceClass{
    var returnReference = ElementTypeReferenceClass()
    returnReference.ref = ElementType()
    return returnReference
}
public class Token{
    public var type : TokenType!
    public var value : [Character]!
}
public class TokenReferenceClass{
    public var ref : Token!
}
func TokenCreateFunction() -> TokenReferenceClass{
    var returnReference = TokenReferenceClass()
    returnReference.ref = Token()
    return returnReference
}
public class TokenReference{
    public var token : Token!
}
public class TokenReferenceReferenceClass{
    public var ref : TokenReference!
}
func TokenReferenceCreateFunction() -> TokenReferenceReferenceClass{
    var returnReference = TokenReferenceReferenceClass()
    returnReference.ref = TokenReference()
    return returnReference
}
public class TokenType{
    public var name : [Character]!
}
public class TokenTypeReferenceClass{
    public var ref : TokenType!
}
func TokenTypeCreateFunction() -> TokenTypeReferenceClass{
    var returnReference = TokenTypeReferenceClass()
    returnReference.ref = TokenType()
    return returnReference
}
public class TokenArrayReference{
    public var array : [Token]!
}
public class TokenArrayReferenceReferenceClass{
    public var ref : TokenArrayReference!
}
func TokenArrayReferenceCreateFunction() -> TokenArrayReferenceReferenceClass{
    var returnReference = TokenArrayReferenceReferenceClass()
    returnReference.ref = TokenArrayReference()
    return returnReference
}
public class StringElementMap{
    public var stringListRef : StringArrayReference!
    public var elementListRef : ElementArrayReference!
}
public class StringElementMapReferenceClass{
    public var ref : StringElementMap!
}
func StringElementMapCreateFunction() -> StringElementMapReferenceClass{
    var returnReference = StringElementMapReferenceClass()
    returnReference.ref = StringElementMap()
    return returnReference
}
public class Example{
    public var a : [Character]!
    public var b : [Double]!
    public var x : X!
}
public class ExampleReferenceClass{
    public var ref : Example!
}
func ExampleCreateFunction() -> ExampleReferenceClass{
    var returnReference = ExampleReferenceClass()
    returnReference.ref = Example()
    return returnReference
}
public class X{
    public var x1 : [Character]!
    public var x1IsNull : Bool!
    public var x2 : Bool!
    public var x3 : Bool!
}
public class XReferenceClass{
    public var ref : X!
}
func XCreateFunction() -> XReferenceClass{
    var returnReference = XReferenceClass()
    returnReference.ref = X()
    return returnReference
}
public class BooleanArrayReference{
    public var booleanArray : [Bool]!
}
public class BooleanArrayReferenceReferenceClass{
    public var ref : BooleanArrayReference!
}
func BooleanArrayReferenceCreateFunction() -> BooleanArrayReferenceReferenceClass{
    var returnReference = BooleanArrayReferenceReferenceClass()
    returnReference.ref = BooleanArrayReference()
    return returnReference
}
public class BooleanReference{
    public var booleanValue : Bool!
}
public class BooleanReferenceReferenceClass{
    public var ref : BooleanReference!
}
func BooleanReferenceCreateFunction() -> BooleanReferenceReferenceClass{
    var returnReference = BooleanReferenceReferenceClass()
    returnReference.ref = BooleanReference()
    return returnReference
}
public class CharacterReference{
    public var characterValue : Character!
}
public class CharacterReferenceReferenceClass{
    public var ref : CharacterReference!
}
func CharacterReferenceCreateFunction() -> CharacterReferenceReferenceClass{
    var returnReference = CharacterReferenceReferenceClass()
    returnReference.ref = CharacterReference()
    return returnReference
}
public class NumberArrayReference{
    public var numberArray : [Double]!
}
public class NumberArrayReferenceReferenceClass{
    public var ref : NumberArrayReference!
}
func NumberArrayReferenceCreateFunction() -> NumberArrayReferenceReferenceClass{
    var returnReference = NumberArrayReferenceReferenceClass()
    returnReference.ref = NumberArrayReference()
    return returnReference
}
public class NumberReference{
    public var numberValue : Double!
}
public class NumberReferenceReferenceClass{
    public var ref : NumberReference!
}
func NumberReferenceCreateFunction() -> NumberReferenceReferenceClass{
    var returnReference = NumberReferenceReferenceClass()
    returnReference.ref = NumberReference()
    return returnReference
}
public class StringArrayReference{
    public var stringArray : [StringReference]!
}
public class StringArrayReferenceReferenceClass{
    public var ref : StringArrayReference!
}
func StringArrayReferenceCreateFunction() -> StringArrayReferenceReferenceClass{
    var returnReference = StringArrayReferenceReferenceClass()
    returnReference.ref = StringArrayReference()
    return returnReference
}
public class StringReference{
    public var stringx : [Character]!
}
public class StringReferenceReferenceClass{
    public var ref : StringReference!
}
func StringReferenceCreateFunction() -> StringReferenceReferenceClass{
    var returnReference = StringReferenceReferenceClass()
    returnReference.ref = StringReference()
    return returnReference
}
func IsValidJSON(_ json : inout [Character], _ errorMessage : inout StringArrayReference) -> Bool{
    var success : Bool
    var elementReference : ElementReference

    elementReference = ElementReference()

    success = ReadJSON(&json, &elementReference, &errorMessage)

    if(success){
        DeleteElement(&elementReference.element)
    }

    return success
}


func JSONTokenize(_ stringx : inout [Character], _ tokenArrayReference : inout TokenArrayReference, _ errorMessages : inout StringArrayReference) -> Bool{
    var count : NumberReference
    var success : Bool

    count = CreateNumberReference(0.0).ref
    success = JSONTokenizeWithCountOption(&stringx, &tokenArrayReference, &count, false, &errorMessages)

    if(success){
        tokenArrayReference.array = Array(repeating:Token(), count: Int(count.numberValue))
        JSONTokenizeWithCountOption(&stringx, &tokenArrayReference, &count, true, &errorMessages)
    }

    return success
}


func JSONTokenizeWithCountOption(_ json : inout [Character], _ tokenArrayReference : inout TokenArrayReference, _ countReference : inout NumberReference, _ add : Bool, _ errorMessages : inout StringArrayReference) -> Bool{
    var add = add;
    var tokens : [Token]
    var i, t : Double
    var c : Character
    var numberToken : Token
    var str : [Character]
    var stringReference : StringReference
    var tokenReference : TokenReference
    var stringLength : NumberReference
    var success : Bool

    success = true

    tokenReference = TokenReference()
    countReference.numberValue = 0.0

    if(add){
        tokens = tokenArrayReference.array
    }else{
        tokens = Array(repeating:Token(), count: Int(0))
    }
    stringLength = NumberReference()
    t = 0.0

    i = 0.0
    while(i < Double(json.count) && success){
        c = json[Int(i)]

        if(c == "{"){
            if(add){
                tokens[Int(t)] = CreateToken(&GetTokenType(&characterArray("openCurly").ca).ref).ref
                t = t + 1.0
            }else{
                countReference.numberValue = countReference.numberValue + 1.0
            }
            i = i + 1.0
        }else if(c == "}"){
            if(add){
                tokens[Int(t)] = CreateToken(&GetTokenType(&characterArray("closeCurly").ca).ref).ref
                t = t + 1.0
            }else{
                countReference.numberValue = countReference.numberValue + 1.0
            }
            i = i + 1.0
        }else if(c == "["){
            if(add){
                tokens[Int(t)] = CreateToken(&GetTokenType(&characterArray("openSquare").ca).ref).ref
                t = t + 1.0
            }else{
                countReference.numberValue = countReference.numberValue + 1.0
            }
            i = i + 1.0
        }else if(c == "]"){
            if(add){
                tokens[Int(t)] = CreateToken(&GetTokenType(&characterArray("closeSquare").ca).ref).ref
                t = t + 1.0
            }else{
                countReference.numberValue = countReference.numberValue + 1.0
            }
            i = i + 1.0
        }else if(c == ":"){
            if(add){
                tokens[Int(t)] = CreateToken(&GetTokenType(&characterArray("colon").ca).ref).ref
                t = t + 1.0
            }else{
                countReference.numberValue = countReference.numberValue + 1.0
            }
            i = i + 1.0
        }else if(c == ","){
            if(add){
                tokens[Int(t)] = CreateToken(&GetTokenType(&characterArray("comma").ca).ref).ref
                t = t + 1.0
            }else{
                countReference.numberValue = countReference.numberValue + 1.0
            }
            i = i + 1.0
        }else if(c == "f"){
            success = GetJSONPrimitiveName(&json, i, &errorMessages, &characterArray("false").ca, &tokenReference)
            if(success){
                if(add){
                    tokens[Int(t)] = tokenReference.token
                    t = t + 1.0
                }else{
                    countReference.numberValue = countReference.numberValue + 1.0
                }
                i = i + Double(characterArray("false").ca.count)
            }
        }else if(c == "t"){
            success = GetJSONPrimitiveName(&json, i, &errorMessages, &characterArray("true").ca, &tokenReference)
            if(success){
                if(add){
                    tokens[Int(t)] = tokenReference.token
                    t = t + 1.0
                }else{
                    countReference.numberValue = countReference.numberValue + 1.0
                }
                i = i + Double(characterArray("true").ca.count)
            }
        }else if(c == "n"){
            success = GetJSONPrimitiveName(&json, i, &errorMessages, &characterArray("null").ca, &tokenReference)
            if(success){
                if(add){
                    tokens[Int(t)] = tokenReference.token
                    t = t + 1.0
                }else{
                    countReference.numberValue = countReference.numberValue + 1.0
                }
                i = i + Double(characterArray("null").ca.count)
            }
        }else if(c == " " || c == "\n" || c == "\t" || c == "\r"){
            /* Skip.*/
            i = i + 1.0
        }else if(c == "\""){
            success = GetJSONString(&json, i, &tokenReference, &stringLength, &errorMessages)
            if(success){
                i = i + stringLength.numberValue
                if(add){
                    tokens[Int(t)] = tokenReference.token
                    t = t + 1.0
                }else{
                    countReference.numberValue = countReference.numberValue + 1.0
                }
            }
        }else if(IsJSONNumberCharacter(c)){
            success = GetJSONNumberToken(&json, i, &tokenReference, &errorMessages)
            if(success){
                numberToken = tokenReference.token
                i = i + Double(numberToken.value.count)
                if(add){
                    tokens[Int(t)] = numberToken
                    t = t + 1.0
                }else{
                    countReference.numberValue = countReference.numberValue + 1.0
                }
            }
        }else{
            str = strConcatenateCharacter(&characterArray("Invalid start of Token: ").ca, c)
            stringReference = CreateStringReference(&str).ref
            AddStringRef(&errorMessages, &stringReference)
            i = i + 1.0
            success = false
        }
    }

    if(success){
        if(add){
            tokens[Int(t)] = CreateToken(&GetTokenType(&characterArray("end").ca).ref).ref
            t = t + 1.0
        }else{
            countReference.numberValue = countReference.numberValue + 1.0
        }
        tokenArrayReference.array = tokens
    }

    return success
}


func GetJSONNumberToken(_ json : inout [Character], _ start : Double, _ tokenReference : inout TokenReference, _ errorMessages : inout StringArrayReference) -> Bool{
    var start = start;
    var c : Character
    var end, i : Double
    var done, success : Bool
    var numberString : [Character]

    end = Double(json.count)
    done = false

    i = start
    while(i < Double(json.count) && !done){
        c = json[Int(i)]
        if(!IsJSONNumberCharacter(c)){
            done = true
            end = i
        }
        i = i + 1.0
    }

    numberString = strSubstring(&json, start, end)

    success = IsValidJSONNumber(&numberString, &errorMessages)

    tokenReference.token = CreateNumberToken(&numberString).ref

    return success
}


func IsValidJSONNumber(_ n : inout [Character], _ errorMessages : inout StringArrayReference) -> Bool{
    var success : Bool
    var i : Double

    i = 0.0

    /* JSON allows an optional negative sign.*/
    if(n[Int(i)] == "-"){
        i = i + 1.0
    }

    if(i < Double(n.count)){
        success = IsValidJSONNumberAfterSign(&n, i, &errorMessages)
    }else{
        success = false
        AddStringRef(&errorMessages, &CreateStringReference(&characterArray("Number must contain at least one digit.").ca).ref)
    }

    return success
}


func IsValidJSONNumberAfterSign(_ n : inout [Character], _ i : Double, _ errorMessages : inout StringArrayReference) -> Bool{
    var i = i;
    var success : Bool

    if(charIsNumber(n[Int(i)])){
        /* 0 first means only 0.*/
        if(n[Int(i)] == "0"){
            i = i + 1.0
        }else{
            /* 1-9 first, read following digits.*/
            i = IsValidJSONNumberAdvancePastDigits(&n, i)
        }

        if(i < Double(n.count)){
            success = IsValidJSONNumberFromDotOrExponent(&n, i, &errorMessages)
        }else{
            /* If integer, we are done now.*/
            success = true
        }
    }else{
        success = false
        AddStringRef(&errorMessages, &CreateStringReference(&characterArray("A number must start with 0-9 (after the optional sign).").ca).ref)
    }

    return success
}


func IsValidJSONNumberAdvancePastDigits(_ n : inout [Character], _ i : Double) -> Double{
    var i = i;
    var done : Bool

    i = i + 1.0
    done = false
    while(i < Double(n.count) && !done){
        if(charIsNumber(n[Int(i)])){
            i = i + 1.0
        }else{
            done = true
        }
    }

    return i
}


func IsValidJSONNumberFromDotOrExponent(_ n : inout [Character], _ i : Double, _ errorMessages : inout StringArrayReference) -> Bool{
    var i = i;
    var wasDotAndOrE, success : Bool

    wasDotAndOrE = false
    success = true

    if(n[Int(i)] == "."){
        i = i + 1.0
        wasDotAndOrE = true

        if(i < Double(n.count)){
            if(charIsNumber(n[Int(i)])){
                /* Read digits following decimal point.*/
                i = IsValidJSONNumberAdvancePastDigits(&n, i)

                if(i == Double(n.count)){
                    /* If non-scientific decimal number, we are done.*/
                    success = true
                }
            }else{
                success = false
                AddStringRef(&errorMessages, &CreateStringReference(&characterArray("There must be numbers after the decimal point.").ca).ref)
            }
        }else{
            success = false
            AddStringRef(&errorMessages, &CreateStringReference(&characterArray("There must be numbers after the decimal point.").ca).ref)
        }
    }

    if(i < Double(n.count) && success){
        if(n[Int(i)] == "e" || n[Int(i)] == "E"){
            wasDotAndOrE = true
            success = IsValidJSONNumberFromExponent(&n, i, &errorMessages)
        }else{
            success = false
            AddStringRef(&errorMessages, &CreateStringReference(&characterArray("Expected e or E.").ca).ref)
        }
    }else if(i == Double(n.count) && success){
        /* If number with decimal point.*/
        success = true
    }else{
        success = false
        AddStringRef(&errorMessages, &CreateStringReference(&characterArray("There must be numbers after the decimal point.").ca).ref)
    }

    if(wasDotAndOrE){
    }else{
        success = false
        AddStringRef(&errorMessages, &CreateStringReference(&characterArray("Exprected decimal point or e or E.").ca).ref)
    }

    return success
}


func IsValidJSONNumberFromExponent(_ n : inout [Character], _ i : Double, _ errorMessages : inout StringArrayReference) -> Bool{
    var i = i;
    var success : Bool

    i = i + 1.0

    if(i < Double(n.count)){
        /* The exponent sign can either + or -,*/
        if(n[Int(i)] == "+" || n[Int(i)] == "-"){
            i = i + 1.0
        }

        if(i < Double(n.count)){
            if(charIsNumber(n[Int(i)])){
                /* Read digits following decimal point.*/
                i = IsValidJSONNumberAdvancePastDigits(&n, i)

                if(i == Double(n.count)){
                    /* We found scientific number.*/
                    success = true
                }else{
                    success = false
                    AddStringRef(&errorMessages, &CreateStringReference(&characterArray("There was characters following the exponent.").ca).ref)
                }
            }else{
                success = false
                AddStringRef(&errorMessages, &CreateStringReference(&characterArray("There must be a digit following the optional exponent sign.").ca).ref)
            }
        }else{
            success = false
            AddStringRef(&errorMessages, &CreateStringReference(&characterArray("There must be a digit following optional the exponent sign.").ca).ref)
        }
    }else{
        success = false
        AddStringRef(&errorMessages, &CreateStringReference(&characterArray("There must be a sign or a digit following e or E.").ca).ref)
    }

    return success
}


func IsJSONNumberCharacter(_ c : Character) -> Bool{
    var c = c;
    var numericCharacters : [Character]
    var found : Bool
    var i : Double

    numericCharacters = characterArray("0123456789.-+eE").ca

    found = false

    i = 0.0
    while(i < Double(numericCharacters.count)){
        if(numericCharacters[Int(i)] == c){
            found = true
        }
        i = i + 1.0
    }

    return found
}


func GetJSONPrimitiveName(_ stringx : inout [Character], _ start : Double, _ errorMessages : inout StringArrayReference, _ primitive : inout [Character], _ tokenReference : inout TokenReference) -> Bool{
    var start = start;
    var c, p : Character
    var token : Token
    var done, success : Bool
    var i : Double
    var str : [Character]

    token = Token()
    done = false
    success = true

    i = start
    while(i < Double(stringx.count) && ((i - start) < Double(primitive.count)) && !done){
        c = stringx[Int(i)]
        p = primitive[Int(i - start)]
        if(c == p){
            /* OK*/
            if((i + 1.0 - start) == Double(primitive.count)){
                done = true
            }
        }else{
            str = characterArray("").ca
            str = strConcatenateString(&str, &characterArray("Primitive invalid: ").ca)
            str = strAppendCharacter(&str, c)
            str = strAppendString(&str, &characterArray(" vs ").ca)
            str = strAppendCharacter(&str, p)

            AddStringRef(&errorMessages, &CreateStringReference(&str).ref)
            done = true
            success = false
        }
        i = i + 1.0
    }

    if(done){
        if(StringsEqual(&primitive, &characterArray("false").ca)){
            token = CreateToken(&GetTokenType(&characterArray("falseValue").ca).ref).ref
        }
        if(StringsEqual(&primitive, &characterArray("true").ca)){
            token = CreateToken(&GetTokenType(&characterArray("trueValue").ca).ref).ref
        }
        if(StringsEqual(&primitive, &characterArray("null").ca)){
            token = CreateToken(&GetTokenType(&characterArray("nullValue").ca).ref).ref
        }
    }else{
        AddStringRef(&errorMessages, &CreateStringReference(&characterArray("Primitive invalid").ca).ref)
        success = false
    }

    tokenReference.token = token

    return success
}


func GetJSONString(_ json : inout [Character], _ start : Double, _ tokenReference : inout TokenReference, _ stringLengthReference : inout NumberReference, _ errorMessages : inout StringArrayReference) -> Bool{
    var start = start;
    var success, done : Bool
    var stringx, hex : [Character]
    var characterCount, hexReference : NumberReference
    var i, l, c : Double
    var errorMessage : StringReference

    characterCount = CreateNumberReference(0.0).ref
    hex = CreateString(4.0, "0")
    hexReference = NumberReference()
    errorMessage = StringReference()

    success = IsValidJSONStringInJSON(&json, start, &characterCount, &stringLengthReference, &errorMessages)

    if(success){
        l = characterCount.numberValue
        stringx = Array(repeating:Character(" "), count: Int(l))

        c = 0.0
        stringx[Int(c)] = "\""
        c = c + 1.0

        done = false
        i = start + 1.0
        while(!done){
            if(json[Int(i)] == "\\"){
                i = i + 1.0
                if(json[Int(i)] == "\"" || json[Int(i)] == "\\" || json[Int(i)] == "/"){
                    stringx[Int(c)] = json[Int(i)]
                    c = c + 1.0
                }else if(json[Int(i)] == "b"){
                    stringx[Int(c)] = Character(Unicode.Scalar(Int(8.0))!)
                    c = c + 1.0
                }else if(json[Int(i)] == "f"){
                    stringx[Int(c)] = Character(Unicode.Scalar(Int(12.0))!)
                    c = c + 1.0
                }else if(json[Int(i)] == "n"){
                    stringx[Int(c)] = Character(Unicode.Scalar(Int(10.0))!)
                    c = c + 1.0
                }else if(json[Int(i)] == "r"){
                    stringx[Int(c)] = Character(Unicode.Scalar(Int(13.0))!)
                    c = c + 1.0
                }else if(json[Int(i)] == "t"){
                    stringx[Int(c)] = Character(Unicode.Scalar(Int(9.0))!)
                    c = c + 1.0
                }else if(json[Int(i)] == "u"){
                    i = i + 1.0
                    hex[Int(0)] = charToUpperCase(json[Int(i + 0.0)])
                    hex[Int(1)] = charToUpperCase(json[Int(i + 1.0)])
                    hex[Int(2)] = charToUpperCase(json[Int(i + 2.0)])
                    hex[Int(3)] = charToUpperCase(json[Int(i + 3.0)])
                    nCreateNumberFromStringWithCheck(&hex, 16.0, &hexReference, &errorMessage)
                    stringx[Int(c)] = Character(Unicode.Scalar(Int(hexReference.numberValue))!)
                    i = i + 3.0
                    c = c + 1.0
                }
            }else if(json[Int(i)] == "\""){
                stringx[Int(c)] = json[Int(i)]
                c = c + 1.0
                done = true
            }else{
                stringx[Int(c)] = json[Int(i)]
                c = c + 1.0
            }
            i = i + 1.0
        }

        tokenReference.token = CreateStringToken(&stringx).ref
        success = true
    }else{
        AddStringRef(&errorMessages, &CreateStringReference(&characterArray("End of string was not found.").ca).ref)
        success = false
    }

    return success
}


func IsValidJSONString(_ jsonString : inout [Character], _ errorMessages : inout StringArrayReference) -> Bool{
    var valid : Bool
    var numberReference, stringLength : NumberReference

    numberReference = NumberReference()
    stringLength = NumberReference()

    valid = IsValidJSONStringInJSON(&jsonString, 0.0, &numberReference, &stringLength, &errorMessages)

    return valid
}


func IsValidJSONStringInJSON(_ json : inout [Character], _ start : Double, _ characterCount : inout NumberReference, _ stringLengthReference : inout NumberReference, _ errorMessages : inout StringArrayReference) -> Bool{
    var start = start;
    var success, done : Bool
    var i, j : Double
    var c : Character

    success = true
    done = false

    characterCount.numberValue = 1.0

    i = start + 1.0
    while(i < Double(json.count) && !done && success){
        if(!IsJSONIllegalControllCharacter(json[Int(i)])){
            if(json[Int(i)] == "\\"){
                i = i + 1.0
                if(i < Double(json.count)){
                    if(json[Int(i)] == "\"" || json[Int(i)] == "\\" || json[Int(i)] == "/" || json[Int(i)] == "b" || json[Int(i)] == "f" || json[Int(i)] == "n" || json[Int(i)] == "r" || json[Int(i)] == "t"){
                        characterCount.numberValue = characterCount.numberValue + 1.0
                    }else if(json[Int(i)] == "u"){
                        if(i + 4.0 < Double(json.count)){
                            j = 0.0
                            while(j < 4.0 && success){
                                c = json[Int(i + j + 1.0)]
                                if(nCharacterIsNumberCharacterInBase(c, 16.0) || c == "a" || c == "b" || c == "c" || c == "d" || c == "e" || c == "f"){
                                }else{
                                    success = false
                                    AddStringRef(&errorMessages, &CreateStringReference(&characterArray("\\u must be followed by four hexadecimal digits.").ca).ref)
                                }
                                j = j + 1.0
                            }
                            characterCount.numberValue = characterCount.numberValue + 1.0
                            i = i + 4.0
                        }else{
                            success = false
                            AddStringRef(&errorMessages, &CreateStringReference(&characterArray("\\u must be followed by four characters.").ca).ref)
                        }
                    }else{
                        success = false
                        AddStringRef(&errorMessages, &CreateStringReference(&characterArray("Escaped character invalid.").ca).ref)
                    }
                }else{
                    success = false
                    AddStringRef(&errorMessages, &CreateStringReference(&characterArray("There must be at least two character after string escape.").ca).ref)
                }
            }else if(json[Int(i)] == "\""){
                characterCount.numberValue = characterCount.numberValue + 1.0
                done = true
            }else{
                characterCount.numberValue = characterCount.numberValue + 1.0
            }
        }else{
            success = false
            AddStringRef(&errorMessages, &CreateStringReference(&characterArray("Unicode code points 0-31 not allowed in JSON string.").ca).ref)
        }
        i = i + 1.0
    }

    if(done){
        stringLengthReference.numberValue = i - start
    }else{
        success = false
        AddStringRef(&errorMessages, &CreateStringReference(&characterArray("String must end with \".").ca).ref)
    }

    return success
}


func IsJSONIllegalControllCharacter(_ c : Character) -> Bool{
    var c = c;
    var cnr : Double
    var isControll : Bool

    cnr = charToDouble(c)

    if(cnr >= 0.0 && cnr < 32.0){
        isControll = true
    }else{
        isControll = false
    }

    return isControll
}


func CreateToken(_ tokenType : inout TokenType) -> TokenReferenceClass{
    var token : Token
    token = Token()
    token.type = tokenType
    var returnReference = TokenReferenceClass()
    returnReference.ref = token
    return returnReference
}


func CreateStringToken(_ stringx : inout [Character]) -> TokenReferenceClass{
    var token : Token
    token = Token()
    token.type = GetTokenType(&characterArray("string").ca).ref
    token.value = stringx
    var returnReference = TokenReferenceClass()
    returnReference.ref = token
    return returnReference
}


func CreateNumberToken(_ stringx : inout [Character]) -> TokenReferenceClass{
    var token : Token
    token = Token()
    token.type = GetTokenType(&characterArray("number").ca).ref
    token.value = stringx
    var returnReference = TokenReferenceClass()
    returnReference.ref = token
    return returnReference
}


func AddElement(_ list : inout [Element], _ a : inout Element) -> [Element]{
    var newlist : [Element]
    var i : Double

    newlist = Array(repeating:Element(), count: Int(Double(list.count) + 1.0))

    i = 0.0
    while(i < Double(list.count)){
        newlist[Int(i)] = list[Int(i)]
        i = i + 1.0
    }
    newlist[Int(Double(list.count))] = a

    delete(list)

    return newlist
}


func AddElementRef(_ list : inout ElementArrayReference, _ i : inout Element) -> Void{
    list.array = AddElement(&list.array, &i)
}


func RemoveElement(_ list : inout [Element], _ n : Double) -> [Element]{
    var n = n;
    var newlist : [Element]
    var i : Double

    newlist = Array(repeating:Element(), count: Int(Double(list.count) - 1.0))

    i = 0.0
    while(i < Double(list.count)){
        if(i < n){
            newlist[Int(i)] = list[Int(i)]
        }
        if(i > n){
            newlist[Int(i - 1.0)] = list[Int(i)]
        }
        i = i + 1.0
    }

    delete(list)

    return newlist
}


func GetElementRef(_ list : inout ElementArrayReference, _ i : Double) -> ElementReferenceClass{
    var i = i;
    var returnReference = ElementReferenceClass()
    returnReference.ref = list.array[Int(i)]
    return returnReference
}


func RemoveElementRef(_ list : inout ElementArrayReference, _ i : Double) -> Void{
    var i = i;
    list.array = RemoveElement(&list.array, i)
}


func ComputeJSONStringLength(_ element : inout Element) -> Double{
    var result : Double

    result = 0.0

    if(ElementTypeEnumEquals(&element.type.name, &characterArray("object").ca)){
        result = result + ComputeJSONObjectStringLength(&element)
    }else if(ElementTypeEnumEquals(&element.type.name, &characterArray("string").ca)){
        result = JSONEscapedStringLength(&element.stringx) + 2.0
    }else if(ElementTypeEnumEquals(&element.type.name, &characterArray("array").ca)){
        result = result + ComputeJSONArrayStringLength(&element)
    }else if(ElementTypeEnumEquals(&element.type.name, &characterArray("number").ca)){
        result = result + ComputeJSONNumberStringLength(&element)
    }else if(ElementTypeEnumEquals(&element.type.name, &characterArray("nullValue").ca)){
        result = result + Double(characterArray("null").ca.count)
    }else if(ElementTypeEnumEquals(&element.type.name, &characterArray("booleanValue").ca)){
        result = result + ComputeJSONBooleanStringLength(&element)
    }

    return result
}


func ComputeJSONBooleanStringLength(_ element : inout Element) -> Double{
    var result : Double

    if(element.booleanValue){
        result = Double(characterArray("true").ca.count)
    }else{
        result = Double(characterArray("false").ca.count)
    }

    return result
}


func ComputeJSONNumberStringLength(_ element : inout Element) -> Double{
    var length : Double
    var a : [Character]

    if(abs(element.number) >= pow(10.0, 15.0) || abs(element.number) <= pow(10.0, -15.0)){
        a = nCreateStringScientificNotationDecimalFromNumber(element.number)
        length = Double(a.count)
    }else{
        a = nCreateStringDecimalFromNumber(element.number)
        length = Double(a.count)
    }

    return length
}


func ComputeJSONArrayStringLength(_ element : inout Element) -> Double{
    var arrayElement : Element
    var i : Double
    var length : Double

    length = 1.0

    i = 0.0
    while(i < Double(element.array.count)){
        arrayElement = element.array[Int(i)]

        length = length + ComputeJSONStringLength(&arrayElement)

        if(i + 1.0 != Double(element.array.count)){
            length = length + 1.0
        }
        i = i + 1.0
    }

    length = length + 1.0

    return length
}


func ComputeJSONObjectStringLength(_ element : inout Element) -> Double{
    var key : [Character]
    var i : Double
    var keys : StringArrayReference
    var objectElement : Element
    var length : Double

    length = 1.0

    keys = GetStringElementMapKeySet(&element.objectx).ref
    i = 0.0
    while(i < Double(keys.stringArray.count)){
        key = keys.stringArray[Int(i)].stringx
        objectElement = GetObjectValue(&element.objectx, &key).ref

        length = length + 1.0
        length = length + JSONEscapedStringLength(&key)
        length = length + 1.0
        length = length + 1.0

        length = length + ComputeJSONStringLength(&objectElement)

        if(i + 1.0 != Double(keys.stringArray.count)){
            length = length + 1.0
        }
        i = i + 1.0
    }

    length = length + 1.0

    return length
}


func CreateStringElement(_ stringx : inout [Character]) -> ElementReferenceClass{
    var element : Element
    element = Element()
    element.type = GetElementType(&characterArray("string").ca).ref
    element.stringx = stringx
    var returnReference = ElementReferenceClass()
    returnReference.ref = element
    return returnReference
}


func CreateBooleanElement(_ booleanValue : Bool) -> ElementReferenceClass{
    var booleanValue = booleanValue;
    var element : Element
    element = Element()
    element.type = GetElementType(&characterArray("booleanValue").ca).ref
    element.booleanValue = booleanValue
    var returnReference = ElementReferenceClass()
    returnReference.ref = element
    return returnReference
}


func CreateNullElement() -> ElementReferenceClass{
    var element : Element
    element = Element()
    element.type = GetElementType(&characterArray("nullValue").ca).ref
    var returnReference = ElementReferenceClass()
    returnReference.ref = element
    return returnReference
}


func CreateNumberElement(_ number : Double) -> ElementReferenceClass{
    var number = number;
    var element : Element
    element = Element()
    element.type = GetElementType(&characterArray("number").ca).ref
    element.number = number
    var returnReference = ElementReferenceClass()
    returnReference.ref = element
    return returnReference
}


func CreateArrayElement(_ length : Double) -> ElementReferenceClass{
    var length = length;
    var element : Element
    element = Element()
    element.type = GetElementType(&characterArray("array").ca).ref
    element.array = Array(repeating:Element(), count: Int(length))
    var returnReference = ElementReferenceClass()
    returnReference.ref = element
    return returnReference
}


func CreateObjectElement(_ length : Double) -> ElementReferenceClass{
    var length = length;
    var element : Element
    element = Element()
    element.type = GetElementType(&characterArray("object").ca).ref
    element.objectx = StringElementMap()
    element.objectx.stringListRef = CreateStringArrayReferenceLengthValue(length, &characterArray("").ca).ref
    element.objectx.elementListRef = ElementArrayReference()
    element.objectx.elementListRef.array = Array(repeating:Element(), count: Int(length))
    var returnReference = ElementReferenceClass()
    returnReference.ref = element
    return returnReference
}


func DeleteElement(_ element : inout Element) -> Void{
    if(ElementTypeEnumEquals(&element.type.name, &characterArray("object").ca)){
        DeleteObject(&element)
    }else if(ElementTypeEnumEquals(&element.type.name, &characterArray("string").ca)){
        delete(element)
    }else if(ElementTypeEnumEquals(&element.type.name, &characterArray("array").ca)){
        DeleteArray(&element)
    }else if(ElementTypeEnumEquals(&element.type.name, &characterArray("number").ca)){
        delete(element)
    }else if(ElementTypeEnumEquals(&element.type.name, &characterArray("nullValue").ca)){
        delete(element)
    }else if(ElementTypeEnumEquals(&element.type.name, &characterArray("booleanValue").ca)){
        delete(element)
    }else{
    }
}


func DeleteObject(_ element : inout Element) -> Void{
    var keys : StringArrayReference
    var i : Double
    var key : [Character]
    var objectElement : Element

    keys = GetStringElementMapKeySet(&element.objectx).ref
    i = 0.0
    while(i < Double(keys.stringArray.count)){
        key = keys.stringArray[Int(i)].stringx
        objectElement = GetObjectValue(&element.objectx, &key).ref
        DeleteElement(&objectElement)
        i = i + 1.0
    }
}


func DeleteArray(_ element : inout Element) -> Void{
    var i : Double
    var arrayElement : Element

    i = 0.0
    while(i < Double(element.array.count)){
        arrayElement = element.array[Int(i)]
        DeleteElement(&arrayElement)
        i = i + 1.0
    }
}


func WriteJSON(_ element : inout Element) -> [Character]{
    var result : [Character]
    var length : Double
    var index : NumberReference

    length = ComputeJSONStringLength(&element)
    result = Array(repeating:Character(" "), count: Int(length))
    index = CreateNumberReference(0.0).ref

    if(ElementTypeEnumEquals(&element.type.name, &characterArray("object").ca)){
        WriteObject(&element, &result, &index)
    }else if(ElementTypeEnumEquals(&element.type.name, &characterArray("string").ca)){
        WriteString(&element, &result, &index)
    }else if(ElementTypeEnumEquals(&element.type.name, &characterArray("array").ca)){
        WriteArray(&element, &result, &index)
    }else if(ElementTypeEnumEquals(&element.type.name, &characterArray("number").ca)){
        WriteNumber(&element, &result, &index)
    }else if(ElementTypeEnumEquals(&element.type.name, &characterArray("nullValue").ca)){
        strWriteStringToStingStream(&result, &index, &characterArray("null").ca)
    }else if(ElementTypeEnumEquals(&element.type.name, &characterArray("booleanValue").ca)){
        WriteBooleanValue(&element, &result, &index)
    }

    return result
}


func WriteBooleanValue(_ element : inout Element, _ result : inout [Character], _ index : inout NumberReference) -> Void{
    if(element.booleanValue){
        strWriteStringToStingStream(&result, &index, &characterArray("true").ca)
    }else{
        strWriteStringToStingStream(&result, &index, &characterArray("false").ca)
    }
}


func WriteNumber(_ element : inout Element, _ result : inout [Character], _ index : inout NumberReference) -> Void{
    var numberString : [Character]

    if(abs(element.number) >= pow(10.0, 15.0) || abs(element.number) <= pow(10.0, -15.0)){
        numberString = nCreateStringScientificNotationDecimalFromNumber(element.number)
    }else{
        numberString = nCreateStringDecimalFromNumber(element.number)
    }

    strWriteStringToStingStream(&result, &index, &numberString)
}


func WriteArray(_ element : inout Element, _ result : inout [Character], _ index : inout NumberReference) -> Void{
    var s : [Character]
    var arrayElement : Element
    var i : Double

    strWriteStringToStingStream(&result, &index, &characterArray("[").ca)

    i = 0.0
    while(i < Double(element.array.count)){
        arrayElement = element.array[Int(i)]

        s = WriteJSON(&arrayElement)
        strWriteStringToStingStream(&result, &index, &s)

        if(i + 1.0 != Double(element.array.count)){
            strWriteStringToStingStream(&result, &index, &characterArray(",").ca)
        }
        i = i + 1.0
    }

    strWriteStringToStingStream(&result, &index, &characterArray("]").ca)
}


func WriteString(_ element : inout Element, _ result : inout [Character], _ index : inout NumberReference) -> Void{
    strWriteStringToStingStream(&result, &index, &characterArray("\"").ca)
    element.stringx = JSONEscapeString(&element.stringx)
    strWriteStringToStingStream(&result, &index, &element.stringx)
    strWriteStringToStingStream(&result, &index, &characterArray("\"").ca)
}


func JSONEscapeString(_ stringx : inout [Character]) -> [Character]{
    var i, length : Double
    var index, lettersReference : NumberReference
    var ns, escaped : [Character]

    length = JSONEscapedStringLength(&stringx)

    ns = Array(repeating:Character(" "), count: Int(length))
    index = CreateNumberReference(0.0).ref
    lettersReference = CreateNumberReference(0.0).ref

    i = 0.0
    while(i < Double(stringx.count)){
        if(JSONMustBeEscaped(stringx[Int(i)], &lettersReference)){
            escaped = JSONEscapeCharacter(stringx[Int(i)])
            strWriteStringToStingStream(&ns, &index, &escaped)
        }else{
            strWriteCharacterToStingStream(&ns, &index, stringx[Int(i)])
        }
        i = i + 1.0
    }

    return ns
}


func JSONEscapedStringLength(_ stringx : inout [Character]) -> Double{
    var lettersReference : NumberReference
    var i, length : Double

    lettersReference = CreateNumberReference(0.0).ref
    length = 0.0

    i = 0.0
    while(i < Double(stringx.count)){
        if(JSONMustBeEscaped(stringx[Int(i)], &lettersReference)){
            length = length + lettersReference.numberValue
        }else{
            length = length + 1.0
        }
        i = i + 1.0
    }
    return length
}


func JSONEscapeCharacter(_ c : Character) -> [Character]{
    var c = c;
    var code : Double
    var escaped : [Character]
    var hexNumber : StringReference
    var q, rs, s, b, f, n, r, t : Double

    code = charToDouble(c)

    q = 34.0
    rs = 92.0
    s = 47.0
    b = 8.0
    f = 12.0
    n = 10.0
    r = 13.0
    t = 9.0

    hexNumber = StringReference()

    if(code == q){
        escaped = Array(repeating:Character(" "), count: Int(2))
        escaped[Int(0)] = "\\"
        escaped[Int(1)] = "\""
    }else if(code == rs){
        escaped = Array(repeating:Character(" "), count: Int(2))
        escaped[Int(0)] = "\\"
        escaped[Int(1)] = "\\"
    }else if(code == s){
        escaped = Array(repeating:Character(" "), count: Int(2))
        escaped[Int(0)] = "\\"
        escaped[Int(1)] = "/"
    }else if(code == b){
        escaped = Array(repeating:Character(" "), count: Int(2))
        escaped[Int(0)] = "\\"
        escaped[Int(1)] = "b"
    }else if(code == f){
        escaped = Array(repeating:Character(" "), count: Int(2))
        escaped[Int(0)] = "\\"
        escaped[Int(1)] = "f"
    }else if(code == n){
        escaped = Array(repeating:Character(" "), count: Int(2))
        escaped[Int(0)] = "\\"
        escaped[Int(1)] = "n"
    }else if(code == r){
        escaped = Array(repeating:Character(" "), count: Int(2))
        escaped[Int(0)] = "\\"
        escaped[Int(1)] = "r"
    }else if(code == t){
        escaped = Array(repeating:Character(" "), count: Int(2))
        escaped[Int(0)] = "\\"
        escaped[Int(1)] = "t"
    }else if(code >= 0.0 && code <= 31.0){
        escaped = Array(repeating:Character(" "), count: Int(6))
        escaped[Int(0)] = "\\"
        escaped[Int(1)] = "u"
        escaped[Int(2)] = "0"
        escaped[Int(3)] = "0"

        nCreateStringFromNumberWithCheck(code, 16.0, &hexNumber)

        if(Double(hexNumber.stringx.count) == 1.0){
            escaped[Int(4)] = "0"
            escaped[Int(5)] = hexNumber.stringx[Int(0)]
        }else if(Double(hexNumber.stringx.count) == 2.0){
            escaped[Int(4)] = hexNumber.stringx[Int(0)]
            escaped[Int(5)] = hexNumber.stringx[Int(1)]
        }
    }else{
        escaped = Array(repeating:Character(" "), count: Int(1))
        escaped[Int(0)] = c
    }

    return escaped
}


func JSONMustBeEscaped(_ c : Character, _ letters : inout NumberReference) -> Bool{
    var c = c;
    var code : Double
    var mustBeEscaped : Bool
    var q, rs, s, b, f, n, r, t : Double

    code = charToDouble(c)
    mustBeEscaped = false

    q = 34.0
    rs = 92.0
    s = 47.0
    b = 8.0
    f = 12.0
    n = 10.0
    r = 13.0
    t = 9.0

    if(code == q || code == rs || code == s || code == b || code == f || code == n || code == r || code == t){
        mustBeEscaped = true
        letters.numberValue = 2.0
    }else if(code >= 0.0 && code <= 31.0){
        mustBeEscaped = true
        letters.numberValue = 6.0
    }else if(code >= pow(2.0, 16.0)){
        mustBeEscaped = true
        letters.numberValue = 6.0
    }

    return mustBeEscaped
}


func WriteObject(_ element : inout Element, _ result : inout [Character], _ index : inout NumberReference) -> Void{
    var s, key : [Character]
    var i : Double
    var keys : StringArrayReference
    var objectElement : Element

    strWriteStringToStingStream(&result, &index, &characterArray("{").ca)

    keys = GetStringElementMapKeySet(&element.objectx).ref
    i = 0.0
    while(i < Double(keys.stringArray.count)){
        key = keys.stringArray[Int(i)].stringx
        key = JSONEscapeString(&key)
        objectElement = GetObjectValue(&element.objectx, &key).ref

        strWriteStringToStingStream(&result, &index, &characterArray("\"").ca)
        strWriteStringToStingStream(&result, &index, &key)
        strWriteStringToStingStream(&result, &index, &characterArray("\"").ca)
        strWriteStringToStingStream(&result, &index, &characterArray(":").ca)

        s = WriteJSON(&objectElement)
        strWriteStringToStingStream(&result, &index, &s)

        if(i + 1.0 != Double(keys.stringArray.count)){
            strWriteStringToStingStream(&result, &index, &characterArray(",").ca)
        }
        i = i + 1.0
    }

    strWriteStringToStingStream(&result, &index, &characterArray("}").ca)
}


func ReadJSON(_ stringx : inout [Character], _ elementReference : inout ElementReference, _ errorMessages : inout StringArrayReference) -> Bool{
    var tokenArrayReference : TokenArrayReference
    var success : Bool

    /* Tokenize.*/
    tokenArrayReference = TokenArrayReference()
    success = JSONTokenize(&stringx, &tokenArrayReference, &errorMessages)

    if(success){
        /* Parse.*/
        success = GetJSONValue(&tokenArrayReference.array, &elementReference, &errorMessages)
    }

    return success
}


func GetJSONValue(_ tokens : inout [Token], _ elementReference : inout ElementReference, _ errorMessages : inout StringArrayReference) -> Bool{
    var counts : NumberArrayReference
    var success : Bool
    var i : NumberReference

    i = CreateNumberReference(0.0).ref
    counts = CreateNumberArrayReferenceLengthValue(Double(tokens.count), 0.0).ref

    success = GetJSONValueWithCheckOption(&tokens, &i, 0.0, &elementReference, false, &counts, &errorMessages)

    if(success){
        i.numberValue = 0.0
        GetJSONValueWithCheckOption(&tokens, &i, 0.0, &elementReference, true, &counts, &errorMessages)
    }

    return success
}


func GetJSONValueWithCheckOption(_ tokens : inout [Token], _ i : inout NumberReference, _ depth : Double, _ elementReference : inout ElementReference, _ add : Bool, _ counts : inout NumberArrayReference, _ errorMessages : inout StringArrayReference) -> Bool{
    var depth = depth;
    var add = add;
    var token : Token
    var str, substr : [Character]
    var stringToDecimalResult : Double
    var success : Bool

    success = true
    token = tokens[Int(i.numberValue)]

    if(TokenTypeEnumEquals(&token.type.name, &characterArray("openCurly").ca)){
        success = GetJSONObject(&tokens, &i, depth + 1.0, &elementReference, add, &counts, &errorMessages)
    }else if(TokenTypeEnumEquals(&token.type.name, &characterArray("openSquare").ca)){
        success = GetJSONArray(&tokens, &i, depth + 1.0, &elementReference, add, &counts, &errorMessages)
    }else if(TokenTypeEnumEquals(&token.type.name, &characterArray("trueValue").ca)){
        if(add){
            elementReference.element = CreateBooleanElement(true).ref
        }
        i.numberValue = i.numberValue + 1.0
    }else if(TokenTypeEnumEquals(&token.type.name, &characterArray("falseValue").ca)){
        if(add){
            elementReference.element = CreateBooleanElement(false).ref
        }
        i.numberValue = i.numberValue + 1.0
    }else if(TokenTypeEnumEquals(&token.type.name, &characterArray("nullValue").ca)){
        if(add){
            elementReference.element = CreateNullElement().ref
        }
        i.numberValue = i.numberValue + 1.0
    }else if(TokenTypeEnumEquals(&token.type.name, &characterArray("number").ca)){
        if(add){
            stringToDecimalResult = nCreateNumberFromDecimalString(&token.value)
            elementReference.element = CreateNumberElement(stringToDecimalResult).ref
        }
        i.numberValue = i.numberValue + 1.0
    }else if(TokenTypeEnumEquals(&token.type.name, &characterArray("string").ca)){
        if(add){
            substr = strSubstring(&token.value, 1.0, Double(token.value.count) - 1.0)
            elementReference.element = CreateStringElement(&substr).ref
        }
        i.numberValue = i.numberValue + 1.0
    }else{
        str = characterArray("").ca
        str = strConcatenateString(&str, &characterArray("Invalid token first in value: ").ca)
        str = strAppendString(&str, &token.type.name)
        AddStringRef(&errorMessages, &CreateStringReference(&str).ref)
        success = false
    }

    if(success && depth == 0.0){
        if(TokenTypeEnumEquals(&tokens[Int(i.numberValue)].type.name, &characterArray("end").ca)){
        }else{
            AddStringRef(&errorMessages, &CreateStringReference(&characterArray("The outer value cannot have any tokens following it.").ca).ref)
            success = false
        }
    }

    return success
}


func GetJSONObject(_ tokens : inout [Token], _ i : inout NumberReference, _ depth : Double, _ elementReference : inout ElementReference, _ add : Bool, _ counts : inout NumberArrayReference, _ errorMessages : inout StringArrayReference) -> Bool{
    var depth = depth;
    var add = add;
    var element, value : Element
    var done, success : Bool
    var key, colon, comma, closeCurly : Token
    var keystring, str : [Character]
    var valueReference : ElementReference
    var countIndex, index : Double

    countIndex = i.numberValue
    if(add){
        element = CreateObjectElement(counts.numberArray[Int(countIndex)]).ref
    }else{
        element = Element()
    }
    valueReference = ElementReference()
    success = true
    i.numberValue = i.numberValue + 1.0
    index = 0.0

    if(!TokenTypeEnumEquals(&tokens[Int(i.numberValue)].type.name, &characterArray("closeCurly").ca)){
        done = false

        while(!done && success){
            key = tokens[Int(i.numberValue)]

            if(TokenTypeEnumEquals(&key.type.name, &characterArray("string").ca)){
                i.numberValue = i.numberValue + 1.0
                colon = tokens[Int(i.numberValue)]
                if(TokenTypeEnumEquals(&colon.type.name, &characterArray("colon").ca)){
                    i.numberValue = i.numberValue + 1.0
                    success = GetJSONValueWithCheckOption(&tokens, &i, depth, &valueReference, add, &counts, &errorMessages)

                    if(success){
                        keystring = strSubstring(&key.value, 1.0, Double(key.value.count) - 1.0)
                        if(add){
                            value = valueReference.element
                            SetStringElementMap(&element.objectx, index, &keystring, &value)
                        }

                        index = index + 1.0

                        comma = tokens[Int(i.numberValue)]
                        if(TokenTypeEnumEquals(&comma.type.name, &characterArray("comma").ca)){
                            /* OK*/
                            i.numberValue = i.numberValue + 1.0
                        }else{
                            done = true
                        }
                    }
                }else{
                    str = characterArray("").ca
                    str = strConcatenateString(&str, &characterArray("Expected colon after key in object: ").ca)
                    str = strAppendString(&str, &colon.type.name)
                    AddStringRef(&errorMessages, &CreateStringReference(&str).ref)

                    success = false
                    done = true
                }
            }else{
                AddStringRef(&errorMessages, &CreateStringReference(&characterArray("Expected string as key in object.").ca).ref)

                done = true
                success = false
            }
        }
    }

    if(success){
        closeCurly = tokens[Int(i.numberValue)]

        if(TokenTypeEnumEquals(&closeCurly.type.name, &characterArray("closeCurly").ca)){
            /* OK*/
            elementReference.element = element
            i.numberValue = i.numberValue + 1.0
        }else{
            AddStringRef(&errorMessages, &CreateStringReference(&characterArray("Expected close curly brackets at end of object value.").ca).ref)
            success = false
        }
    }

    counts.numberArray[Int(countIndex)] = index

    return success
}


func GetJSONArray(_ tokens : inout [Token], _ i : inout NumberReference, _ depth : Double, _ elementReference : inout ElementReference, _ add : Bool, _ counts : inout NumberArrayReference, _ errorMessages : inout StringArrayReference) -> Bool{
    var depth = depth;
    var add = add;
    var element, value : Element
    var nextToken, comma : Token
    var done, success : Bool
    var valueReference : ElementReference
    var countIndex, index : Double

    index = 0.0
    countIndex = i.numberValue
    i.numberValue = i.numberValue + 1.0

    if(add){
        element = CreateArrayElement(counts.numberArray[Int(countIndex)]).ref
    }else{
        element = Element()
    }
    valueReference = ElementReference()
    success = true

    nextToken = tokens[Int(i.numberValue)]

    if(!TokenTypeEnumEquals(&nextToken.type.name, &characterArray("closeSquare").ca)){
        done = false
        while(!done && success){
            success = GetJSONValueWithCheckOption(&tokens, &i, depth, &valueReference, add, &counts, &errorMessages)

            if(success){
                if(add){
                    value = valueReference.element
                    element.array[Int(index)] = value
                }

                index = index + 1.0

                comma = tokens[Int(i.numberValue)]

                if(TokenTypeEnumEquals(&comma.type.name, &characterArray("comma").ca)){
                    /* OK*/
                    i.numberValue = i.numberValue + 1.0
                }else{
                    done = true
                }
            }
        }
    }

    nextToken = tokens[Int(i.numberValue)]
    if(TokenTypeEnumEquals(&nextToken.type.name, &characterArray("closeSquare").ca)){
        /* OK*/
        i.numberValue = i.numberValue + 1.0
        elementReference.element = element
    }else{
        AddStringRef(&errorMessages, &CreateStringReference(&characterArray("Expected close square bracket at end of array.").ca).ref)
        success = false
    }

    elementReference.element = element
    counts.numberArray[Int(countIndex)] = index

    return success
}


func GetStringElementMapKeySet(_ stringElementMap : inout StringElementMap) -> StringArrayReferenceReferenceClass{
    var returnReference = StringArrayReferenceReferenceClass()
    returnReference.ref = stringElementMap.stringListRef
    return returnReference
}


func GetObjectValue(_ stringElementMap : inout StringElementMap, _ key : inout [Character]) -> ElementReferenceClass{
    var result : Element
    var i : Double

    result = Element()

    i = 0.0
    while(i < GetStringElementMapNumberOfKeys(&stringElementMap)){
        if(StringsEqual(&stringElementMap.stringListRef.stringArray[Int(i)].stringx, &key)){
            result = stringElementMap.elementListRef.array[Int(i)]
        }
        i = i + 1.0
    }

    var returnReference = ElementReferenceClass()
    returnReference.ref = result
    return returnReference
}


func GetObjectValueWithCheck(_ stringElementMap : inout StringElementMap, _ key : inout [Character], _ foundReference : inout BooleanReference) -> ElementReferenceClass{
    var result : Element
    var i : Double

    result = Element()

    foundReference.booleanValue = false
    i = 0.0
    while(i < GetStringElementMapNumberOfKeys(&stringElementMap)){
        if(StringsEqual(&stringElementMap.stringListRef.stringArray[Int(i)].stringx, &key)){
            result = stringElementMap.elementListRef.array[Int(i)]
            foundReference.booleanValue = true
        }
        i = i + 1.0
    }

    var returnReference = ElementReferenceClass()
    returnReference.ref = result
    return returnReference
}


func PutStringElementMap(_ stringElementMap : inout StringElementMap, _ keystring : inout [Character], _ value : inout Element) -> Void{
    AddStringRef(&stringElementMap.stringListRef, &CreateStringReference(&keystring).ref)
    AddElementRef(&stringElementMap.elementListRef, &value)
}


func SetStringElementMap(_ stringElementMap : inout StringElementMap, _ index : Double, _ keystring : inout [Character], _ value : inout Element) -> Void{
    var index = index;
    stringElementMap.stringListRef.stringArray[Int(index)].stringx = keystring
    stringElementMap.elementListRef.array[Int(index)] = value
}


func GetStringElementMapNumberOfKeys(_ stringElementMap : inout StringElementMap) -> Double{
    return Double(stringElementMap.stringListRef.stringArray.count)
}


func GetTokenType(_ elementTypeName : inout [Character]) -> TokenTypeReferenceClass{
    var et : TokenType

    et = TokenType()
    et.name = elementTypeName

    var returnReference = TokenTypeReferenceClass()
    returnReference.ref = et
    return returnReference
}


func GetAndCheckTokenType(_ elementTypeName : inout [Character], _ found : inout BooleanReference) -> TokenTypeReferenceClass{
    var elementTypes : [TokenType]
    var tokenType : TokenType
    var i, count : Double

    count = 12.0

    elementTypes = Array(repeating:TokenType(), count: Int(count))

    i = 0.0
    while(i < count){
        elementTypes[Int(i)] = TokenType()
        i = i + 1.0
    }

    elementTypes[Int(0)].name = characterArray("openCurly").ca
    elementTypes[Int(1)].name = characterArray("closeCurly").ca
    elementTypes[Int(2)].name = characterArray("openSquare").ca
    elementTypes[Int(3)].name = characterArray("closeSquare").ca
    elementTypes[Int(4)].name = characterArray("comma").ca
    elementTypes[Int(5)].name = characterArray("colon").ca
    elementTypes[Int(6)].name = characterArray("nullValue").ca
    elementTypes[Int(7)].name = characterArray("trueValue").ca
    elementTypes[Int(8)].name = characterArray("falseValue").ca
    elementTypes[Int(9)].name = characterArray("string").ca
    elementTypes[Int(10)].name = characterArray("number").ca
    elementTypes[Int(11)].name = characterArray("end").ca

    found.booleanValue = false
    tokenType = TokenType()
    i = 0.0
    while(i < count && !found.booleanValue){
        tokenType = elementTypes[Int(i)]
        if(StringsEqual(&tokenType.name, &elementTypeName)){
            found.booleanValue = true
        }
        i = i + 1.0
    }

    var returnReference = TokenTypeReferenceClass()
    returnReference.ref = tokenType
    return returnReference
}


func TokenTypeEnumStructureEquals(_ a : inout TokenType, _ b : inout TokenType) -> Bool{
    return StringsEqual(&a.name, &b.name)
}


func TokenTypeEnumEquals(_ a : inout [Character], _ b : inout [Character]) -> Bool{
    var equals : Bool
    var eta, etb : TokenType
    var founda, foundb : BooleanReference

    founda = BooleanReference()
    foundb = BooleanReference()

    eta = GetAndCheckTokenType(&a, &founda).ref
    etb = GetAndCheckTokenType(&b, &foundb).ref

    if(founda.booleanValue && foundb.booleanValue){
        equals = TokenTypeEnumStructureEquals(&eta, &etb)
    }else{
        equals = false
    }

    return equals
}


func JSONCompare(_ a : inout [Character], _ b : inout [Character], _ epsilon : Double, _ equal : inout BooleanReference, _ errorMessage : inout StringArrayReference) -> Bool{
    var epsilon = epsilon;
    var success : Bool
    var eaRef, ebRef : ElementReference
    var ea, eb : Element

    eaRef = ElementReference()
    ebRef = ElementReference()

    success = ReadJSON(&a, &eaRef, &errorMessage)

    if(success){
        ea = eaRef.element

        success = ReadJSON(&b, &ebRef, &errorMessage)

        if(success){
            eb = ebRef.element

            equal.booleanValue = JSONCompareElements(&ea, &eb, epsilon)

            DeleteElement(&eb)
        }

        DeleteElement(&ea)
    }

    return success
}


func JSONCompareElements(_ ea : inout Element, _ eb : inout Element, _ epsilon : Double) -> Bool{
    var epsilon = epsilon;
    var equal : Bool
    var typeName : [Character]

    equal = StringsEqual(&ea.type.name, &eb.type.name)
        
    if(equal){
        typeName = ea.type.name
        if(ElementTypeEnumEquals(&typeName, &characterArray("object").ca)){
            equal = JSONCompareObjects(&ea.objectx, &eb.objectx, epsilon)
        }else if(ElementTypeEnumEquals(&typeName, &characterArray("string").ca)){
            equal = StringsEqual(&ea.stringx, &eb.stringx)
        }else if(ElementTypeEnumEquals(&typeName, &characterArray("array").ca)){
            equal = JSONCompareArrays(&ea.array, &eb.array, epsilon)
        }else if(ElementTypeEnumEquals(&typeName, &characterArray("number").ca)){
            equal = EpsilonCompare(ea.number, eb.number, epsilon)
        }else if(ElementTypeEnumEquals(&typeName, &characterArray("nullValue").ca)){
            equal = true
        }else if(ElementTypeEnumEquals(&typeName, &characterArray("booleanValue").ca)){
            equal = ea.booleanValue == eb.booleanValue
        }
    }
        
    return equal
}


func JSONCompareArrays(_ ea : inout [Element], _ eb : inout [Element], _ epsilon : Double) -> Bool{
    var epsilon = epsilon;
    var equals : Bool
    var i, length : Double

    equals = Double(ea.count) == Double(eb.count)

    if(equals){
        length = Double(ea.count)
        i = 0.0
        while(i < length && equals){
            equals = JSONCompareElements(&ea[Int(i)], &eb[Int(i)], epsilon)
            i = i + 1.0
        }
    }

    return equals
}


func JSONCompareObjects(_ ea : inout StringElementMap, _ eb : inout StringElementMap, _ epsilon : Double) -> Bool{
    var epsilon = epsilon;
    var equals : Bool
    var akeys, bkeys, i : Double
    var keys : StringArrayReference
    var key : [Character]
    var aFoundReference, bFoundReference : BooleanReference
    var eaValue, ebValue : Element

    aFoundReference = BooleanReference()
    bFoundReference = BooleanReference()

    akeys = GetStringElementMapNumberOfKeys(&ea)
    bkeys = GetStringElementMapNumberOfKeys(&eb)

    equals = akeys == bkeys

    if(equals){
        keys = GetStringElementMapKeySet(&ea).ref

        i = 0.0
        while(i < Double(keys.stringArray.count) && equals){
            key = keys.stringArray[Int(i)].stringx

            eaValue = GetObjectValueWithCheck(&ea, &key, &aFoundReference).ref
            ebValue = GetObjectValueWithCheck(&eb, &key, &bFoundReference).ref

            if(aFoundReference.booleanValue && bFoundReference.booleanValue){
                equals = JSONCompareElements(&eaValue, &ebValue, epsilon)
            }else{
                equals = false
            }
            i = i + 1.0
        }
    }

    return equals
}


func GetElementType(_ elementTypeName : inout [Character]) -> ElementTypeReferenceClass{
    var et : ElementType

    et = ElementType()
    et.name = elementTypeName

    var returnReference = ElementTypeReferenceClass()
    returnReference.ref = et
    return returnReference
}


func GetAndCheckElementType(_ elementTypeName : inout [Character], _ found : inout BooleanReference) -> ElementTypeReferenceClass{
    var elementTypes : [ElementType]
    var elementType : ElementType
    var i, antall : Double

    antall = 6.0

    elementTypes = Array(repeating:ElementType(), count: Int(antall))

    i = 0.0
    while(i < antall){
        elementTypes[Int(i)] = ElementType()
        i = i + 1.0
    }

    elementTypes[Int(0)].name = characterArray("object").ca
    elementTypes[Int(1)].name = characterArray("array").ca
    elementTypes[Int(2)].name = characterArray("string").ca
    elementTypes[Int(3)].name = characterArray("number").ca
    elementTypes[Int(4)].name = characterArray("booleanValue").ca
    elementTypes[Int(5)].name = characterArray("nullValue").ca

    found.booleanValue = false
    elementType = ElementType()
    i = 0.0
    while(i < antall && !found.booleanValue){
        elementType = elementTypes[Int(i)]
        if(StringsEqual(&elementType.name, &elementTypeName)){
            found.booleanValue = true
        }
        i = i + 1.0
    }

    var returnReference = ElementTypeReferenceClass()
    returnReference.ref = elementType
    return returnReference
}


func ElementTypeStructureEquals(_ a : inout ElementType, _ b : inout ElementType) -> Bool{
    return StringsEqual(&a.name, &b.name)
}


func ElementTypeEnumEquals(_ a : inout [Character], _ b : inout [Character]) -> Bool{
    var equals : Bool
    var eta, etb : ElementType
    var founda, foundb : BooleanReference

    founda = BooleanReference()
    foundb = BooleanReference()

    eta = GetAndCheckElementType(&a, &founda).ref
    etb = GetAndCheckElementType(&b, &foundb).ref

    if(founda.booleanValue && foundb.booleanValue){
        equals = ElementTypeStructureEquals(&eta, &etb)
    }else{
        equals = false
    }

    return equals
}


func testEscaper() -> Double{
    var c : Character
    var letters, failures : NumberReference
    var mustBeEscaped : Bool
    var escaped : [Character]

    failures = CreateNumberReference(0.0).ref
    letters = CreateNumberReference(0.0).ref

    c = Character(Unicode.Scalar(Int(9.0))!)
    mustBeEscaped = JSONMustBeEscaped(c, &letters)
    AssertTrue(mustBeEscaped, &failures)
    AssertEquals(letters.numberValue, 2.0, &failures)

    escaped = JSONEscapeCharacter(c)
    AssertStringEquals(&escaped, &characterArray("\\t").ca, &failures)

    c = Character(Unicode.Scalar(Int(0.0))!)
    mustBeEscaped = JSONMustBeEscaped(c, &letters)
    AssertTrue(mustBeEscaped, &failures)
    AssertEquals(letters.numberValue, 6.0, &failures)

    escaped = JSONEscapeCharacter(c)
    AssertStringEquals(&escaped, &characterArray("\\u0000").ca, &failures)

    return failures.numberValue
}


func mapTo(_ root : inout Element) -> ExampleReferenceClass{
    var example : Example

    example = Example()
    example.a = GetObjectValue(&root.objectx, &characterArray("a").ca).ref.stringx
    example.b = mapbTo(&GetObjectValue(&root.objectx, &characterArray("b").ca).ref.array)
    example.x = mapXTo(&GetObjectValue(&root.objectx, &characterArray("x").ca).ref.objectx).ref

    var returnReference = ExampleReferenceClass()
    returnReference.ref = example
    return returnReference
}


func mapXTo(_ objectx : inout StringElementMap) -> XReferenceClass{
    var x : X

    x = X()

    if(ElementTypeEnumEquals(&GetObjectValue(&objectx, &characterArray("x1").ca).ref.type.name, &characterArray("nullValue").ca)){
        x.x1IsNull = true
        x.x1 = characterArray("").ca
    }

    x.x2 = GetObjectValue(&objectx, &characterArray("x2").ca).ref.booleanValue
    x.x3 = GetObjectValue(&objectx, &characterArray("x3").ca).ref.booleanValue

    var returnReference = XReferenceClass()
    returnReference.ref = x
    return returnReference
}


func mapbTo(_ array : inout [Element]) -> [Double]{
    var b : [Double]
    var i : Double

    b = Array(repeating:Double(), count: Int(Double(array.count)))

    i = 0.0
    while(i < Double(array.count)){
        b[Int(i)] = array[Int(i)].number
        i = i + 1.0
    }

    return b
}


func testWriter() -> Double{
    var stringx : [Character]
    var root : Element
    var example : Example
    var failures : NumberReference

    failures = CreateNumberReference(0.0).ref

    root = createExampleJSON().ref

    stringx = WriteJSON(&root)

    AssertEquals(Double(stringx.count), 66.0, &failures)

    /* Does not work with Java Maps..*/
    example = mapTo(&root).ref

    AssertStringEquals(&characterArray("hei").ca, &example.a, &failures)
    AssertTrue(example.x.x1IsNull, &failures)
    AssertTrue(example.x.x2, &failures)
    AssertFalse(example.x.x3, &failures)
    AssertEquals(1.2, example.b[Int(0)], &failures)
    AssertEquals(0.1, example.b[Int(1)], &failures)
    AssertEquals(100.0, example.b[Int(2)], &failures)

    DeleteElement(&root)

    return failures.numberValue
}


func createExampleJSON() -> ElementReferenceClass{
    var root, innerObject, array : Element

    root = CreateObjectElement(3.0).ref

    innerObject = CreateObjectElement(3.0).ref

    SetStringElementMap(&innerObject.objectx, 0.0, &characterArray("x1").ca, &CreateNullElement().ref)
    SetStringElementMap(&innerObject.objectx, 1.0, &characterArray("x2").ca, &CreateBooleanElement(true).ref)
    SetStringElementMap(&innerObject.objectx, 2.0, &characterArray("x3").ca, &CreateBooleanElement(false).ref)

    array = CreateArrayElement(3.0).ref
    array.array[Int(0)] = CreateNumberElement(1.2).ref
    array.array[Int(1)] = CreateNumberElement(0.1).ref
    array.array[Int(2)] = CreateNumberElement(100.0).ref

    SetStringElementMap(&root.objectx, 0.0, &characterArray("a").ca, &CreateStringElement(&characterArray("hei").ca).ref)
    SetStringElementMap(&root.objectx, 1.0, &characterArray("b").ca, &array)
    SetStringElementMap(&root.objectx, 2.0, &characterArray("x").ca, &innerObject)

    var returnReference = ElementReferenceClass()
    returnReference.ref = root
    return returnReference
}


func testWriterEscape() -> Double{
    var stringx : [Character]
    var root : Element
    var failures : NumberReference

    failures = CreateNumberReference(0.0).ref

    root = CreateStringElement(&characterArray("\t\n").ca).ref

    stringx = WriteJSON(&root)

    AssertEquals(Double(stringx.count), 6.0, &failures)

    AssertStringEquals(&characterArray("\"\\t\\n\"").ca, &stringx, &failures)

    DeleteElement(&root)

    return failures.numberValue
}


func testReader() -> Double{
    var failures : NumberReference
    var json : Element
    var stringx, string2 : [Character]
    var errorMessages : StringArrayReference
    var elementReference : ElementReference
    var success : Bool

    failures = CreateNumberReference(0.0).ref

    json = createExampleJSON().ref
    stringx = WriteJSON(&json)
    elementReference = ElementReference()

    errorMessages = CreateStringArrayReferenceLengthValue(0.0, &characterArray("").ca).ref

    success = ReadJSON(&stringx, &elementReference, &errorMessages)
    AssertTrue(success, &failures)

    if(success){
        json = elementReference.element
        string2 = WriteJSON(&json)

        AssertEquals(Double(stringx.count), Double(string2.count), &failures)
    }

    return failures.numberValue
}


func test2() -> Double{
    var failures : NumberReference
    var stringx, string2 : [Character]
    var errorMessages : StringArrayReference
    var json : Element
    var elementReference : ElementReference
    var success : Bool

    failures = CreateNumberReference(0.0).ref

    stringx = strConcatenateString(&characterArray("{").ca, &characterArray("\"name\":\"base64\",").ca)
    stringx = strAppendString(&stringx, &characterArray("\"version\":\"0.1.0\",").ca)
    stringx = strAppendString(&stringx, &characterArray("\"business namespace\":\"no.inductive.idea10.programs\",").ca)
    stringx = strAppendString(&stringx, &characterArray("\"scientific namespace\":\"computerscience.algorithms.base64\",").ca)
    stringx = strAppendString(&stringx, &characterArray("\"imports\":[").ca)
    stringx = strAppendString(&stringx, &characterArray("],").ca)
    stringx = strAppendString(&stringx, &characterArray("\"imports2\":{").ca)
    stringx = strAppendString(&stringx, &characterArray("},").ca)
    stringx = strAppendString(&stringx, &characterArray("\"development imports\":[").ca)
    stringx = strAppendString(&stringx, &characterArray("[\"\",\"no.inductive.idea10.programs\",\"arrays\",\"0.1.0\"]").ca)
    stringx = strAppendString(&stringx, &characterArray("]").ca)
    stringx = strAppendString(&stringx, &characterArray("}").ca)

    errorMessages = CreateStringArrayReferenceLengthValue(0.0, &characterArray("").ca).ref
    elementReference = ElementReference()
    success = ReadJSON(&stringx, &elementReference, &errorMessages)
    AssertTrue(success, &failures)

    if(success){
        json = elementReference.element

        string2 = WriteJSON(&json)

        AssertEquals(Double(stringx.count), Double(string2.count), &failures)
    }

    return failures.numberValue
}


func testReaderExample() -> Double{
    var json : [Character]
    var errorMessages : StringArrayReference
    var elementReference : ElementReference
    var outputJSON : StringReference

    errorMessages = CreateStringArrayReferenceLengthValue(0.0, &characterArray("").ca).ref
    elementReference = ElementReference()
    outputJSON = CreateStringReference(&characterArray("").ca).ref

    json = characterArray("{\"a\":\"hi\",\"b\":[1.2, 0.1, 100],\"x\":{\"x1\":null,\"x2\":true,\"x3\":false}}").ca

    JSONExample(&json, &errorMessages, &elementReference, &outputJSON)

    return 0.0
}


func JSONExample(_ json : inout [Character], _ errorMessages : inout StringArrayReference, _ elementReference : inout ElementReference, _ outputJSON : inout StringReference) -> Void{
    var success : Bool
    var element, aElement : Element
    var stringx : [Character]
    var array : [Element]
    var x, y, z : Double

    /* The following JSON is in the string json:
           {
             "a": "hi",
             "b": [1.2, 0.1, 100],
             "x": {
               "x1": null,
               "x2": true,
               "x3": false
             }
           }
        */

    /* This functions reads the JSON*/
    success = ReadJSON(&json, &elementReference, &errorMessages)

    /* The return value 'success' is set to true of the parsing succeeds,*/
    /* if not, errorMessages contains the reason.*/
    if(success){
        /* We can now extract the data structure:*/
        element = elementReference.element

        /* The following is gets the value "hi" for key "a":*/
        aElement = GetObjectValue(&element.objectx, &characterArray("a").ca).ref
        stringx = aElement.stringx

        /* The following is gets the array [1.2, 0.1, 100] for key "b":*/
        aElement = GetObjectValue(&element.objectx, &characterArray("b").ca).ref
        array = aElement.array
        x = array[Int(0)].number
        y = array[Int(1)].number
        z = array[Int(2)].number

        /* This is how you write JSON:*/
        outputJSON.stringx = WriteJSON(&element)
    }else{
        /* There was a problem, so we cannot read our data structure.*/
        /* Instead, we can check out the error message.*/
        stringx = errorMessages.stringArray[Int(0)].stringx
    }
}


func test() -> Double{
    var failures : Double

    failures = 0.0

    failures = failures + testReader()
    failures = failures + test2()
    failures = failures + testWriter()
    failures = failures + testWriterEscape()
    failures = failures + testTokenizer1()
    failures = failures + testReaderExample()
    failures = failures + testEscaper()
    failures = failures + testValidator()
    failures = failures + testComparator()

    return failures
}


func testValidator() -> Double{
    var a, b : [Character]
    var failures : NumberReference
    var errorMessages : StringArrayReference

    failures = CreateNumberReference(0.0).ref
    errorMessages = CreateStringArrayReferenceLengthValue(0.0, &characterArray("").ca).ref

    a = characterArray("{\"a\":\"hi\",\"b\":[1.2, 0.1, 100],\"x\":{\"x1\":null,\"x2\":true,\"x3\":false}}").ca
    b = characterArray("{{}}]").ca

    AssertTrue(IsValidJSON(&a, &errorMessages), &failures)
    AssertFalse(IsValidJSON(&b, &errorMessages), &failures)

    return failures.numberValue
}


func testComparator() -> Double{
    var a, b : [Character]
    var failures : NumberReference
    var errorMessages : StringArrayReference
    var equalsReference : BooleanReference
    var success : Bool

    failures = CreateNumberReference(0.0).ref
    errorMessages = CreateStringArrayReferenceLengthValue(0.0, &characterArray("").ca).ref
    equalsReference = CreateBooleanReference(false).ref

    a = characterArray("{\"a\":\"hi\",\"b\":[1.2, 0.1, 100],\"x\":{\"x1\":null,\"x2\":true,\"x3\":false}}").ca
    b = characterArray("{\"x\":{\"x1\":null,\"x2\":true,\"x3\":false},\"a\":\"hi\",\"b\":[1.2, 0.1, 100]}").ca

    success = JSONCompare(&a, &b, 0.0001, &equalsReference, &errorMessages)

    AssertTrue(success, &failures)
    AssertTrue(equalsReference.booleanValue, &failures)

    a = characterArray("{\"a\":\"hi\",\"b\":[1.201, 0.1, 100],\"x\":{\"x1\":null,\"x2\":true,\"x3\":false}}").ca
    b = characterArray("{\"x\":{\"x1\":null,\"x2\":true,\"x3\":false},\"a\":\"hi\",\"b\":[1.2, 0.1, 100]}").ca

    success = JSONCompare(&a, &b, 0.0001, &equalsReference, &errorMessages)

    AssertTrue(success, &failures)
    AssertFalse(equalsReference.booleanValue, &failures)

    success = JSONCompare(&a, &b, 0.1, &equalsReference, &errorMessages)

    AssertTrue(success, &failures)
    AssertTrue(equalsReference.booleanValue, &failures)

    return failures.numberValue
}


func testTokenizer1() -> Double{
    var failures, countReference, stringLength : NumberReference
    var errorMessages : StringArrayReference
    var tokenArrayReference : TokenArrayReference
    var success : Bool
    var numbers : [StringReference]
    var i : Double

    failures = CreateNumberReference(0.0).ref
    countReference = CreateNumberReference(0.0).ref
    stringLength = CreateNumberReference(0.0).ref
    errorMessages = CreateStringArrayReferenceLengthValue(0.0, &characterArray("").ca).ref

    tokenArrayReference = TokenArrayReference()

    success = JSONTokenize(&characterArray("false").ca, &tokenArrayReference, &errorMessages)
    AssertTrue(success, &failures)
    if(success){
        AssertEquals(Double(tokenArrayReference.array.count), 2.0, &failures)
        AssertStringEquals(&tokenArrayReference.array[Int(0)].type.name, &characterArray("falseValue").ca, &failures)
    }

    numbers = strSplitByString(&characterArray("11, -1e-1, -0.123456789e-99, 1E1, -0.1E23").ca, &characterArray(", ").ca)

    i = 0.0
    while(i < Double(numbers.count)){
        success = JSONTokenize(&numbers[Int(i)].stringx, &tokenArrayReference, &errorMessages)
        AssertTrue(success, &failures)
        if(success){
            AssertEquals(Double(tokenArrayReference.array.count), 2.0, &failures)
            AssertStringEquals(&tokenArrayReference.array[Int(0)].value, &numbers[Int(i)].stringx, &failures)
        }
        i = i + 1.0
    }

    success = IsValidJSONStringInJSON(&characterArray("\"\"").ca, 0.0, &countReference, &stringLength, &errorMessages)
    AssertTrue(success, &failures)
    if(success){
        AssertEquals(countReference.numberValue, 2.0, &failures)
    }

    success = IsValidJSONString(&characterArray("\"\\u1234\\n\\r\\f\\b\\t\"").ca, &errorMessages)
    AssertTrue(success, &failures)

    success = JSONTokenize(&characterArray("\"").ca, &tokenArrayReference, &errorMessages)
    AssertFalse(success, &failures)

    success = IsValidJSONNumber(&characterArray("1.1-e1").ca, &errorMessages)
    AssertFalse(success, &failures)

    success = IsValidJSONNumber(&characterArray("1E+2").ca, &errorMessages)
    AssertTrue(success, &failures)

    success = IsValidJSONString(&characterArray("\"\\uAAAG\"").ca, &errorMessages)
    AssertFalse(success, &failures)

    return failures.numberValue
}


func CreateBooleanReference(_ value : Bool) -> BooleanReferenceReferenceClass{
    var value = value;
    var ref : BooleanReference
    ref = BooleanReference()
    ref.booleanValue = value

    var returnReference = BooleanReferenceReferenceClass()
    returnReference.ref = ref
    return returnReference
}


func CreateBooleanArrayReference(_ value : inout [Bool]) -> BooleanArrayReferenceReferenceClass{
    var ref : BooleanArrayReference
    ref = BooleanArrayReference()
    ref.booleanArray = value

    var returnReference = BooleanArrayReferenceReferenceClass()
    returnReference.ref = ref
    return returnReference
}


func CreateBooleanArrayReferenceLengthValue(_ length : Double, _ value : Bool) -> BooleanArrayReferenceReferenceClass{
    var length = length;
    var value = value;
    var ref : BooleanArrayReference
    var i : Double
    ref = BooleanArrayReference()
    ref.booleanArray = Array(repeating:Bool(), count: Int(length))

    i = 0.0
    while(i < length){
        ref.booleanArray[Int(i)] = value
        i = i + 1.0
    }

    var returnReference = BooleanArrayReferenceReferenceClass()
    returnReference.ref = ref
    return returnReference
}


func FreeBooleanArrayReference(_ booleanArrayReference : inout BooleanArrayReference) -> Void{
    delete(booleanArrayReference.booleanArray)
    delete(booleanArrayReference)
}


func CreateCharacterReference(_ value : Character) -> CharacterReferenceReferenceClass{
    var value = value;
    var ref : CharacterReference
    ref = CharacterReference()
    ref.characterValue = value

    var returnReference = CharacterReferenceReferenceClass()
    returnReference.ref = ref
    return returnReference
}


func CreateNumberReference(_ value : Double) -> NumberReferenceReferenceClass{
    var value = value;
    var ref : NumberReference
    ref = NumberReference()
    ref.numberValue = value

    var returnReference = NumberReferenceReferenceClass()
    returnReference.ref = ref
    return returnReference
}


func CreateNumberArrayReference(_ value : inout [Double]) -> NumberArrayReferenceReferenceClass{
    var ref : NumberArrayReference
    ref = NumberArrayReference()
    ref.numberArray = value

    var returnReference = NumberArrayReferenceReferenceClass()
    returnReference.ref = ref
    return returnReference
}


func CreateNumberArrayReferenceLengthValue(_ length : Double, _ value : Double) -> NumberArrayReferenceReferenceClass{
    var length = length;
    var value = value;
    var ref : NumberArrayReference
    var i : Double
    ref = NumberArrayReference()
    ref.numberArray = Array(repeating:Double(), count: Int(length))

    i = 0.0
    while(i < length){
        ref.numberArray[Int(i)] = value
        i = i + 1.0
    }

    var returnReference = NumberArrayReferenceReferenceClass()
    returnReference.ref = ref
    return returnReference
}


func FreeNumberArrayReference(_ numberArrayReference : inout NumberArrayReference) -> Void{
    delete(numberArrayReference.numberArray)
    delete(numberArrayReference)
}


func CreateStringReference(_ value : inout [Character]) -> StringReferenceReferenceClass{
    var ref : StringReference
    ref = StringReference()
    ref.stringx = value

    var returnReference = StringReferenceReferenceClass()
    returnReference.ref = ref
    return returnReference
}


func CreateStringReferenceLengthValue(_ length : Double, _ value : Character) -> StringReferenceReferenceClass{
    var length = length;
    var value = value;
    var ref : StringReference
    var i : Double
    ref = StringReference()
    ref.stringx = Array(repeating:Character(" "), count: Int(length))

    i = 0.0
    while(i < length){
        ref.stringx[Int(i)] = value
        i = i + 1.0
    }

    var returnReference = StringReferenceReferenceClass()
    returnReference.ref = ref
    return returnReference
}


func FreeStringReference(_ stringReference : inout StringReference) -> Void{
    delete(stringReference.stringx)
    delete(stringReference)
}


func CreateStringArrayReference(_ strings : inout [StringReference]) -> StringArrayReferenceReferenceClass{
    var ref : StringArrayReference
    ref = StringArrayReference()
    ref.stringArray = strings

    var returnReference = StringArrayReferenceReferenceClass()
    returnReference.ref = ref
    return returnReference
}


func CreateStringArrayReferenceLengthValue(_ length : Double, _ value : inout [Character]) -> StringArrayReferenceReferenceClass{
    var length = length;
    var ref : StringArrayReference
    var i : Double
    ref = StringArrayReference()
    ref.stringArray = Array(repeating:StringReference(), count: Int(length))

    i = 0.0
    while(i < length){
        ref.stringArray[Int(i)] = CreateStringReference(&value).ref
        i = i + 1.0
    }

    var returnReference = StringArrayReferenceReferenceClass()
    returnReference.ref = ref
    return returnReference
}


func FreeStringArrayReference(_ stringArrayReference : inout StringArrayReference) -> Void{
    var i : Double
    i = 0.0
    while(i < Double(stringArrayReference.stringArray.count)){
        delete(stringArrayReference.stringArray[Int(i)])
        i = i + 1.0
    }
    delete(stringArrayReference.stringArray)
    delete(stringArrayReference)
}


func strWriteStringToStingStream(_ stream : inout [Character], _ index : inout NumberReference, _ src : inout [Character]) -> Void{
    var i : Double

    i = 0.0
    while(i < Double(src.count)){
        stream[Int(index.numberValue + i)] = src[Int(i)]
        i = i + 1.0
    }
    index.numberValue = index.numberValue + Double(src.count)
}


func strWriteCharacterToStingStream(_ stream : inout [Character], _ index : inout NumberReference, _ src : Character) -> Void{
    var src = src;
    stream[Int(index.numberValue)] = src
    index.numberValue = index.numberValue + 1.0
}


func strWriteBooleanToStingStream(_ stream : inout [Character], _ index : inout NumberReference, _ src : Bool) -> Void{
    var src = src;
    if(src){
        strWriteStringToStingStream(&stream, &index, &characterArray("true").ca)
    }else{
        strWriteStringToStingStream(&stream, &index, &characterArray("false").ca)
    }
}


func strSubstringWithCheck(_ stringx : inout [Character], _ from : Double, _ to : Double, _ stringReference : inout StringReference) -> Bool{
    var from = from;
    var to = to;
    var success : Bool

    if(from >= 0.0 && from <= Double(stringx.count) && to >= 0.0 && to <= Double(stringx.count) && from <= to){
        stringReference.stringx = strSubstring(&stringx, from, to)
        success = true
    }else{
        success = false
    }

    return success
}


func strSubstring(_ stringx : inout [Character], _ from : Double, _ to : Double) -> [Character]{
    var from = from;
    var to = to;
    var n : [Character]
    var i, length : Double

    length = to - from

    n = Array(repeating:Character(" "), count: Int(length))

    i = from
    while(i < to){
        n[Int(i - from)] = stringx[Int(i)]
        i = i + 1.0
    }

    return n
}


func strAppendString(_ s1 : inout [Character], _ s2 : inout [Character]) -> [Character]{
    var newString : [Character]

    newString = strConcatenateString(&s1, &s2)

    delete(s1)

    return newString
}


func strConcatenateString(_ s1 : inout [Character], _ s2 : inout [Character]) -> [Character]{
    var newString : [Character]
    var i : Double

    newString = Array(repeating:Character(" "), count: Int(Double(s1.count) + Double(s2.count)))

    i = 0.0
    while(i < Double(s1.count)){
        newString[Int(i)] = s1[Int(i)]
        i = i + 1.0
    }

    i = 0.0
    while(i < Double(s2.count)){
        newString[Int(Double(s1.count) + i)] = s2[Int(i)]
        i = i + 1.0
    }

    return newString
}


func strAppendCharacter(_ stringx : inout [Character], _ c : Character) -> [Character]{
    var c = c;
    var newString : [Character]

    newString = strConcatenateCharacter(&stringx, c)

    delete(stringx)

    return newString
}


func strConcatenateCharacter(_ stringx : inout [Character], _ c : Character) -> [Character]{
    var c = c;
    var newString : [Character]
    var i : Double
    newString = Array(repeating:Character(" "), count: Int(Double(stringx.count) + 1.0))

    i = 0.0
    while(i < Double(stringx.count)){
        newString[Int(i)] = stringx[Int(i)]
        i = i + 1.0
    }

    newString[Int(Double(stringx.count))] = c

    return newString
}


func strSplitByCharacter(_ toSplit : inout [Character], _ splitBy : Character) -> [StringReference]{
    var splitBy = splitBy;
    var split : [StringReference]
    var stringToSplitBy : [Character]

    stringToSplitBy = Array(repeating:Character(" "), count: Int(1))
    stringToSplitBy[Int(0)] = splitBy

    split = strSplitByString(&toSplit, &stringToSplitBy)

    delete(stringToSplitBy)

    return split
}


func strIndexOfCharacter(_ stringx : inout [Character], _ character : Character, _ indexReference : inout NumberReference) -> Bool{
    var character = character;
    var i : Double
    var found : Bool

    found = false
    i = 0.0
    while(i < Double(stringx.count) && !found){
        if(stringx[Int(i)] == character){
            found = true
            indexReference.numberValue = i
        }
        i = i + 1.0
    }

    return found
}


func strSubstringEqualsWithCheck(_ stringx : inout [Character], _ from : Double, _ substring : inout [Character], _ equalsReference : inout BooleanReference) -> Bool{
    var from = from;
    var success : Bool

    if(from < Double(stringx.count)){
        success = true
        equalsReference.booleanValue = strSubstringEquals(&stringx, from, &substring)
    }else{
        success = false
    }

    return success
}


func strSubstringEquals(_ stringx : inout [Character], _ from : Double, _ substring : inout [Character]) -> Bool{
    var from = from;
    var i : Double
    var equal : Bool

    equal = true
    i = 0.0
    while(i < Double(substring.count) && equal){
        if(stringx[Int(from + i)] != substring[Int(i)]){
            equal = false
        }
        i = i + 1.0
    }

    return equal
}


func strIndexOfString(_ stringx : inout [Character], _ substring : inout [Character], _ indexReference : inout NumberReference) -> Bool{
    var i : Double
    var found : Bool

    found = false
    i = 0.0
    while(i < Double(stringx.count) - Double(substring.count) + 1.0 && !found){
        if(strSubstringEquals(&stringx, i, &substring)){
            found = true
            indexReference.numberValue = i
        }
        i = i + 1.0
    }

    return found
}


func strContainsCharacter(_ stringx : inout [Character], _ character : Character) -> Bool{
    var character = character;
    var i : Double
    var found : Bool

    found = false
    i = 0.0
    while(i < Double(stringx.count) && !found){
        if(stringx[Int(i)] == character){
            found = true
        }
        i = i + 1.0
    }

    return found
}


func strContainsString(_ stringx : inout [Character], _ substring : inout [Character]) -> Bool{
    return strIndexOfString(&stringx, &substring, &NumberReferenceCreateFunction().ref)
}


func strToUpperCase(_ stringx : inout [Character]) -> Void{
    var i : Double

    i = 0.0
    while(i < Double(stringx.count)){
        stringx[Int(i)] = charToUpperCase(stringx[Int(i)])
        i = i + 1.0
    }
}


func strToLowerCase(_ stringx : inout [Character]) -> Void{
    var i : Double

    i = 0.0
    while(i < Double(stringx.count)){
        stringx[Int(i)] = charToLowerCase(stringx[Int(i)])
        i = i + 1.0
    }
}


func strEqualsIgnoreCase(_ a : inout [Character], _ b : inout [Character]) -> Bool{
    var equal : Bool
    var i : Double

    if(Double(a.count) == Double(b.count)){
        equal = true
        i = 0.0
        while(i < Double(a.count) && equal){
            if(charToLowerCase(a[Int(i)]) != charToLowerCase(b[Int(i)])){
                equal = false
            }
            i = i + 1.0
        }
    }else{
        equal = false
    }

    return equal
}


func strReplaceString(_ stringx : inout [Character], _ toReplace : inout [Character], _ replaceWith : inout [Character]) -> [Character]{
    var result : [Character]
    var i : Double
    var equalsReference : BooleanReference
    var success : Bool

    equalsReference = BooleanReference()
    result = Array(repeating:Character(" "), count: Int(0))

    i = 0.0
    while(i < Double(stringx.count)){
        success = strSubstringEqualsWithCheck(&stringx, i, &toReplace, &equalsReference)
        if(success){
            success = equalsReference.booleanValue
        }

        if(success && Double(toReplace.count) > 0.0){
            result = strConcatenateString(&result, &replaceWith)
            i = i + Double(toReplace.count)
        }else{
            result = strConcatenateCharacter(&result, stringx[Int(i)])
            i = i + 1.0
        }
    }

    return result
}


func strReplaceCharacter(_ stringx : inout [Character], _ toReplace : Character, _ replaceWith : Character) -> [Character]{
    var toReplace = toReplace;
    var replaceWith = replaceWith;
    var result : [Character]
    var i : Double

    result = Array(repeating:Character(" "), count: Int(0))

    i = 0.0
    while(i < Double(stringx.count)){
        if(stringx[Int(i)] == toReplace){
            result = strConcatenateCharacter(&result, replaceWith)
        }else{
            result = strConcatenateCharacter(&result, stringx[Int(i)])
        }
        i = i + 1.0
    }

    return result
}


func strTrim(_ stringx : inout [Character]) -> [Character]{
    var result : [Character]
    var i, lastWhitespaceLocationStart, lastWhitespaceLocationEnd : Double
    var firstNonWhitespaceFound : Bool

    /* Find whitepaces at the start.*/
    lastWhitespaceLocationStart = -1.0
    firstNonWhitespaceFound = false
    i = 0.0
    while(i < Double(stringx.count) && !firstNonWhitespaceFound){
        if(charIsWhiteSpace(stringx[Int(i)])){
            lastWhitespaceLocationStart = i
        }else{
            firstNonWhitespaceFound = true
        }
        i = i + 1.0
    }

    /* Find whitepaces at the end.*/
    lastWhitespaceLocationEnd = Double(stringx.count)
    firstNonWhitespaceFound = false
    i = Double(stringx.count) - 1.0
    while(i >= 0.0 && !firstNonWhitespaceFound){
        if(charIsWhiteSpace(stringx[Int(i)])){
            lastWhitespaceLocationEnd = i
        }else{
            firstNonWhitespaceFound = true
        }
        i = i - 1.0
    }

    if(lastWhitespaceLocationStart < lastWhitespaceLocationEnd){
        result = strSubstring(&stringx, lastWhitespaceLocationStart + 1.0, lastWhitespaceLocationEnd)
    }else{
        result = Array(repeating:Character(" "), count: Int(0))
    }

    return result
}


func strStartsWith(_ stringx : inout [Character], _ start : inout [Character]) -> Bool{
    var startsWithString : Bool

    startsWithString = false
    if(Double(stringx.count) >= Double(start.count)){
        startsWithString = strSubstringEquals(&stringx, 0.0, &start)
    }

    return startsWithString
}


func strEndsWith(_ stringx : inout [Character], _ end : inout [Character]) -> Bool{
    var endsWithString : Bool

    endsWithString = false
    if(Double(stringx.count) >= Double(end.count)){
        endsWithString = strSubstringEquals(&stringx, Double(stringx.count) - Double(end.count), &end)
    }

    return endsWithString
}


func strSplitByString(_ toSplit : inout [Character], _ splitBy : inout [Character]) -> [StringReference]{
    var split : [StringReference]
    var next : [Character]
    var i : Double
    var c : Character
    var n : StringReference

    split = Array(repeating:StringReference(), count: Int(0))

    next = Array(repeating:Character(" "), count: Int(0))
    i = 0.0
    while(i < Double(toSplit.count)){
        c = toSplit[Int(i)]

        if(strSubstringEquals(&toSplit, i, &splitBy)){
            if(Double(split.count) != 0.0 || i != 0.0){
                n = StringReference()
                n.stringx = next
                split = AddString(&split, &n)
                next = Array(repeating:Character(" "), count: Int(0))
                i = i + Double(splitBy.count)
            }
        }else{
            next = strAppendCharacter(&next, c)
            i = i + 1.0
        }
    }

    if(Double(next.count) > 0.0){
        n = StringReference()
        n.stringx = next
        split = AddString(&split, &n)
    }

    return split
}


func nCreateStringScientificNotationDecimalFromNumber(_ decimalx : Double) -> [Character]{
    var decimalx = decimalx;
    var mantissaReference, exponentReference : StringReference
    var multiplier, inc : Double
    var exponent : Double
    var done, isPositive : Bool
    var result : [Character]
    mantissaReference = StringReference()
    exponentReference = StringReference()
    result = Array(repeating:Character(" "), count: Int(0))
    done = false
    exponent = 0.0

    if(decimalx < 0.0){
        isPositive = false
        decimalx = -decimalx
    }else{
        isPositive = true
    }

    if(decimalx == 0.0){
        done = true
    }

    if(!done){
        multiplier = 0.0
        inc = 0.0
        if(decimalx < 1.0){
            multiplier = 10.0
            inc = -1.0
        }else if(decimalx >= 10.0){
            multiplier = 0.1
            inc = 1.0
        }else{
            done = true
        }
        if(!done){
            while(decimalx >= 10.0 || decimalx < 1.0){
                decimalx = decimalx*multiplier
                exponent = exponent + inc
            }
        }
    }

    nCreateStringFromNumberWithCheck(decimalx, 10.0, &mantissaReference)

    nCreateStringFromNumberWithCheck(exponent, 10.0, &exponentReference)

    if(!isPositive){
        result = AppendString(&result, &characterArray("-").ca)
    }

    result = AppendString(&result, &mantissaReference.stringx)
    result = AppendString(&result, &characterArray("e").ca)
    result = AppendString(&result, &exponentReference.stringx)

    return result
}


func nCreateStringDecimalFromNumber(_ decimalx : Double) -> [Character]{
    var decimalx = decimalx;
    var stringReference : StringReference
    stringReference = StringReference()

    /* This will succeed because base = 10.*/
    nCreateStringFromNumberWithCheck(decimalx, 10.0, &stringReference)

    return stringReference.stringx
}


func nCreateStringFromNumberWithCheck(_ decimalx : Double, _ basex : Double, _ stringReference : inout StringReference) -> Bool{
    var decimalx = decimalx;
    var basex = basex;
    var stringx : [Character]
    var maximumDigits : Double
    var digitPosition : Double
    var hasPrintedPoint, isPositive : Bool
    var i, d : Double
    var success : Bool
    var characterReference : CharacterReference
    var c : Character
    isPositive = true

    if(decimalx < 0.0){
        isPositive = false
        decimalx = -decimalx
    }

    if(decimalx == 0.0){
        stringReference.stringx = characterArray("0").ca
        success = true
    }else{
        characterReference = CharacterReference()
        if(IsInteger(basex)){
            success = true
            stringx = Array(repeating:Character(" "), count: Int(0))
            maximumDigits = nGetMaximumDigitsForBase(basex)
            digitPosition = nGetFirstDigitPosition(decimalx, basex)
            decimalx = round(decimalx*pow(basex, maximumDigits - digitPosition - 1.0))
            hasPrintedPoint = false
            if(!isPositive){
                stringx = AppendCharacter(&stringx, "-")
            }
            if(digitPosition < 0.0){
                stringx = AppendCharacter(&stringx, "0")
                stringx = AppendCharacter(&stringx, ".")
                hasPrintedPoint = true
                i = 0.0
                while(i < -digitPosition - 1.0){
                    stringx = AppendCharacter(&stringx, "0")
                    i = i + 1.0
                }
            }
            i = 0.0
            while(i < maximumDigits && success){
                d = floor(decimalx/pow(basex, maximumDigits - i - 1.0))
                if(d >= basex){
                    d = basex - 1.0
                }
                if(!hasPrintedPoint && digitPosition - i + 1.0 == 0.0){
                    if(decimalx != 0.0){
                        stringx = AppendCharacter(&stringx, ".")
                    }
                    hasPrintedPoint = true
                }
                if(decimalx == 0.0 && hasPrintedPoint){
                }else{
                    success = nGetSingleDigitCharacterFromNumberWithCheck(d, basex, &characterReference)
                    if(success){
                        c = characterReference.characterValue
                        stringx = AppendCharacter(&stringx, c)
                    }
                }
                if(success){
                    decimalx = decimalx - d*pow(basex, maximumDigits - i - 1.0)
                }
                i = i + 1.0
            }
            if(success){
                i = 0.0
                while(i < digitPosition - maximumDigits + 1.0){
                    stringx = AppendCharacter(&stringx, "0")
                    i = i + 1.0
                }
                stringReference.stringx = stringx
            }
        }else{
            success = false
        }
    }

    /* Done*/
    return success
}


func nGetMaximumDigitsForBase(_ basex : Double) -> Double{
    var basex = basex;
    var t : Double
    t = pow(10.0, 15.0)
    return floor(log10(t)/log10(basex))
}


func nGetFirstDigitPosition(_ decimalx : Double, _ basex : Double) -> Double{
    var decimalx = decimalx;
    var basex = basex;
    var power : Double
    var t : Double
    power = ceil(log10(decimalx)/log10(basex))

    t = decimalx*pow(basex, -power)
    if(t < basex && t >= 1.0){
    }else if(t >= basex){
        power = power + 1.0
    }else if(t < 1.0){
        power = power - 1.0
    }

    return power
}


func nGetSingleDigitCharacterFromNumberWithCheck(_ c : Double, _ basex : Double, _ characterReference : inout CharacterReference) -> Bool{
    var c = c;
    var basex = basex;
    var numberTable : [Character]
    var success : Bool
    numberTable = nGetDigitCharacterTable()

    if(c < basex || c < Double(numberTable.count)){
        success = true
        characterReference.characterValue = numberTable[Int(c)]
    }else{
        success = false
    }

    return success
}


func nGetDigitCharacterTable() -> [Character]{
    var numberTable : [Character]
    numberTable = characterArray("0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ").ca

    return numberTable
}


func nCreateNumberFromDecimalStringWithCheck(_ stringx : inout [Character], _ decimalReference : inout NumberReference, _ errorMessage : inout StringReference) -> Bool{
    return nCreateNumberFromStringWithCheck(&stringx, 10.0, &decimalReference, &errorMessage)
}


func nCreateNumberFromDecimalString(_ stringx : inout [Character]) -> Double{
    var doubleReference : NumberReference
    var stringReference : StringReference
    var number : Double
    doubleReference = CreateNumberReference(0.0).ref
    stringReference = CreateStringReference(&characterArray("").ca).ref
    nCreateNumberFromStringWithCheck(&stringx, 10.0, &doubleReference, &stringReference)
    number = doubleReference.numberValue

    delete(doubleReference)
    delete(stringReference)

    return number
}


func nCreateNumberFromStringWithCheck(_ stringx : inout [Character], _ basex : Double, _ numberReference : inout NumberReference, _ errorMessage : inout StringReference) -> Bool{
    var basex = basex;
    var success : Bool
    var numberIsPositive, exponentIsPositive : BooleanReference
    var beforePoint, afterPoint, exponent : NumberArrayReference
    numberIsPositive = CreateBooleanReference(true).ref
    exponentIsPositive = CreateBooleanReference(true).ref
    beforePoint = NumberArrayReference()
    afterPoint = NumberArrayReference()
    exponent = NumberArrayReference()

    if(basex >= 2.0 && basex <= 36.0){
        success = nExtractPartsFromNumberString(&stringx, basex, &numberIsPositive, &beforePoint, &afterPoint, &exponentIsPositive, &exponent, &errorMessage)
        if(success){
            numberReference.numberValue = nCreateNumberFromParts(basex, numberIsPositive.booleanValue, &beforePoint.numberArray, &afterPoint.numberArray, exponentIsPositive.booleanValue, &exponent.numberArray)
        }
    }else{
        success = false
        errorMessage.stringx = characterArray("Base must be from 2 to 36.").ca
    }

    return success
}


func nCreateNumberFromParts(_ basex : Double, _ numberIsPositive : Bool, _ beforePoint : inout [Double], _ afterPoint : inout [Double], _ exponentIsPositive : Bool, _ exponent : inout [Double]) -> Double{
    var basex = basex;
    var numberIsPositive = numberIsPositive;
    var exponentIsPositive = exponentIsPositive;
    var n, i, p, e : Double
    n = 0.0

    i = 0.0
    while(i < Double(beforePoint.count)){
        p = beforePoint[Int(Double(beforePoint.count) - i - 1.0)]
        n = n + p*pow(basex, i)
        i = i + 1.0
    }

    i = 0.0
    while(i < Double(afterPoint.count)){
        p = afterPoint[Int(i)]
        n = n + p*pow(basex, -(i + 1.0))
        i = i + 1.0
    }

    if(Double(exponent.count) > 0.0){
        e = 0.0
        i = 0.0
        while(i < Double(exponent.count)){
            p = exponent[Int(Double(exponent.count) - i - 1.0)]
            e = e + p*pow(basex, i)
            i = i + 1.0
        }
        if(!exponentIsPositive){
            e = -e
        }
        n = n*pow(basex, e)
    }

    if(!numberIsPositive){
        n = -n
    }

    return n
}


func nExtractPartsFromNumberString(_ n : inout [Character], _ basex : Double, _ numberIsPositive : inout BooleanReference, _ beforePoint : inout NumberArrayReference, _ afterPoint : inout NumberArrayReference, _ exponentIsPositive : inout BooleanReference, _ exponent : inout NumberArrayReference, _ errorMessages : inout StringReference) -> Bool{
    var basex = basex;
    var i : Double
    var success : Bool
    i = 0.0

    if(i < Double(n.count)){
        if(n[Int(i)] == "-"){
            numberIsPositive.booleanValue = false
            i = i + 1.0
        }else if(n[Int(i)] == "+"){
            numberIsPositive.booleanValue = true
            i = i + 1.0
        }
        success = nExtractPartsFromNumberStringFromSign(&n, basex, i, &beforePoint, &afterPoint, &exponentIsPositive, &exponent, &errorMessages)
    }else{
        success = false
        errorMessages.stringx = characterArray("Number cannot have length zero.").ca
    }

    return success
}


func nExtractPartsFromNumberStringFromSign(_ n : inout [Character], _ basex : Double, _ i : Double, _ beforePoint : inout NumberArrayReference, _ afterPoint : inout NumberArrayReference, _ exponentIsPositive : inout BooleanReference, _ exponent : inout NumberArrayReference, _ errorMessages : inout StringReference) -> Bool{
    var basex = basex;
    var i = i;
    var success, done : Bool
    var count, j : Double
    done = false
    count = 0.0
    while(i + count < Double(n.count) && !done){
        if(nCharacterIsNumberCharacterInBase(n[Int(i + count)], basex)){
            count = count + 1.0
        }else{
            done = true
        }
    }

    if(count >= 1.0){
        beforePoint.numberArray = Array(repeating:Double(), count: Int(count))
        j = 0.0
        while(j < count){
            beforePoint.numberArray[Int(j)] = nGetNumberFromNumberCharacterForBase(n[Int(i + j)], basex)
            j = j + 1.0
        }
        i = i + count
        if(i < Double(n.count)){
            success = nExtractPartsFromNumberStringFromPointOrExponent(&n, basex, i, &afterPoint, &exponentIsPositive, &exponent, &errorMessages)
        }else{
            afterPoint.numberArray = Array(repeating:Double(), count: Int(0))
            exponent.numberArray = Array(repeating:Double(), count: Int(0))
            success = true
        }
    }else{
        success = false
        errorMessages.stringx = characterArray("Number must have at least one number after the optional sign.").ca
    }

    return success
}


func nExtractPartsFromNumberStringFromPointOrExponent(_ n : inout [Character], _ basex : Double, _ i : Double, _ afterPoint : inout NumberArrayReference, _ exponentIsPositive : inout BooleanReference, _ exponent : inout NumberArrayReference, _ errorMessages : inout StringReference) -> Bool{
    var basex = basex;
    var i = i;
    var success, done : Bool
    var count, j : Double
    if(n[Int(i)] == "."){
        i = i + 1.0
        if(i < Double(n.count)){
            done = false
            count = 0.0
            while(i + count < Double(n.count) && !done){
                if(nCharacterIsNumberCharacterInBase(n[Int(i + count)], basex)){
                    count = count + 1.0
                }else{
                    done = true
                }
            }
            if(count >= 1.0){
                afterPoint.numberArray = Array(repeating:Double(), count: Int(count))
                j = 0.0
                while(j < count){
                    afterPoint.numberArray[Int(j)] = nGetNumberFromNumberCharacterForBase(n[Int(i + j)], basex)
                    j = j + 1.0
                }
                i = i + count
                if(i < Double(n.count)){
                    success = nExtractPartsFromNumberStringFromExponent(&n, basex, i, &exponentIsPositive, &exponent, &errorMessages)
                }else{
                    exponent.numberArray = Array(repeating:Double(), count: Int(0))
                    success = true
                }
            }else{
                success = false
                errorMessages.stringx = characterArray("There must be at least one digit after the decimal point.").ca
            }
        }else{
            success = false
            errorMessages.stringx = characterArray("There must be at least one digit after the decimal point.").ca
        }
    }else if(basex <= 14.0 && (n[Int(i)] == "e" || n[Int(i)] == "E")){
        if(i < Double(n.count)){
            success = nExtractPartsFromNumberStringFromExponent(&n, basex, i, &exponentIsPositive, &exponent, &errorMessages)
            afterPoint.numberArray = Array(repeating:Double(), count: Int(0))
        }else{
            success = false
            errorMessages.stringx = characterArray("There must be at least one digit after the exponent.").ca
        }
    }else{
        success = false
        errorMessages.stringx = characterArray("Expected decimal point or exponent symbol.").ca
    }

    return success
}


func nExtractPartsFromNumberStringFromExponent(_ n : inout [Character], _ basex : Double, _ i : Double, _ exponentIsPositive : inout BooleanReference, _ exponent : inout NumberArrayReference, _ errorMessages : inout StringReference) -> Bool{
    var basex = basex;
    var i = i;
    var success, done : Bool
    var count, j : Double
    if(basex <= 14.0 && (n[Int(i)] == "e" || n[Int(i)] == "E")){
        i = i + 1.0
        if(i < Double(n.count)){
            if(n[Int(i)] == "-"){
                exponentIsPositive.booleanValue = false
                i = i + 1.0
            }else if(n[Int(i)] == "+"){
                exponentIsPositive.booleanValue = true
                i = i + 1.0
            }
            if(i < Double(n.count)){
                done = false
                count = 0.0
                while(i + count < Double(n.count) && !done){
                    if(nCharacterIsNumberCharacterInBase(n[Int(i + count)], basex)){
                        count = count + 1.0
                    }else{
                        done = true
                    }
                }
                if(count >= 1.0){
                    exponent.numberArray = Array(repeating:Double(), count: Int(count))
                    j = 0.0
                    while(j < count){
                        exponent.numberArray[Int(j)] = nGetNumberFromNumberCharacterForBase(n[Int(i + j)], basex)
                        j = j + 1.0
                    }
                    i = i + count
                    if(i == Double(n.count)){
                        success = true
                    }else{
                        success = false
                        errorMessages.stringx = characterArray("There cannot be any characters past the exponent of the number.").ca
                    }
                }else{
                    success = false
                    errorMessages.stringx = characterArray("There must be at least one digit after the decimal point.").ca
                }
            }else{
                success = false
                errorMessages.stringx = characterArray("There must be at least one digit after the exponent symbol.").ca
            }
        }else{
            success = false
            errorMessages.stringx = characterArray("There must be at least one digit after the exponent symbol.").ca
        }
    }else{
        success = false
        errorMessages.stringx = characterArray("Expected exponent symbol.").ca
    }

    return success
}


func nGetNumberFromNumberCharacterForBase(_ c : Character, _ basex : Double) -> Double{
    var c = c;
    var basex = basex;
    var numberTable : [Character]
    var i : Double
    var position : Double
    numberTable = nGetDigitCharacterTable()
    position = 0.0

    i = 0.0
    while(i < basex){
        if(numberTable[Int(i)] == c){
            position = i
        }
        i = i + 1.0
    }

    return position
}


func nCharacterIsNumberCharacterInBase(_ c : Character, _ basex : Double) -> Bool{
    var c = c;
    var basex = basex;
    var numberTable : [Character]
    var i : Double
    var found : Bool
    numberTable = nGetDigitCharacterTable()
    found = false

    i = 0.0
    while(i < basex){
        if(numberTable[Int(i)] == c){
            found = true
        }
        i = i + 1.0
    }

    return found
}


func nStringToNumberArray(_ str : inout [Character]) -> [Double]{
    var numberArrayReference : NumberArrayReference
    var stringReference : StringReference
    var numbers : [Double]
    numberArrayReference = NumberArrayReference()
    stringReference = StringReference()

    nStringToNumberArrayWithCheck(&str, &numberArrayReference, &stringReference)

    numbers = numberArrayReference.numberArray

    delete(numberArrayReference)
    delete(stringReference)

    return numbers
}


func nStringToNumberArrayWithCheck(_ str : inout [Character], _ numberArrayReference : inout NumberArrayReference, _ errorMessage : inout StringReference) -> Bool{
    var numberStrings : [StringReference]
    var numbers : [Double]
    var i : Double
    var numberString, trimmedNumberString : [Character]
    var success : Bool
    var numberReference : NumberReference
    numberStrings = SplitByString(&str, &characterArray(",").ca)

    numbers = Array(repeating:Double(), count: Int(Double(numberStrings.count)))
    success = true
    numberReference = NumberReference()

    i = 0.0
    while(i < Double(numberStrings.count)){
        numberString = numberStrings[Int(i)].stringx
        trimmedNumberString = Trim(&numberString)
        success = nCreateNumberFromDecimalStringWithCheck(&trimmedNumberString, &numberReference, &errorMessage)
        numbers[Int(i)] = numberReference.numberValue
        FreeStringReference(&numberStrings[Int(i)])
        delete(trimmedNumberString)
        i = i + 1.0
    }

    delete(numberStrings)
    delete(numberReference)

    numberArrayReference.numberArray = numbers

    return success
}


func AddNumber(_ list : inout [Double], _ a : Double) -> [Double]{
    var a = a;
    var newlist : [Double]
    var i : Double

    newlist = Array(repeating:Double(), count: Int(Double(list.count) + 1.0))
    i = 0.0
    while(i < Double(list.count)){
        newlist[Int(i)] = list[Int(i)]
        i = i + 1.0
    }
    newlist[Int(Double(list.count))] = a
        
    delete(list)
        
    return newlist
}


func AddNumberRef(_ list : inout NumberArrayReference, _ i : Double) -> Void{
    var i = i;
    list.numberArray = AddNumber(&list.numberArray, i)
}


func RemoveNumber(_ list : inout [Double], _ n : Double) -> [Double]{
    var n = n;
    var newlist : [Double]
    var i : Double

    newlist = Array(repeating:Double(), count: Int(Double(list.count) - 1.0))

    if(n >= 0.0 && n < Double(list.count)){
        i = 0.0
        while(i < Double(list.count)){
            if(i < n){
                newlist[Int(i)] = list[Int(i)]
            }
            if(i > n){
                newlist[Int(i - 1.0)] = list[Int(i)]
            }
            i = i + 1.0
        }

        delete(list)
    }else{
        delete(newlist)
    }
        
    return newlist
}


func GetNumberRef(_ list : inout NumberArrayReference, _ i : Double) -> Double{
    var i = i;
    return list.numberArray[Int(i)]
}


func RemoveNumberRef(_ list : inout NumberArrayReference, _ i : Double) -> Void{
    var i = i;
    list.numberArray = RemoveNumber(&list.numberArray, i)
}


func AddString(_ list : inout [StringReference], _ a : inout StringReference) -> [StringReference]{
    var newlist : [StringReference]
    var i : Double

    newlist = Array(repeating:StringReference(), count: Int(Double(list.count) + 1.0))

    i = 0.0
    while(i < Double(list.count)){
        newlist[Int(i)] = list[Int(i)]
        i = i + 1.0
    }
    newlist[Int(Double(list.count))] = a
        
    delete(list)
        
    return newlist
}


func AddStringRef(_ list : inout StringArrayReference, _ i : inout StringReference) -> Void{
    list.stringArray = AddString(&list.stringArray, &i)
}


func RemoveString(_ list : inout [StringReference], _ n : Double) -> [StringReference]{
    var n = n;
    var newlist : [StringReference]
    var i : Double

    newlist = Array(repeating:StringReference(), count: Int(Double(list.count) - 1.0))

    if(n >= 0.0 && n < Double(list.count)){
        i = 0.0
        while(i < Double(list.count)){
            if(i < n){
                newlist[Int(i)] = list[Int(i)]
            }
            if(i > n){
                newlist[Int(i - 1.0)] = list[Int(i)]
            }
            i = i + 1.0
        }

        delete(list)
    }else{
        delete(newlist)
    }
        
    return newlist
}


func GetStringRef(_ list : inout StringArrayReference, _ i : Double) -> StringReferenceReferenceClass{
    var i = i;
    var returnReference = StringReferenceReferenceClass()
    returnReference.ref = list.stringArray[Int(i)]
    return returnReference
}


func RemoveStringRef(_ list : inout StringArrayReference, _ i : Double) -> Void{
    var i = i;
    list.stringArray = RemoveString(&list.stringArray, i)
}


func AddBoolean(_ list : inout [Bool], _ a : Bool) -> [Bool]{
    var a = a;
    var newlist : [Bool]
    var i : Double

    newlist = Array(repeating:Bool(), count: Int(Double(list.count) + 1.0))
    i = 0.0
    while(i < Double(list.count)){
        newlist[Int(i)] = list[Int(i)]
        i = i + 1.0
    }
    newlist[Int(Double(list.count))] = a
        
    delete(list)
        
    return newlist
}


func AddBooleanRef(_ list : inout BooleanArrayReference, _ i : Bool) -> Void{
    var i = i;
    list.booleanArray = AddBoolean(&list.booleanArray, i)
}


func RemoveBoolean(_ list : inout [Bool], _ n : Double) -> [Bool]{
    var n = n;
    var newlist : [Bool]
    var i : Double

    newlist = Array(repeating:Bool(), count: Int(Double(list.count) - 1.0))

    if(n >= 0.0 && n < Double(list.count)){
        i = 0.0
        while(i < Double(list.count)){
            if(i < n){
                newlist[Int(i)] = list[Int(i)]
            }
            if(i > n){
                newlist[Int(i - 1.0)] = list[Int(i)]
            }
            i = i + 1.0
        }

        delete(list)
    }else{
        delete(newlist)
    }
        
    return newlist
}


func GetBooleanRef(_ list : inout BooleanArrayReference, _ i : Double) -> Bool{
    var i = i;
    return list.booleanArray[Int(i)]
}


func RemoveDecimalRef(_ list : inout BooleanArrayReference, _ i : Double) -> Void{
    var i = i;
    list.booleanArray = RemoveBoolean(&list.booleanArray, i)
}


func AddCharacter(_ list : inout [Character], _ a : Character) -> [Character]{
    var a = a;
    var newlist : [Character]
    var i : Double

    newlist = Array(repeating:Character(" "), count: Int(Double(list.count) + 1.0))
    i = 0.0
    while(i < Double(list.count)){
        newlist[Int(i)] = list[Int(i)]
        i = i + 1.0
    }
    newlist[Int(Double(list.count))] = a
        
    delete(list)
        
    return newlist
}


func AddCharacterRef(_ list : inout StringReference, _ i : Character) -> Void{
    var i = i;
    list.stringx = AddCharacter(&list.stringx, i)
}


func RemoveCharacter(_ list : inout [Character], _ n : Double) -> [Character]{
    var n = n;
    var newlist : [Character]
    var i : Double

    newlist = Array(repeating:Character(" "), count: Int(Double(list.count) - 1.0))

    if(n >= 0.0 && n < Double(list.count)){
        i = 0.0
        while(i < Double(list.count)){
            if(i < n){
                newlist[Int(i)] = list[Int(i)]
            }
            if(i > n){
                newlist[Int(i - 1.0)] = list[Int(i)]
            }
            i = i + 1.0
        }

        delete(list)
    }else{
        delete(newlist)
    }

    return newlist
}


func GetCharacterRef(_ list : inout StringReference, _ i : Double) -> Character{
    var i = i;
    return list.stringx[Int(i)]
}


func RemoveCharacterRef(_ list : inout StringReference, _ i : Double) -> Void{
    var i = i;
    list.stringx = RemoveCharacter(&list.stringx, i)
}


func Negate(_ x : Double) -> Double{
    var x = x;
    return -x
}


func Positive(_ x : Double) -> Double{
    var x = x;
    return +x
}


func Factorial(_ x : Double) -> Double{
    var x = x;
    var i, f : Double
    f = 1.0

    i = 2.0
    while(i <= x){
        f = f*i
        i = i + 1.0
    }

    return f
}


func Roundx(_ x : Double) -> Double{
    var x = x;
    return floor(x + 0.5)
}


func BankersRound(_ x : Double) -> Double{
    var x = x;
    var r : Double
    if(Absolute(x - Truncate(x)) == 0.5){
        if(!DivisibleBy(Roundx(x), 2.0)){
            r = Roundx(x) - 1.0
        }else{
            r = Roundx(x)
        }
    }else{
        r = Roundx(x)
    }

    return r
}


func Ceil(_ x : Double) -> Double{
    var x = x;
    return ceil(x)
}


func Floorx(_ x : Double) -> Double{
    var x = x;
    return floor(x)
}


func Truncate(_ x : Double) -> Double{
    var x = x;
    var t : Double
    if(x >= 0.0){
        t = floor(x)
    }else{
        t = ceil(x)
    }

    return t
}


func Absolute(_ x : Double) -> Double{
    var x = x;
    return abs(x)
}


func Logarithm(_ x : Double) -> Double{
    var x = x;
    return log10(x)
}


func NaturalLogarithm(_ x : Double) -> Double{
    var x = x;
    return log(x)
}


func Sinx(_ x : Double) -> Double{
    var x = x;
    return sin(x)
}


func Cosx(_ x : Double) -> Double{
    var x = x;
    return cos(x)
}


func Tanx(_ x : Double) -> Double{
    var x = x;
    return tan(x)
}


func Asinx(_ x : Double) -> Double{
    var x = x;
    return asin(x)
}


func Acosx(_ x : Double) -> Double{
    var x = x;
    return acos(x)
}


func Atanx(_ x : Double) -> Double{
    var x = x;
    return atan(x)
}


func Atan2(_ y : Double, _ x : Double) -> Double{
    var y = y;
    var x = x;
    var a : Double
    a = 0.0

    if(x > 0.0){
        a = Atanx(y/x)
    }else if(x < 0.0 && y >= 0.0){
        a = Atanx(y/x) + Double.pi
    }else if(x < 0.0 && y < 0.0){
        a = Atanx(y/x) - Double.pi
    }else if(x == 0.0 && y > 0.0){
        a = Double.pi/2.0
    }else if(x == 0.0 && y < 0.0){
        a = -Double.pi/2.0
    }

    return a
}


func Squareroot(_ x : Double) -> Double{
    var x = x;
    return sqrt(x)
}


func Expx(_ x : Double) -> Double{
    var x = x;
    return exp(x)
}


func DivisibleBy(_ a : Double, _ b : Double) -> Bool{
    var a = a;
    var b = b;
    return ((a.truncatingRemainder(dividingBy:b)) == 0.0)
}


func Combinations(_ n : Double, _ k : Double) -> Double{
    var n = n;
    var k = k;
    return Factorial(n)/(Factorial(n - k)*Factorial(k))
}


func EpsilonCompareApproximateDigits(_ a : Double, _ b : Double, _ digits : Double) -> Bool{
    var a = a;
    var b = b;
    var digits = digits;
    var ad, bd, d, epsilon : Double
    var ret : Bool
    if(a < 0.0 && b < 0.0 || a > 0.0 && b > 0.0){
        if(a < 0.0 && b < 0.0){
            a = -a
            b = -b
        }
        ad = log10(a)
        bd = log10(b)
        d = max(ad, bd)
        epsilon = pow(10.0, d - digits)
        ret = abs(a - b) > epsilon
    }else{
        ret = false
    }

    return ret
}


func EpsilonCompare(_ a : Double, _ b : Double, _ epsilon : Double) -> Bool{
    var a = a;
    var b = b;
    var epsilon = epsilon;
    return abs(a - b) < epsilon
}


func GreatestCommonDivisor(_ a : Double, _ b : Double) -> Double{
    var a = a;
    var b = b;
    var t : Double
    while(b != 0.0){
        t = b
        b = a.truncatingRemainder(dividingBy:b)
        a = t
    }

    return a
}


func IsInteger(_ a : Double) -> Bool{
    var a = a;
    return (a - floor(a)) == 0.0
}


func GreatestCommonDivisorWithCheck(_ a : Double, _ b : Double, _ gcdReference : inout NumberReference) -> Bool{
    var a = a;
    var b = b;
    var success : Bool
    var gcd : Double
    if(IsInteger(a) && IsInteger(b)){
        gcd = GreatestCommonDivisor(a, b)
        gcdReference.numberValue = gcd
        success = true
    }else{
        success = false
    }

    return success
}


func LeastCommonMultiple(_ a : Double, _ b : Double) -> Double{
    var a = a;
    var b = b;
    var lcm : Double
    if(a > 0.0 && b > 0.0){
        lcm = abs(a*b)/GreatestCommonDivisor(a, b)
    }else{
        lcm = 0.0
    }

    return lcm
}


func Sign(_ a : Double) -> Double{
    var a = a;
    var s : Double
    if(a > 0.0){
        s = 1.0
    }else if(a < 0.0){
        s = -1.0
    }else{
        s = 0.0
    }

    return s
}


func Max(_ a : Double, _ b : Double) -> Double{
    var a = a;
    var b = b;
    return max(a, b)
}


func Min(_ a : Double, _ b : Double) -> Double{
    var a = a;
    var b = b;
    return min(a, b)
}


func Power(_ a : Double, _ b : Double) -> Double{
    var a = a;
    var b = b;
    return pow(a, b)
}


func StringToNumberArray(_ stringx : inout [Character]) -> [Double]{
    var i : Double
    var array : [Double]

    array = Array(repeating:Double(), count: Int(Double(stringx.count)))

    i = 0.0
    while(i < Double(stringx.count)){
        array[Int(i)] = charToDouble(stringx[Int(i)])
        i = i + 1.0
    }
    return array
}


func NumberArrayToString(_ array : inout [Double]) -> [Character]{
    var i : Double
    var stringx : [Character]

    stringx = Array(repeating:Character(" "), count: Int(Double(array.count)))

    i = 0.0
    while(i < Double(array.count)){
        stringx[Int(i)] = Character(Unicode.Scalar(Int(array[Int(i)]))!)
        i = i + 1.0
    }
    return stringx
}


func NumberArraysEqual(_ a : inout [Double], _ b : inout [Double]) -> Bool{
    var equal : Bool
    var i : Double

    equal = true
    if(Double(a.count) == Double(b.count)){
        i = 0.0
        while(i < Double(a.count) && equal){
            if(a[Int(i)] != b[Int(i)]){
                equal = false
            }
            i = i + 1.0
        }
    }else{
        equal = false
    }

    return equal
}


func BooleanArraysEqual(_ a : inout [Bool], _ b : inout [Bool]) -> Bool{
    var equal : Bool
    var i : Double

    equal = true
    if(Double(a.count) == Double(b.count)){
        i = 0.0
        while(i < Double(a.count) && equal){
            if(a[Int(i)] != b[Int(i)]){
                equal = false
            }
            i = i + 1.0
        }
    }else{
        equal = false
    }

    return equal
}


func StringsEqual(_ a : inout [Character], _ b : inout [Character]) -> Bool{
    var equal : Bool
    var i : Double

    equal = true
    if(Double(a.count) == Double(b.count)){
        i = 0.0
        while(i < Double(a.count) && equal){
            if(a[Int(i)] != b[Int(i)]){
                equal = false
            }
            i = i + 1.0
        }
    }else{
        equal = false
    }

    return equal
}


func FillNumberArray(_ a : inout [Double], _ value : Double) -> Void{
    var value = value;
    var i : Double

    i = 0.0
    while(i < Double(a.count)){
        a[Int(i)] = value
        i = i + 1.0
    }
}


func FillString(_ a : inout [Character], _ value : Character) -> Void{
    var value = value;
    var i : Double

    i = 0.0
    while(i < Double(a.count)){
        a[Int(i)] = value
        i = i + 1.0
    }
}


func FillBooleanArray(_ a : inout [Bool], _ value : Bool) -> Void{
    var value = value;
    var i : Double

    i = 0.0
    while(i < Double(a.count)){
        a[Int(i)] = value
        i = i + 1.0
    }
}


func FillNumberArrayRange(_ a : inout [Double], _ value : Double, _ from : Double, _ to : Double) -> Bool{
    var value = value;
    var from = from;
    var to = to;
    var i, length : Double
    var success : Bool

    if(from >= 0.0 && from <= Double(a.count) && to >= 0.0 && to <= Double(a.count) && from <= to){
        length = to - from
        i = 0.0
        while(i < length){
            a[Int(from + i)] = value
            i = i + 1.0
        }

        success = true
    }else{
        success = false
    }

    return success
}


func FillBooleanArrayRange(_ a : inout [Bool], _ value : Bool, _ from : Double, _ to : Double) -> Bool{
    var value = value;
    var from = from;
    var to = to;
    var i, length : Double
    var success : Bool

    if(from >= 0.0 && from <= Double(a.count) && to >= 0.0 && to <= Double(a.count) && from <= to){
        length = to - from
        i = 0.0
        while(i < length){
            a[Int(from + i)] = value
            i = i + 1.0
        }

        success = true
    }else{
        success = false
    }

    return success
}


func FillStringRange(_ a : inout [Character], _ value : Character, _ from : Double, _ to : Double) -> Bool{
    var value = value;
    var from = from;
    var to = to;
    var i, length : Double
    var success : Bool

    if(from >= 0.0 && from <= Double(a.count) && to >= 0.0 && to <= Double(a.count) && from <= to){
        length = to - from
        i = 0.0
        while(i < length){
            a[Int(from + i)] = value
            i = i + 1.0
        }

        success = true
    }else{
        success = false
    }

    return success
}


func CopyNumberArray(_ a : inout [Double]) -> [Double]{
    var i : Double
    var n : [Double]

    n = Array(repeating:Double(), count: Int(Double(a.count)))

    i = 0.0
    while(i < Double(a.count)){
        n[Int(i)] = a[Int(i)]
        i = i + 1.0
    }

    return n
}


func CopyBooleanArray(_ a : inout [Bool]) -> [Bool]{
    var i : Double
    var n : [Bool]

    n = Array(repeating:Bool(), count: Int(Double(a.count)))

    i = 0.0
    while(i < Double(a.count)){
        n[Int(i)] = a[Int(i)]
        i = i + 1.0
    }

    return n
}


func CopyString(_ a : inout [Character]) -> [Character]{
    var i : Double
    var n : [Character]

    n = Array(repeating:Character(" "), count: Int(Double(a.count)))

    i = 0.0
    while(i < Double(a.count)){
        n[Int(i)] = a[Int(i)]
        i = i + 1.0
    }

    return n
}


func CopyNumberArrayRange(_ a : inout [Double], _ from : Double, _ to : Double, _ copyReference : inout NumberArrayReference) -> Bool{
    var from = from;
    var to = to;
    var i, length : Double
    var n : [Double]
    var success : Bool

    if(from >= 0.0 && from <= Double(a.count) && to >= 0.0 && to <= Double(a.count) && from <= to){
        length = to - from
        n = Array(repeating:Double(), count: Int(length))

        i = 0.0
        while(i < length){
            n[Int(i)] = a[Int(from + i)]
            i = i + 1.0
        }

        copyReference.numberArray = n
        success = true
    }else{
        success = false
    }

    return success
}


func CopyBooleanArrayRange(_ a : inout [Bool], _ from : Double, _ to : Double, _ copyReference : inout BooleanArrayReference) -> Bool{
    var from = from;
    var to = to;
    var i, length : Double
    var n : [Bool]
    var success : Bool

    if(from >= 0.0 && from <= Double(a.count) && to >= 0.0 && to <= Double(a.count) && from <= to){
        length = to - from
        n = Array(repeating:Bool(), count: Int(length))

        i = 0.0
        while(i < length){
            n[Int(i)] = a[Int(from + i)]
            i = i + 1.0
        }

        copyReference.booleanArray = n
        success = true
    }else{
        success = false
    }

    return success
}


func CopyStringRange(_ a : inout [Character], _ from : Double, _ to : Double, _ copyReference : inout StringReference) -> Bool{
    var from = from;
    var to = to;
    var i, length : Double
    var n : [Character]
    var success : Bool

    if(from >= 0.0 && from <= Double(a.count) && to >= 0.0 && to <= Double(a.count) && from <= to){
        length = to - from
        n = Array(repeating:Character(" "), count: Int(length))

        i = 0.0
        while(i < length){
            n[Int(i)] = a[Int(from + i)]
            i = i + 1.0
        }

        copyReference.stringx = n
        success = true
    }else{
        success = false
    }

    return success
}


func IsLastElement(_ length : Double, _ index : Double) -> Bool{
    var length = length;
    var index = index;
    return index + 1.0 == length
}


func CreateNumberArray(_ length : Double, _ value : Double) -> [Double]{
    var length = length;
    var value = value;
    var array : [Double]

    array = Array(repeating:Double(), count: Int(length))
    FillNumberArray(&array, value)

    return array
}


func CreateBooleanArray(_ length : Double, _ value : Bool) -> [Bool]{
    var length = length;
    var value = value;
    var array : [Bool]

    array = Array(repeating:Bool(), count: Int(length))
    FillBooleanArray(&array, value)

    return array
}


func CreateString(_ length : Double, _ value : Character) -> [Character]{
    var length = length;
    var value = value;
    var array : [Character]

    array = Array(repeating:Character(" "), count: Int(length))
    FillString(&array, value)

    return array
}


func SwapElementsOfArray(_ A : inout [Double], _ ai : Double, _ bi : Double) -> Void{
    var ai = ai;
    var bi = bi;
    var tmp : Double

    tmp = A[Int(ai)]
    A[Int(ai)] = A[Int(bi)]
    A[Int(bi)] = tmp
}


func charToLowerCase(_ character : Character) -> Character{
    var character = character;
    var toReturn : Character

    toReturn = character
    if(character == "A"){
        toReturn = "a"
    }else if(character == "B"){
        toReturn = "b"
    }else if(character == "C"){
        toReturn = "c"
    }else if(character == "D"){
        toReturn = "d"
    }else if(character == "E"){
        toReturn = "e"
    }else if(character == "F"){
        toReturn = "f"
    }else if(character == "G"){
        toReturn = "g"
    }else if(character == "H"){
        toReturn = "h"
    }else if(character == "I"){
        toReturn = "i"
    }else if(character == "J"){
        toReturn = "j"
    }else if(character == "K"){
        toReturn = "k"
    }else if(character == "L"){
        toReturn = "l"
    }else if(character == "M"){
        toReturn = "m"
    }else if(character == "N"){
        toReturn = "n"
    }else if(character == "O"){
        toReturn = "o"
    }else if(character == "P"){
        toReturn = "p"
    }else if(character == "Q"){
        toReturn = "q"
    }else if(character == "R"){
        toReturn = "r"
    }else if(character == "S"){
        toReturn = "s"
    }else if(character == "T"){
        toReturn = "t"
    }else if(character == "U"){
        toReturn = "u"
    }else if(character == "V"){
        toReturn = "v"
    }else if(character == "W"){
        toReturn = "w"
    }else if(character == "X"){
        toReturn = "x"
    }else if(character == "Y"){
        toReturn = "y"
    }else if(character == "Z"){
        toReturn = "z"
    }

    return toReturn
}


func charToUpperCase(_ character : Character) -> Character{
    var character = character;
    var toReturn : Character

    toReturn = character
    if(character == "a"){
        toReturn = "A"
    }else if(character == "b"){
        toReturn = "B"
    }else if(character == "c"){
        toReturn = "C"
    }else if(character == "d"){
        toReturn = "D"
    }else if(character == "e"){
        toReturn = "E"
    }else if(character == "f"){
        toReturn = "F"
    }else if(character == "g"){
        toReturn = "G"
    }else if(character == "h"){
        toReturn = "H"
    }else if(character == "i"){
        toReturn = "I"
    }else if(character == "j"){
        toReturn = "J"
    }else if(character == "k"){
        toReturn = "K"
    }else if(character == "l"){
        toReturn = "L"
    }else if(character == "m"){
        toReturn = "M"
    }else if(character == "n"){
        toReturn = "N"
    }else if(character == "o"){
        toReturn = "O"
    }else if(character == "p"){
        toReturn = "P"
    }else if(character == "q"){
        toReturn = "Q"
    }else if(character == "r"){
        toReturn = "R"
    }else if(character == "s"){
        toReturn = "S"
    }else if(character == "t"){
        toReturn = "T"
    }else if(character == "u"){
        toReturn = "U"
    }else if(character == "v"){
        toReturn = "V"
    }else if(character == "w"){
        toReturn = "W"
    }else if(character == "x"){
        toReturn = "X"
    }else if(character == "y"){
        toReturn = "Y"
    }else if(character == "z"){
        toReturn = "Z"
    }

    return toReturn
}


func charIsUpperCase(_ character : Character) -> Bool{
    var character = character;
    var isUpper : Bool

    isUpper = false
    if(character == "A"){
        isUpper = true
    }else if(character == "B"){
        isUpper = true
    }else if(character == "C"){
        isUpper = true
    }else if(character == "D"){
        isUpper = true
    }else if(character == "E"){
        isUpper = true
    }else if(character == "F"){
        isUpper = true
    }else if(character == "G"){
        isUpper = true
    }else if(character == "H"){
        isUpper = true
    }else if(character == "I"){
        isUpper = true
    }else if(character == "J"){
        isUpper = true
    }else if(character == "K"){
        isUpper = true
    }else if(character == "L"){
        isUpper = true
    }else if(character == "M"){
        isUpper = true
    }else if(character == "N"){
        isUpper = true
    }else if(character == "O"){
        isUpper = true
    }else if(character == "P"){
        isUpper = true
    }else if(character == "Q"){
        isUpper = true
    }else if(character == "R"){
        isUpper = true
    }else if(character == "S"){
        isUpper = true
    }else if(character == "T"){
        isUpper = true
    }else if(character == "U"){
        isUpper = true
    }else if(character == "V"){
        isUpper = true
    }else if(character == "W"){
        isUpper = true
    }else if(character == "X"){
        isUpper = true
    }else if(character == "Y"){
        isUpper = true
    }else if(character == "Z"){
        isUpper = true
    }

    return isUpper
}


func charIsLowerCase(_ character : Character) -> Bool{
    var character = character;
    var isLower : Bool

    isLower = false
    if(character == "a"){
        isLower = true
    }else if(character == "b"){
        isLower = true
    }else if(character == "c"){
        isLower = true
    }else if(character == "d"){
        isLower = true
    }else if(character == "e"){
        isLower = true
    }else if(character == "f"){
        isLower = true
    }else if(character == "g"){
        isLower = true
    }else if(character == "h"){
        isLower = true
    }else if(character == "i"){
        isLower = true
    }else if(character == "j"){
        isLower = true
    }else if(character == "k"){
        isLower = true
    }else if(character == "l"){
        isLower = true
    }else if(character == "m"){
        isLower = true
    }else if(character == "n"){
        isLower = true
    }else if(character == "o"){
        isLower = true
    }else if(character == "p"){
        isLower = true
    }else if(character == "q"){
        isLower = true
    }else if(character == "r"){
        isLower = true
    }else if(character == "s"){
        isLower = true
    }else if(character == "t"){
        isLower = true
    }else if(character == "u"){
        isLower = true
    }else if(character == "v"){
        isLower = true
    }else if(character == "w"){
        isLower = true
    }else if(character == "x"){
        isLower = true
    }else if(character == "y"){
        isLower = true
    }else if(character == "z"){
        isLower = true
    }

    return isLower
}


func charIsLetter(_ character : Character) -> Bool{
    var character = character;
    return charIsUpperCase(character) || charIsLowerCase(character)
}


func charIsNumber(_ character : Character) -> Bool{
    var character = character;
    var isNumberx : Bool

    isNumberx = false
    if(character == "0"){
        isNumberx = true
    }else if(character == "1"){
        isNumberx = true
    }else if(character == "2"){
        isNumberx = true
    }else if(character == "3"){
        isNumberx = true
    }else if(character == "4"){
        isNumberx = true
    }else if(character == "5"){
        isNumberx = true
    }else if(character == "6"){
        isNumberx = true
    }else if(character == "7"){
        isNumberx = true
    }else if(character == "8"){
        isNumberx = true
    }else if(character == "9"){
        isNumberx = true
    }

    return isNumberx
}


func charIsWhiteSpace(_ character : Character) -> Bool{
    var character = character;
    var isWhiteSpacex : Bool

    isWhiteSpacex = false
    if(character == " "){
        isWhiteSpacex = true
    }else if(character == "\t"){
        isWhiteSpacex = true
    }else if(character == "\n"){
        isWhiteSpacex = true
    }else if(character == "\r"){
        isWhiteSpacex = true
    }

    return isWhiteSpacex
}


func charIsSymbol(_ character : Character) -> Bool{
    var character = character;
    var isSymbolx : Bool

    isSymbolx = false
    if(character == "!"){
        isSymbolx = true
    }else if(character == "\""){
        isSymbolx = true
    }else if(character == "#"){
        isSymbolx = true
    }else if(character == "$"){
        isSymbolx = true
    }else if(character == "%"){
        isSymbolx = true
    }else if(character == "&"){
        isSymbolx = true
    }else if(character == "\'"){
        isSymbolx = true
    }else if(character == "("){
        isSymbolx = true
    }else if(character == ")"){
        isSymbolx = true
    }else if(character == "*"){
        isSymbolx = true
    }else if(character == "+"){
        isSymbolx = true
    }else if(character == ","){
        isSymbolx = true
    }else if(character == "-"){
        isSymbolx = true
    }else if(character == "."){
        isSymbolx = true
    }else if(character == "/"){
        isSymbolx = true
    }else if(character == ":"){
        isSymbolx = true
    }else if(character == ";"){
        isSymbolx = true
    }else if(character == "<"){
        isSymbolx = true
    }else if(character == "="){
        isSymbolx = true
    }else if(character == ">"){
        isSymbolx = true
    }else if(character == "?"){
        isSymbolx = true
    }else if(character == "@"){
        isSymbolx = true
    }else if(character == "["){
        isSymbolx = true
    }else if(character == "\\"){
        isSymbolx = true
    }else if(character == "]"){
        isSymbolx = true
    }else if(character == "^"){
        isSymbolx = true
    }else if(character == "_"){
        isSymbolx = true
    }else if(character == "`"){
        isSymbolx = true
    }else if(character == "{"){
        isSymbolx = true
    }else if(character == "|"){
        isSymbolx = true
    }else if(character == "}"){
        isSymbolx = true
    }else if(character == "~"){
        isSymbolx = true
    }

    return isSymbolx
}


func AssertFalse(_ b : Bool, _ failures : inout NumberReference) -> Void{
    var b = b;
    if(b){
        failures.numberValue = failures.numberValue + 1.0
    }
}


func AssertTrue(_ b : Bool, _ failures : inout NumberReference) -> Void{
    var b = b;
    if(!b){
        failures.numberValue = failures.numberValue + 1.0
    }
}


func AssertEquals(_ a : Double, _ b : Double, _ failures : inout NumberReference) -> Void{
    var a = a;
    var b = b;
    if(a != b){
        failures.numberValue = failures.numberValue + 1.0
    }
}


func AssertBooleansEqual(_ a : Bool, _ b : Bool, _ failures : inout NumberReference) -> Void{
    var a = a;
    var b = b;
    if(a != b){
        failures.numberValue = failures.numberValue + 1.0
    }
}


func AssertCharactersEqual(_ a : Character, _ b : Character, _ failures : inout NumberReference) -> Void{
    var a = a;
    var b = b;
    if(a != b){
        failures.numberValue = failures.numberValue + 1.0
    }
}


func AssertStringEquals(_ a : inout [Character], _ b : inout [Character], _ failures : inout NumberReference) -> Void{
    if(!StringsEqual(&a, &b)){
        failures.numberValue = failures.numberValue + 1.0
    }
}


func AssertNumberArraysEqual(_ a : inout [Double], _ b : inout [Double], _ failures : inout NumberReference) -> Void{
    var i : Double

    if(Double(a.count) == Double(b.count)){
        i = 0.0
        while(i < Double(a.count)){
            AssertEquals(a[Int(i)], b[Int(i)], &failures)
            i = i + 1.0
        }
    }else{
        failures.numberValue = failures.numberValue + 1.0
    }
}


func AssertBooleanArraysEqual(_ a : inout [Bool], _ b : inout [Bool], _ failures : inout NumberReference) -> Void{
    var i : Double

    if(Double(a.count) == Double(b.count)){
        i = 0.0
        while(i < Double(a.count)){
            AssertBooleansEqual(a[Int(i)], b[Int(i)], &failures)
            i = i + 1.0
        }
    }else{
        failures.numberValue = failures.numberValue + 1.0
    }
}


func AssertStringArraysEqual(_ a : inout [StringReference], _ b : inout [StringReference], _ failures : inout NumberReference) -> Void{
    var i : Double

    if(Double(a.count) == Double(b.count)){
        i = 0.0
        while(i < Double(a.count)){
            AssertStringEquals(&a[Int(i)].stringx, &b[Int(i)].stringx, &failures)
            i = i + 1.0
        }
    }else{
        failures.numberValue = failures.numberValue + 1.0
    }
}


func SubstringWithCheck(_ stringx : inout [Character], _ from : Double, _ to : Double, _ stringReference : inout StringReference) -> Bool{
    var from = from;
    var to = to;
    var success : Bool
    if(from < Double(stringx.count) && to < Double(stringx.count) && from <= to && from >= 0.0 && to >= 0.0){
        stringReference.stringx = Substring(&stringx, from, to)
        success = true
    }else{
        success = false
    }

    return success
}


func Substring(_ stringx : inout [Character], _ from : Double, _ to : Double) -> [Character]{
    var from = from;
    var to = to;
    var n : [Character]
    var i : Double
    n = Array(repeating:Character(" "), count: Int(max(to - from, 0.0)))

    i = from
    while(i < to){
        n[Int(i - from)] = stringx[Int(i)]
        i = i + 1.0
    }

    return n
}


func AppendString(_ stringx : inout [Character], _ s : inout [Character]) -> [Character]{
    var newString : [Character]
    newString = ConcatenateString(&stringx, &s)

    delete(stringx)

    return newString
}


func ConcatenateString(_ stringx : inout [Character], _ s : inout [Character]) -> [Character]{
    var newString : [Character]
    var i : Double
    newString = Array(repeating:Character(" "), count: Int(Double(stringx.count) + Double(s.count)))

    i = 0.0
    while(i < Double(stringx.count)){
        newString[Int(i)] = stringx[Int(i)]
        i = i + 1.0
    }

    i = 0.0
    while(i < Double(s.count)){
        newString[Int(Double(stringx.count) + i)] = s[Int(i)]
        i = i + 1.0
    }

    return newString
}


func AppendCharacter(_ stringx : inout [Character], _ c : Character) -> [Character]{
    var c = c;
    var newString : [Character]
    newString = ConcatenateCharacter(&stringx, c)

    delete(stringx)

    return newString
}


func ConcatenateCharacter(_ stringx : inout [Character], _ c : Character) -> [Character]{
    var c = c;
    var newString : [Character]
    var i : Double
    newString = Array(repeating:Character(" "), count: Int(Double(stringx.count) + 1.0))

    i = 0.0
    while(i < Double(stringx.count)){
        newString[Int(i)] = stringx[Int(i)]
        i = i + 1.0
    }

    newString[Int(Double(stringx.count))] = c

    return newString
}


func SplitByCharacter(_ toSplit : inout [Character], _ splitBy : Character) -> [StringReference]{
    var splitBy = splitBy;
    var split : [StringReference]
    var stringToSplitBy : [Character]
    stringToSplitBy = Array(repeating:Character(" "), count: Int(1))
    stringToSplitBy[Int(0)] = splitBy

    split = SplitByString(&toSplit, &stringToSplitBy)

    delete(stringToSplitBy)

    return split
}


func IndexOfCharacter(_ stringx : inout [Character], _ character : Character, _ indexReference : inout NumberReference) -> Bool{
    var character = character;
    var i : Double
    var found : Bool
    found = false
    i = 0.0
    while(i < Double(stringx.count) && !found){
        if(stringx[Int(i)] == character){
            found = true
            indexReference.numberValue = i
        }
        i = i + 1.0
    }

    return found
}


func SubstringEqualsWithCheck(_ stringx : inout [Character], _ from : Double, _ substring : inout [Character], _ equalsReference : inout BooleanReference) -> Bool{
    var from = from;
    var success : Bool
    if(from < Double(stringx.count)){
        success = true
        equalsReference.booleanValue = SubstringEquals(&stringx, from, &substring)
    }else{
        success = false
    }

    return success
}


func SubstringEquals(_ stringx : inout [Character], _ from : Double, _ substring : inout [Character]) -> Bool{
    var from = from;
    var i : Double
    var equal : Bool
    equal = true
    i = 0.0
    while(i < Double(substring.count) && equal){
        if(stringx[Int(from + i)] != substring[Int(i)]){
            equal = false
        }
        i = i + 1.0
    }

    return equal
}


func IndexOfString(_ stringx : inout [Character], _ substring : inout [Character], _ indexReference : inout NumberReference) -> Bool{
    var i : Double
    var found : Bool
    found = false
    i = 0.0
    while(i < Double(stringx.count) - Double(substring.count) + 1.0 && !found){
        if(SubstringEquals(&stringx, i, &substring)){
            found = true
            indexReference.numberValue = i
        }
        i = i + 1.0
    }

    return found
}


func ContainsCharacter(_ stringx : inout [Character], _ character : Character) -> Bool{
    var character = character;
    return IndexOfCharacter(&stringx, character, &NumberReferenceCreateFunction().ref)
}


func ContainsString(_ stringx : inout [Character], _ substring : inout [Character]) -> Bool{
    return IndexOfString(&stringx, &substring, &NumberReferenceCreateFunction().ref)
}


func ToUpperCase(_ stringx : inout [Character]) -> Void{
    var i : Double
    i = 0.0
    while(i < Double(stringx.count)){
        stringx[Int(i)] = cToUpperCase(stringx[Int(i)])
        i = i + 1.0
    }
}


func ToLowerCase(_ stringx : inout [Character]) -> Void{
    var i : Double
    i = 0.0
    while(i < Double(stringx.count)){
        stringx[Int(i)] = cToLowerCase(stringx[Int(i)])
        i = i + 1.0
    }
}


func EqualsIgnoreCase(_ a : inout [Character], _ b : inout [Character]) -> Bool{
    var equal : Bool
    var i : Double
    if(Double(a.count) == Double(b.count)){
        equal = true
        i = 0.0
        while(i < Double(a.count) && equal){
            if(cToLowerCase(a[Int(i)]) != cToLowerCase(b[Int(i)])){
                equal = false
            }
            i = i + 1.0
        }
    }else{
        equal = false
    }

    return equal
}


func ReplacesString(_ stringx : inout [Character], _ toReplace : inout [Character], _ replaceWith : inout [Character]) -> [Character]{
    var result : [Character]
    var i : Double
    var equalsReference : BooleanReference
    var success : Bool
    equalsReference = BooleanReference()
    result = Array(repeating:Character(" "), count: Int(0))

    i = 0.0
    while(i < Double(stringx.count)){
        success = SubstringEqualsWithCheck(&stringx, i, &toReplace, &equalsReference)
        if(success){
            success = equalsReference.booleanValue
        }
        if(success && Double(toReplace.count) > 0.0){
            result = ConcatenateString(&result, &replaceWith)
            i = i + Double(toReplace.count)
        }else{
            result = ConcatenateCharacter(&result, stringx[Int(i)])
            i = i + 1.0
        }
    }

    return result
}


func ReplaceCharacter(_ stringx : inout [Character], _ toReplace : Character, _ replaceWith : Character) -> [Character]{
    var toReplace = toReplace;
    var replaceWith = replaceWith;
    var result : [Character]
    var i : Double
    result = Array(repeating:Character(" "), count: Int(0))

    i = 0.0
    while(i < Double(stringx.count)){
        if(stringx[Int(i)] == toReplace){
            result = ConcatenateCharacter(&result, replaceWith)
        }else{
            result = ConcatenateCharacter(&result, stringx[Int(i)])
        }
        i = i + 1.0
    }

    return result
}


func Trim(_ stringx : inout [Character]) -> [Character]{
    var result : [Character]
    var i, lastWhitespaceLocationStart, lastWhitespaceLocationEnd : Double
    var firstNonWhitespaceFound : Bool
    lastWhitespaceLocationStart = -1.0
    firstNonWhitespaceFound = false
    i = 0.0
    while(i < Double(stringx.count) && !firstNonWhitespaceFound){
        if(cIsWhiteSpace(stringx[Int(i)])){
            lastWhitespaceLocationStart = i
        }else{
            firstNonWhitespaceFound = true
        }
        i = i + 1.0
    }

    /* Find whitepaces at the end.*/
    lastWhitespaceLocationEnd = Double(stringx.count)
    firstNonWhitespaceFound = false
    i = Double(stringx.count) - 1.0
    while(i >= 0.0 && !firstNonWhitespaceFound){
        if(cIsWhiteSpace(stringx[Int(i)])){
            lastWhitespaceLocationEnd = i
        }else{
            firstNonWhitespaceFound = true
        }
        i = i - 1.0
    }

    if(lastWhitespaceLocationStart < lastWhitespaceLocationEnd){
        result = Substring(&stringx, lastWhitespaceLocationStart + 1.0, lastWhitespaceLocationEnd)
    }else{
        result = Array(repeating:Character(" "), count: Int(0))
    }

    return result
}


func StartsWith(_ stringx : inout [Character], _ start : inout [Character]) -> Bool{
    var startsWithString : Bool
    startsWithString = false
    if(Double(stringx.count) >= Double(start.count)){
        startsWithString = SubstringEquals(&stringx, 0.0, &start)
    }

    return startsWithString
}


func EndsWith(_ stringx : inout [Character], _ end : inout [Character]) -> Bool{
    var endsWithString : Bool
    endsWithString = false
    if(Double(stringx.count) >= Double(end.count)){
        endsWithString = SubstringEquals(&stringx, Double(stringx.count) - Double(end.count), &end)
    }

    return endsWithString
}


func SplitByString(_ toSplit : inout [Character], _ splitBy : inout [Character]) -> [StringReference]{
    var split : [StringReference]
    var next : [Character]
    var i : Double
    var c : Character
    var n : StringReference
    split = Array(repeating:StringReference(), count: Int(0))

    next = Array(repeating:Character(" "), count: Int(0))
    i = 0.0
    while(i < Double(toSplit.count)){
        c = toSplit[Int(i)]
        if(SubstringEquals(&toSplit, i, &splitBy)){
            if(Double(split.count) != 0.0 || i != 0.0){
                n = StringReference()
                n.stringx = next
                split = lAddString(&split, &n)
                next = Array(repeating:Character(" "), count: Int(0))
                i = i + Double(splitBy.count)
            }
        }else{
            next = AppendCharacter(&next, c)
            i = i + 1.0
        }
    }

    if(Double(next.count) > 0.0){
        n = StringReference()
        n.stringx = next
        split = lAddString(&split, &n)
    }

    return split
}


func lAddNumber(_ list : inout [Double], _ a : Double) -> [Double]{
    var a = a;
    var newlist : [Double]
    var i : Double
    newlist = Array(repeating:Double(), count: Int(Double(list.count) + 1.0))
    i = 0.0
    while(i < Double(list.count)){
        newlist[Int(i)] = list[Int(i)]
        i = i + 1.0
    }
    newlist[Int(Double(list.count))] = a
        
    delete(list)
        
    return newlist
}


func lAddNumberRef(_ list : inout NumberArrayReference, _ i : Double) -> Void{
    var i = i;
    list.numberArray = lAddNumber(&list.numberArray, i)
}


func lRemoveNumber(_ list : inout [Double], _ n : Double) -> [Double]{
    var n = n;
    var newlist : [Double]
    var i : Double
    newlist = Array(repeating:Double(), count: Int(Double(list.count) - 1.0))

    i = 0.0
    while(i < Double(list.count)){
        if(i < n){
            newlist[Int(i)] = list[Int(i)]
        }
        if(i > n){
            newlist[Int(i - 1.0)] = list[Int(i)]
        }
        i = i + 1.0
    }
        
    delete(list)
        
    return newlist
}


func lGetNumberRef(_ list : inout NumberArrayReference, _ i : Double) -> Double{
    var i = i;
    return list.numberArray[Int(i)]
}


func lRemoveNumberRef(_ list : inout NumberArrayReference, _ i : Double) -> Void{
    var i = i;
    list.numberArray = lRemoveNumber(&list.numberArray, i)
}


func lAddString(_ list : inout [StringReference], _ a : inout StringReference) -> [StringReference]{
    var newlist : [StringReference]
    var i : Double
    newlist = Array(repeating:StringReference(), count: Int(Double(list.count) + 1.0))

    i = 0.0
    while(i < Double(list.count)){
        newlist[Int(i)] = list[Int(i)]
        i = i + 1.0
    }
    newlist[Int(Double(list.count))] = a
        
    delete(list)
        
    return newlist
}


func lAddStringRef(_ list : inout StringArrayReference, _ i : inout StringReference) -> Void{
    list.stringArray = lAddString(&list.stringArray, &i)
}


func lRemoveString(_ list : inout [StringReference], _ n : Double) -> [StringReference]{
    var n = n;
    var newlist : [StringReference]
    var i : Double
    newlist = Array(repeating:StringReference(), count: Int(Double(list.count) - 1.0))

    i = 0.0
    while(i < Double(list.count)){
        if(i < n){
            newlist[Int(i)] = list[Int(i)]
        }
        if(i > n){
            newlist[Int(i - 1.0)] = list[Int(i)]
        }
        i = i + 1.0
    }
        
    delete(list)
        
    return newlist
}


func lGetStringRef(_ list : inout StringArrayReference, _ i : Double) -> StringReferenceReferenceClass{
    var i = i;
    var returnReference = StringReferenceReferenceClass()
    returnReference.ref = list.stringArray[Int(i)]
    return returnReference
}


func lRemoveStringRef(_ list : inout StringArrayReference, _ i : Double) -> Void{
    var i = i;
    list.stringArray = lRemoveString(&list.stringArray, i)
}


func lAddBoolean(_ list : inout [Bool], _ a : Bool) -> [Bool]{
    var a = a;
    var newlist : [Bool]
    var i : Double
    newlist = Array(repeating:Bool(), count: Int(Double(list.count) + 1.0))
    i = 0.0
    while(i < Double(list.count)){
        newlist[Int(i)] = list[Int(i)]
        i = i + 1.0
    }
    newlist[Int(Double(list.count))] = a
        
    delete(list)
        
    return newlist
}


func lAddBooleanRef(_ list : inout BooleanArrayReference, _ i : Bool) -> Void{
    var i = i;
    list.booleanArray = lAddBoolean(&list.booleanArray, i)
}


func lRemoveBoolean(_ list : inout [Bool], _ n : Double) -> [Bool]{
    var n = n;
    var newlist : [Bool]
    var i : Double
    newlist = Array(repeating:Bool(), count: Int(Double(list.count) - 1.0))

    i = 0.0
    while(i < Double(list.count)){
        if(i < n){
            newlist[Int(i)] = list[Int(i)]
        }
        if(i > n){
            newlist[Int(i - 1.0)] = list[Int(i)]
        }
        i = i + 1.0
    }
        
    delete(list)
        
    return newlist
}


func lGetBooleanRef(_ list : inout BooleanArrayReference, _ i : Double) -> Bool{
    var i = i;
    return list.booleanArray[Int(i)]
}


func lRemoveDecimalRef(_ list : inout BooleanArrayReference, _ i : Double) -> Void{
    var i = i;
    list.booleanArray = lRemoveBoolean(&list.booleanArray, i)
}


func lAddCharacter(_ list : inout [Character], _ a : Character) -> [Character]{
    var a = a;
    var newlist : [Character]
    var i : Double
    newlist = Array(repeating:Character(" "), count: Int(Double(list.count) + 1.0))
    i = 0.0
    while(i < Double(list.count)){
        newlist[Int(i)] = list[Int(i)]
        i = i + 1.0
    }
    newlist[Int(Double(list.count))] = a
        
    delete(list)
        
    return newlist
}


func lAddCharacterRef(_ list : inout StringReference, _ i : Character) -> Void{
    var i = i;
    list.stringx = lAddCharacter(&list.stringx, i)
}


func lRemoveCharacter(_ list : inout [Character], _ n : Double) -> [Character]{
    var n = n;
    var newlist : [Character]
    var i : Double
    newlist = Array(repeating:Character(" "), count: Int(Double(list.count) - 1.0))

    i = 0.0
    while(i < Double(list.count)){
        if(i < n){
            newlist[Int(i)] = list[Int(i)]
        }
        if(i > n){
            newlist[Int(i - 1.0)] = list[Int(i)]
        }
        i = i + 1.0
    }

    delete(list)

    return newlist
}


func lGetCharacterRef(_ list : inout StringReference, _ i : Double) -> Character{
    var i = i;
    return list.stringx[Int(i)]
}


func lRemoveCharacterRef(_ list : inout StringReference, _ i : Double) -> Void{
    var i = i;
    list.stringx = lRemoveCharacter(&list.stringx, i)
}


func arraysStringToNumberArray(_ stringx : inout [Character]) -> [Double]{
    var i : Double
    var array : [Double]
    array = Array(repeating:Double(), count: Int(Double(stringx.count)))

    i = 0.0
    while(i < Double(stringx.count)){
        array[Int(i)] = charToDouble(stringx[Int(i)])
        i = i + 1.0
    }
    return array
}


func arraysNumberArrayToString(_ array : inout [Double]) -> [Character]{
    var i : Double
    var stringx : [Character]
    stringx = Array(repeating:Character(" "), count: Int(Double(array.count)))

    i = 0.0
    while(i < Double(array.count)){
        stringx[Int(i)] = Character(Unicode.Scalar(Int(array[Int(i)]))!)
        i = i + 1.0
    }
    return stringx
}


func arraysNumberArraysEqual(_ a : inout [Double], _ b : inout [Double]) -> Bool{
    var equal : Bool
    var i : Double
    equal = true
    if(Double(a.count) == Double(b.count)){
        i = 0.0
        while(i < Double(a.count) && equal){
            if(a[Int(i)] != b[Int(i)]){
                equal = false
            }
            i = i + 1.0
        }
    }else{
        equal = false
    }

    return equal
}


func arraysBooleanArraysEqual(_ a : inout [Bool], _ b : inout [Bool]) -> Bool{
    var equal : Bool
    var i : Double
    equal = true
    if(Double(a.count) == Double(b.count)){
        i = 0.0
        while(i < Double(a.count) && equal){
            if(a[Int(i)] != b[Int(i)]){
                equal = false
            }
            i = i + 1.0
        }
    }else{
        equal = false
    }

    return equal
}


func arraysStringsEqual(_ a : inout [Character], _ b : inout [Character]) -> Bool{
    var equal : Bool
    var i : Double
    equal = true
    if(Double(a.count) == Double(b.count)){
        i = 0.0
        while(i < Double(a.count) && equal){
            if(a[Int(i)] != b[Int(i)]){
                equal = false
            }
            i = i + 1.0
        }
    }else{
        equal = false
    }

    return equal
}


func arraysFillNumberArray(_ a : inout [Double], _ value : Double) -> Void{
    var value = value;
    var i : Double
    i = 0.0
    while(i < Double(a.count)){
        a[Int(i)] = value
        i = i + 1.0
    }
}


func arraysFillString(_ a : inout [Character], _ value : Character) -> Void{
    var value = value;
    var i : Double
    i = 0.0
    while(i < Double(a.count)){
        a[Int(i)] = value
        i = i + 1.0
    }
}


func arraysFillBooleanArray(_ a : inout [Bool], _ value : Bool) -> Void{
    var value = value;
    var i : Double
    i = 0.0
    while(i < Double(a.count)){
        a[Int(i)] = value
        i = i + 1.0
    }
}


func arraysFillNumberArrayInterval(_ a : inout [Double], _ value : Double, _ from : Double, _ to : Double) -> Bool{
    var value = value;
    var from = from;
    var to = to;
    var i : Double
    var success : Bool
    if(from >= 0.0 && from < Double(a.count) && to >= 0.0 && to < Double(a.count)){
        i = from
        while(i < to){
            a[Int(i)] = value
            i = i + 1.0
        }
        success = true
    }else{
        success = false
    }

    return success
}


func arraysFillBooleanArrayInterval(_ a : inout [Bool], _ value : Bool, _ from : Double, _ to : Double) -> Bool{
    var value = value;
    var from = from;
    var to = to;
    var i : Double
    var success : Bool
    if(from >= 0.0 && from < Double(a.count) && to >= 0.0 && to < Double(a.count)){
        i = max(from, 0.0)
        while(i < min(to, Double(a.count))){
            a[Int(i)] = value
            i = i + 1.0
        }
        success = true
    }else{
        success = false
    }

    return success
}


func arraysFillStringInterval(_ a : inout [Character], _ value : Character, _ from : Double, _ to : Double) -> Bool{
    var value = value;
    var from = from;
    var to = to;
    var i : Double
    var success : Bool
    if(from >= 0.0 && from < Double(a.count) && to >= 0.0 && to < Double(a.count)){
        i = max(from, 0.0)
        while(i < min(to, Double(a.count))){
            a[Int(i)] = value
            i = i + 1.0
        }
        success = true
    }else{
        success = false
    }

    return success
}


func arraysCopyNumberArray(_ a : inout [Double]) -> [Double]{
    var i : Double
    var n : [Double]
    n = Array(repeating:Double(), count: Int(Double(a.count)))

    i = 0.0
    while(i < Double(a.count)){
        n[Int(i)] = a[Int(i)]
        i = i + 1.0
    }

    return n
}


func arraysCopyBooleanArray(_ a : inout [Bool]) -> [Bool]{
    var i : Double
    var n : [Bool]
    n = Array(repeating:Bool(), count: Int(Double(a.count)))

    i = 0.0
    while(i < Double(a.count)){
        n[Int(i)] = a[Int(i)]
        i = i + 1.0
    }

    return n
}


func arraysCopyString(_ a : inout [Character]) -> [Character]{
    var i : Double
    var n : [Character]
    n = Array(repeating:Character(" "), count: Int(Double(a.count)))

    i = 0.0
    while(i < Double(a.count)){
        n[Int(i)] = a[Int(i)]
        i = i + 1.0
    }

    return n
}


func arraysCopyNumberArrayRange(_ a : inout [Double], _ from : Double, _ to : Double, _ copyReference : inout NumberArrayReference) -> Bool{
    var from = from;
    var to = to;
    var i, length : Double
    var n : [Double]
    var success : Bool
    if(from >= 0.0 && from < Double(a.count) && to >= 0.0 && to < Double(a.count) && from <= to){
        length = to - from
        n = Array(repeating:Double(), count: Int(length))
        i = 0.0
        while(i < length){
            n[Int(i)] = a[Int(from + i)]
            i = i + 1.0
        }
        copyReference.numberArray = n
        success = true
    }else{
        success = false
    }

    return success
}


func arraysCopyBooleanArrayRange(_ a : inout [Bool], _ from : Double, _ to : Double, _ copyReference : inout BooleanArrayReference) -> Bool{
    var from = from;
    var to = to;
    var i, length : Double
    var n : [Bool]
    var success : Bool
    if(from >= 0.0 && from < Double(a.count) && to >= 0.0 && to < Double(a.count) && from <= to){
        length = to - from
        n = Array(repeating:Bool(), count: Int(length))
        i = 0.0
        while(i < length){
            n[Int(i)] = a[Int(from + i)]
            i = i + 1.0
        }
        copyReference.booleanArray = n
        success = true
    }else{
        success = false
    }

    return success
}


func arraysCopyStringRange(_ a : inout [Character], _ from : Double, _ to : Double, _ copyReference : inout StringReference) -> Bool{
    var from = from;
    var to = to;
    var i, length : Double
    var n : [Character]
    var success : Bool
    if(from >= 0.0 && from < Double(a.count) && to >= 0.0 && to < Double(a.count) && from <= to){
        length = to - from
        n = Array(repeating:Character(" "), count: Int(length))
        i = 0.0
        while(i < length){
            n[Int(i)] = a[Int(from + i)]
            i = i + 1.0
        }
        copyReference.stringx = n
        success = true
    }else{
        success = false
    }

    return success
}


func arraysIsLastElement(_ length : Double, _ index : Double) -> Bool{
    var length = length;
    var index = index;
    return index + 1.0 == length
}


func arraysCreateNumberArray(_ length : Double, _ value : Double) -> [Double]{
    var length = length;
    var value = value;
    var array : [Double]
    array = Array(repeating:Double(), count: Int(length))
    arraysFillNumberArray(&array, value)

    return array
}


func arraysCreateBooleanArray(_ length : Double, _ value : Bool) -> [Bool]{
    var length = length;
    var value = value;
    var array : [Bool]
    array = Array(repeating:Bool(), count: Int(length))
    arraysFillBooleanArray(&array, value)

    return array
}


func arraysCreateString(_ length : Double, _ value : Character) -> [Character]{
    var length = length;
    var value = value;
    var array : [Character]
    array = Array(repeating:Character(" "), count: Int(length))
    arraysFillString(&array, value)

    return array
}


func cToLowerCase(_ character : Character) -> Character{
    var character = character;
    var toReturn : Character
    toReturn = character
    if(character == "A"){
        toReturn = "a"
    }else if(character == "B"){
        toReturn = "b"
    }else if(character == "C"){
        toReturn = "c"
    }else if(character == "D"){
        toReturn = "d"
    }else if(character == "E"){
        toReturn = "e"
    }else if(character == "F"){
        toReturn = "f"
    }else if(character == "G"){
        toReturn = "g"
    }else if(character == "H"){
        toReturn = "h"
    }else if(character == "I"){
        toReturn = "i"
    }else if(character == "J"){
        toReturn = "j"
    }else if(character == "K"){
        toReturn = "k"
    }else if(character == "L"){
        toReturn = "l"
    }else if(character == "M"){
        toReturn = "m"
    }else if(character == "N"){
        toReturn = "n"
    }else if(character == "O"){
        toReturn = "o"
    }else if(character == "P"){
        toReturn = "p"
    }else if(character == "Q"){
        toReturn = "q"
    }else if(character == "R"){
        toReturn = "r"
    }else if(character == "S"){
        toReturn = "s"
    }else if(character == "T"){
        toReturn = "t"
    }else if(character == "U"){
        toReturn = "u"
    }else if(character == "V"){
        toReturn = "v"
    }else if(character == "W"){
        toReturn = "w"
    }else if(character == "X"){
        toReturn = "x"
    }else if(character == "Y"){
        toReturn = "y"
    }else if(character == "Z"){
        toReturn = "z"
    }

    return toReturn
}


func cToUpperCase(_ character : Character) -> Character{
    var character = character;
    var toReturn : Character
    toReturn = character
    if(character == "a"){
        toReturn = "A"
    }else if(character == "b"){
        toReturn = "B"
    }else if(character == "c"){
        toReturn = "C"
    }else if(character == "d"){
        toReturn = "D"
    }else if(character == "e"){
        toReturn = "E"
    }else if(character == "f"){
        toReturn = "F"
    }else if(character == "g"){
        toReturn = "G"
    }else if(character == "h"){
        toReturn = "H"
    }else if(character == "i"){
        toReturn = "I"
    }else if(character == "j"){
        toReturn = "J"
    }else if(character == "k"){
        toReturn = "K"
    }else if(character == "l"){
        toReturn = "L"
    }else if(character == "m"){
        toReturn = "M"
    }else if(character == "n"){
        toReturn = "N"
    }else if(character == "o"){
        toReturn = "O"
    }else if(character == "p"){
        toReturn = "P"
    }else if(character == "q"){
        toReturn = "Q"
    }else if(character == "r"){
        toReturn = "R"
    }else if(character == "s"){
        toReturn = "S"
    }else if(character == "t"){
        toReturn = "T"
    }else if(character == "u"){
        toReturn = "U"
    }else if(character == "v"){
        toReturn = "V"
    }else if(character == "w"){
        toReturn = "W"
    }else if(character == "x"){
        toReturn = "X"
    }else if(character == "y"){
        toReturn = "Y"
    }else if(character == "z"){
        toReturn = "Z"
    }

    return toReturn
}


func cIsUpperCase(_ character : Character) -> Bool{
    var character = character;
    var isUpper : Bool
    isUpper = false
    if(character == "A"){
        isUpper = true
    }else if(character == "B"){
        isUpper = true
    }else if(character == "C"){
        isUpper = true
    }else if(character == "D"){
        isUpper = true
    }else if(character == "E"){
        isUpper = true
    }else if(character == "F"){
        isUpper = true
    }else if(character == "G"){
        isUpper = true
    }else if(character == "H"){
        isUpper = true
    }else if(character == "I"){
        isUpper = true
    }else if(character == "J"){
        isUpper = true
    }else if(character == "K"){
        isUpper = true
    }else if(character == "L"){
        isUpper = true
    }else if(character == "M"){
        isUpper = true
    }else if(character == "N"){
        isUpper = true
    }else if(character == "O"){
        isUpper = true
    }else if(character == "P"){
        isUpper = true
    }else if(character == "Q"){
        isUpper = true
    }else if(character == "R"){
        isUpper = true
    }else if(character == "S"){
        isUpper = true
    }else if(character == "T"){
        isUpper = true
    }else if(character == "U"){
        isUpper = true
    }else if(character == "V"){
        isUpper = true
    }else if(character == "W"){
        isUpper = true
    }else if(character == "X"){
        isUpper = true
    }else if(character == "Y"){
        isUpper = true
    }else if(character == "Z"){
        isUpper = true
    }

    return isUpper
}


func cIsLowerCase(_ character : Character) -> Bool{
    var character = character;
    var isLower : Bool
    isLower = false
    if(character == "a"){
        isLower = true
    }else if(character == "b"){
        isLower = true
    }else if(character == "c"){
        isLower = true
    }else if(character == "d"){
        isLower = true
    }else if(character == "e"){
        isLower = true
    }else if(character == "f"){
        isLower = true
    }else if(character == "g"){
        isLower = true
    }else if(character == "h"){
        isLower = true
    }else if(character == "i"){
        isLower = true
    }else if(character == "j"){
        isLower = true
    }else if(character == "k"){
        isLower = true
    }else if(character == "l"){
        isLower = true
    }else if(character == "m"){
        isLower = true
    }else if(character == "n"){
        isLower = true
    }else if(character == "o"){
        isLower = true
    }else if(character == "p"){
        isLower = true
    }else if(character == "q"){
        isLower = true
    }else if(character == "r"){
        isLower = true
    }else if(character == "s"){
        isLower = true
    }else if(character == "t"){
        isLower = true
    }else if(character == "u"){
        isLower = true
    }else if(character == "v"){
        isLower = true
    }else if(character == "w"){
        isLower = true
    }else if(character == "x"){
        isLower = true
    }else if(character == "y"){
        isLower = true
    }else if(character == "z"){
        isLower = true
    }

    return isLower
}


func cIsLetter(_ character : Character) -> Bool{
    var character = character;
    return cIsUpperCase(character) || cIsLowerCase(character)
}


func cIsNumber(_ character : Character) -> Bool{
    var character = character;
    var isNumber : Bool
    isNumber = false
    if(character == "0"){
        isNumber = true
    }else if(character == "1"){
        isNumber = true
    }else if(character == "2"){
        isNumber = true
    }else if(character == "3"){
        isNumber = true
    }else if(character == "4"){
        isNumber = true
    }else if(character == "5"){
        isNumber = true
    }else if(character == "6"){
        isNumber = true
    }else if(character == "7"){
        isNumber = true
    }else if(character == "8"){
        isNumber = true
    }else if(character == "9"){
        isNumber = true
    }

    return isNumber
}


func cIsWhiteSpace(_ character : Character) -> Bool{
    var character = character;
    var isWhiteSpace : Bool
    isWhiteSpace = false
    if(character == " "){
        isWhiteSpace = true
    }else if(character == "\t"){
        isWhiteSpace = true
    }else if(character == "\n"){
        isWhiteSpace = true
    }else if(character == "\r"){
        isWhiteSpace = true
    }

    return isWhiteSpace
}


func cIsSymbol(_ character : Character) -> Bool{
    var character = character;
    var isSymbol : Bool
    isSymbol = false
    if(character == "!"){
        isSymbol = true
    }else if(character == "\""){
        isSymbol = true
    }else if(character == "#"){
        isSymbol = true
    }else if(character == "$"){
        isSymbol = true
    }else if(character == "%"){
        isSymbol = true
    }else if(character == "&"){
        isSymbol = true
    }else if(character == "\'"){
        isSymbol = true
    }else if(character == "("){
        isSymbol = true
    }else if(character == ")"){
        isSymbol = true
    }else if(character == "*"){
        isSymbol = true
    }else if(character == "+"){
        isSymbol = true
    }else if(character == ","){
        isSymbol = true
    }else if(character == "-"){
        isSymbol = true
    }else if(character == "."){
        isSymbol = true
    }else if(character == "/"){
        isSymbol = true
    }else if(character == ":"){
        isSymbol = true
    }else if(character == ";"){
        isSymbol = true
    }else if(character == "<"){
        isSymbol = true
    }else if(character == "="){
        isSymbol = true
    }else if(character == ">"){
        isSymbol = true
    }else if(character == "?"){
        isSymbol = true
    }else if(character == "@"){
        isSymbol = true
    }else if(character == "["){
        isSymbol = true
    }else if(character == "\\"){
        isSymbol = true
    }else if(character == "]"){
        isSymbol = true
    }else if(character == "^"){
        isSymbol = true
    }else if(character == "_"){
        isSymbol = true
    }else if(character == "`"){
        isSymbol = true
    }else if(character == "{"){
        isSymbol = true
    }else if(character == "|"){
        isSymbol = true
    }else if(character == "}"){
        isSymbol = true
    }else if(character == "~"){
        isSymbol = true
    }

    return isSymbol
}


func delete(_ x : Any){
    // Swift has reference counting.
}

