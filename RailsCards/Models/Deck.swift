//
//  Deck.swift
//  RailsCards
//
//  Created by Bakhtiyorjon Mirzajonov on 18/09/23.
//

import Foundation

class Deck {
  var cards: [Flashcard]
  
  init() {
    let cardData = [
      "rails generate model ModelName": "Creates a model with the specified model_name",
      "rails generate migration MigrationName": "Creates a migration with the specified migration_name",
      "rails generate controller ControllerName": "Creates a controller with the specified controller_name",
      "rails generate scaffold ModelName": "Provides shortcut for creating your controller, model and view files in one step",
      "rails destroy scaffold ModelName": "Destroys the created controller, model and view files that were generated for the given Model",
      "rails server": "Starts ruby server at http://localhost:3000",
      "rails console": "Opens the rails console for the current RAILS_ENV",
      "rake test:units": "Runs all unit tests for the application",
      "rake -T": "Lists all available rake tasks",
      "rake db:create": "Creates the database defined in config/database.yml for the current RAILS_ENV",
      "rake db:migrate": "Migrates the database through scripts in the db/migrate directory",
      "rake db:drop": "Drops the database for the current RAILS_ENV",
      "rake db:reset": "Drops and recreates the database from db/schema.rb for the current environment",
      "rake db:rollback": "Runs the down method from the latest migration",
      "rake doc:app": "Builds the RDoc HTML files",
      "gem list": "lists the gems that this rails application depends on",
      "gem server": "Presents a web page at http://localhost:8808/ with info about installed gems",
      "bundle install": "Installs all required gems for this application",
      "rake log:clear": "Truncates all *.log files in log/ to zero bytes",
      "rake routes": "Prints out all the defined routes in match order with names",
      "rake tmp:clear": "Clears session, cache and socket files from tmp/",
      "rake test:benchmark": "Benchmarks your application"
    ]
    
    // Write a simple way to loop through the dictionary of cards, create a `Flashcard` object
    // for each card, and add that object to the `cards` array we created earlier
    self.cards = [Flashcard]()
    for (key, value) in cardData {
      var card = Flashcard(command: key, definition: value)
      cards.append(card)
    }
  }
  
  func drawRandomCard() -> Flashcard {
    return cards[Int(arc4random_uniform(UInt32(cards.count)))]
  }
}
