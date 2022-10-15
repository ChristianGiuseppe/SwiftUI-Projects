//
//  ExternalWebLinkView.swift
//  AfricaApp
//
//  Created by Christian Nocerino on 15/10/22.
//

import SwiftUI

struct ExternalWebLinkView: View {
    let animal: AnimalModel
    var body: some View {
        GroupBox{
            HStack{
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group{
                    Image(systemName: "arrow.up.right.square")
                      
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!)
                }.foregroundColor(.accentColor)
            }
        }
    }
}

struct ExternalWebLinkView_Previews: PreviewProvider {
    static let animals: [AnimalModel] = Bundle.main
        .decode("animals.json")
    static var previews: some View {
        ExternalWebLinkView(animal: animals[0])
            .padding()
    }
}
