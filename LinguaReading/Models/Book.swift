//
//  Book.swift
//  LinguaReading
//
//  Created by Irina Muravyeva on 14.05.2024.
//

import Foundation

struct Book {
    let autor: String
    let title: String
    let countOfPages: Int
    let language: Languages
    let level: Levels // depends of language
    let hasAudioFile: Bool
    let currentPage: Int
    let progress: Int
    let favourite: Bool
    
    static func getBooks() -> [Book] {
        [
        Book(
            autor: "Lewis Carroll",
            title: "Alice in the wonderland",
            countOfPages: 356,
            language: .english,
            level: Levels(englishLevels: .b1Intermediate, chineseLevels: .nolevel),
            hasAudioFile: false,
            currentPage: 14,
            progress: 7,
            favourite: true
        ),
        Book(
            autor: "Saint Exupéry",
            title: "The little prince",
            countOfPages: 421,
            language: .english,
            level: Levels(englishLevels: .a2PreIntermediate, chineseLevels: .nolevel),
            hasAudioFile: true,
            currentPage: 1,
            progress: 2,
            favourite: false
        ),
        Book(
            autor: "Serge Michalkov",
            title: "一只猪",
            countOfPages: 5,
            language: .chinese,
            level: Levels(englishLevels: .nolevel, chineseLevels: .hskOne),
            hasAudioFile: false,
            currentPage: 1,
            progress: 3,
            favourite: false
        ),
        Book(
            autor: "Unknown",
            title: "我爸爸",
            countOfPages: 18,
            language: .chinese,
            level: Levels(englishLevels: .nolevel, chineseLevels: .hskTwo),
            hasAudioFile: true,
            currentPage: 1,
            progress: 0,
            favourite: true
        )
        ]
    }
    
}

enum Languages {
    case english
    case chinese
}

struct Levels {
    let englishLevels: EnglishLevels
    let chineseLevels: ChineseLevels
}

enum EnglishLevels: String {
    case a1Beginner = "A1"
    case a1Elementary = "A1E"
    case a2PreIntermediate = "A2"
    case b1Intermediate = "B1"
    case b2UpperIntermediate = "B2"
    case c1Advanced = "C1"
    case nolevel
}

enum ChineseLevels: String {
    case hskOne = "HSK1"
    case hskTwo = "HSK2"
    case hskTree = "HSK3"
    case hskFor = "HSK4"
    case hskFive = "HSK5"
    case hskSix = "HSK6"
    case nolevel
}
