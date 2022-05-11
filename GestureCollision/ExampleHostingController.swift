//
//  AppDelegate.swift
//  GestureCollision
//
//  Created by David Furman on 5/11/22.
//

import SwiftUI
import UIKit

class ExampleHostingController: UIHostingController<ContentView> {

    init() {
        super.init(rootView: ContentView())
    }

    required init?(coder aDecoder: NSCoder) { nil }

    override func viewDidLoad() {
        super.viewDidLoad()
        addInteractableView()
    }

    private func addInteractableView() {
        let subview = InteractableUIKitView()
        view.addSubview(subview)
        subview.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            subview.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            subview.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            subview.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            subview.heightAnchor.constraint(equalToConstant: 100)
        ])
    }

}
