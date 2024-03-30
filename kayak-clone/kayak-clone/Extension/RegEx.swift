//
//  RegEx.swift
//  kayak-clone
//
//  Created by Sithu Win on 28/03/2024.
//

import Foundation
import RegexBuilder

var emailRegex = Regex {
    /^/
    OneOrMore {
        CharacterClass(
            .anyOf("._%+-"),
            ("a"..."z"),
            ("A"..."Z"),
            ("0"..."9")
        )
    }
    "@"
    OneOrMore {
        CharacterClass(
            .anyOf(".-"),
            ("a"..."z"),
            ("A"..."Z"),
            ("0"..."9")
        )
    }
    "."
    Repeat(2...) {
        CharacterClass(
            ("a"..."z"),
            ("A"..."Z")
        )
    }
    /$/
}
