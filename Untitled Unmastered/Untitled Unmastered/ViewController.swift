//
//  ViewController.swift
//  Untitled Unmastered
//
//  Created by Fiifi Botchway on 5/4/24.
//

import Foundation
import UIKit
import SwiftUI
class ViewController: UIViewController {
     var theContainer = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()

        let childView = UIHostingController(rootView: ContentView())
        addChild(childView)
        childView.view.frame = theContainer.bounds
        theContainer.addSubview(childView.view)
        childView.didMove(toParent: self)
    }
}
