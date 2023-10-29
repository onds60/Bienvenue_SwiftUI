//
//  SecondView.swift
//  Bienvenue_SwiftUI
//
//  Created by Olivier NERON DE SURGY on 22/05/2023.
//

import SwiftUI

struct SecondView: View {
    @State var valeur: Double = 0.0
    
    var body: some View {
        VStack {
            Spacer()
            Slider(value: $valeur, in: 0...1)
                .frame(width: 150)
            Spacer()
            Text("et bienvenue dans cette formation à Swift !")
                .frame(width: 230)
                .multilineTextAlignment(.center)
                .font(.title)
                .opacity(valeur)
            Spacer()
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
