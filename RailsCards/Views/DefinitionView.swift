//
//  DefinitionView.swift
//  RailsCards
//
//  Created by Bakhtiyorjon Mirzajonov on 18/09/23.
//

import SwiftUI

struct DefinitionView: View {
  let viewController: ViewController
  
  var body: some View {
    Text("\(viewController.flashcard.definition)")
  }
}

struct DefinitionView_Previews: PreviewProvider {
    static var previews: some View {
      DefinitionView(viewController: ViewController())
    }
}
