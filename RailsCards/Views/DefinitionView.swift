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
    VStack {
      Text("\(viewController.flashcard.definition)")
        .padding(65)
        .overlay(
          RoundedRectangle(cornerRadius: 10.0)
            .stroke(Color.gray)
        )
    }
  }
}

struct DefinitionView_Previews: PreviewProvider {
    static var previews: some View {
      DefinitionView(viewController: ViewController())
    }
}
