//
//  ContentView.swift
//  Bienvenue_SwiftUI
//
//  Created by Olivier NERON DE SURGY on 22/05/2023.
//

import SwiftUI

struct ContentView: View {
    @State var titreColor: Color = .black

    var titreLabel: some View {
            Text("Bonjour")
                .font(.title)
                .bold()
                .foregroundColor(titreColor)
        }
        
    var body: some View {
        NavigationView {
            VStack(spacing: 60) {
                Spacer()
                titreLabel
                Image("maPomme")
                    .resizable()
                    .frame(width: 250, height: 170)
                Button("Change la couleur") {
                    if titreColor == .black {
                        titreColor = .red
                    } else {
                        titreColor = .black
                    }
                }

                NavigationLink("Vue suivante", destination: SecondView())
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
