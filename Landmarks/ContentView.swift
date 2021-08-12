//
//  ContentView.swift
//  Landmarks
//
//  Created by macgza on 11/08/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Turtle Rock")
                .font(.title)
            HStack {
                Text(/*@START_MENU_TOKEN@*/"Joshua Tree National Park"/*@END_MENU_TOKEN@*/)
                    .font(.subheadline)
                Spacer()
                Text(/*@START_MENU_TOKEN@*/"California"/*@END_MENU_TOKEN@*/)
                    .font(.subheadline)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
