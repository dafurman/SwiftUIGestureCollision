//
//  AppDelegate.swift
//  GestureCollision
//
//  Created by David Furman on 5/11/22.
//

import SwiftUI
import UIKit

struct ContentView: View {

    /// Try changing this to `true` to demonstrate a workaround.
    private let usesTouchAbsorbingView = false

    var body: some View {
        ZStack {
            VStack {
                Spacer()
                button
            }
            if usesTouchAbsorbingView {
                VStack {
                    Spacer()
                    touchAbsorbingView.frame(height: InteractableUIKitView.idealHeight)
                }
            }
        }
    }

    private var button: some View {
        Button {
            print("SwiftUI")
        } label: {
            Text("SwiftUI")
                .padding()
        }
        .background(.yellow)
    }

    private var touchAbsorbingView: some View {
        Color.clear
            .contentShape(Rectangle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
