//
//  AppDelegate.swift
//  GestureCollision
//
//  Created by David Furman on 5/11/22.
//

import SwiftUI
import UIKit

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            button
        }
    }

    var button: some View {
        Button {
            print("SwiftUI")
        } label: {
            Text("SwiftUI")
                .padding()
        }
        .background(.yellow)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
