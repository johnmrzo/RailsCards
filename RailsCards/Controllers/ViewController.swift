//
//  ViewController.swift
//  RailsCards
//
//  Created by Bakhtiyorjon Mirzajonov on 18/09/23.
//

import Foundation

class ViewController: ObservableObject {
  let deck = Deck()        // create an instance of `Deck`
  @Published var flashcard: Flashcard    // holds a single flashcard object from the deck
  
  init() {
    self.flashcard = deck.drawRandomCard()
  }
  
  func updateFlashcard() {
    self.flashcard = deck.drawRandomCard()
  }
}
