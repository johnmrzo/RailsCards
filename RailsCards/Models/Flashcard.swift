//
//  Flashcard.swift
//  RailsCards
//
//  Created by Bakhtiyorjon Mirzajonov on 18/09/23.
//

import Foundation

struct Flashcard {
  var command: String
  var definition: String
  
  init(command: String, definition: String) {
    self.command = command
    self.definition = definition
  }
}
