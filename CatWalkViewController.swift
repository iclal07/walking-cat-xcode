//
//  CatWalkViewController.swift
//  CatWalkExtension
//
//  Created by İclal Çetin on 25.08.2024.
//

import Foundation
import Cocoa

class CatWalkViewController: NSViewController {
    private var catWalkView: CatWalkView!

    override func loadView() {
        self.view = NSView(frame: NSRect(x: 0, y: 0, width: 200, height: 100))
        catWalkView = CatWalkView(frame: NSRect(x: 0, y: 0, width: 100, height: 100))
        self.view.addSubview(catWalkView)
    }

    override func viewDidAppear() {
        super.viewDidAppear()
        startCatWalk()
    }

    private func startCatWalk() {
        NSAnimationContext.runAnimationGroup { context in
            context.duration = 5.0
            catWalkView.animator().frame.origin.x = self.view.bounds.width
        }
    }
}
