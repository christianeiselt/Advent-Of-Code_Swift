//
//  File.swift
//  
//
//  Created by Christian Eiselt on 27.10.21.
//

import Foundation

let exampleText1 = (instructions: "(())", floor: 0)
let exampleText2 = (instructions: "()()", floor: 0)
let exampleText3 = (instructions: "(((", floor: 3)
let exampleText4 = (instructions: "(()(()(", floor: 3)
let exampleText5 = (instructions: "))(((((", floor: 3)
let exampleText6 = (instructions: "())", floor: -1)
let exampleText7 = (instructions: "))(", floor: -1)
let exampleText8 = (instructions: ")))", floor: -3)
let exampleText9 = (instructions: ")())())", floor: -3)
let exampleText10 = (instructions: ")", basement: 1)
let exampleText11 = (instructions: "(()))", basement: 5)
