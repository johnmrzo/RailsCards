//
//  ContentView.swift
//  RailsCards
//
//  Created by Bakhtiyorjon Mirzajonov on 18/09/23.
//

import SwiftUI

struct CardView: View {
  @ObservedObject var viewController = ViewController()
  
  var body: some View {
    VStack {
      Image(systemName: "globe")
        .imageScale(.large)
        .foregroundColor(.accentColor)
      NavigationView {
        ZStack {
          NavigationLink(destination: DefinitionView(viewController: viewController)) {
            Text("\(viewController.flashcard.command)")
              .frame(width: 350.0, height: 200.0)
          }
        }
        .overlay(
          RoundedRectangle(cornerRadius: 10.0)
            .stroke(Color.gray)
        )
        .onAppear() { viewController.updateFlashcard() }
      }
    }
    .padding()
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      CardView()
    }
}
