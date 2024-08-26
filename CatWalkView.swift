//
//  CatWalkView.swift
//  CatWalkExtension
//
//  Created by İclal Çetin on 25.08.2024.
//

import Foundation
import Cocoa

class CatWalkView: NSView {
    private var imageFrames: [NSImage] = []
    private var currentFrameIndex = 0
    private var animationTimer: Timer?

    override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        loadGif()
        startAnimation()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        loadGif()
        startAnimation()
    }

    private func loadGif() {
        for i in 1...35 {
            if let image = NSImage(named: "cat-cute-\(i)") {
                imageFrames.append(image)
            }
        }
    }

    private func startAnimation() {
        animationTimer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateFrame), userInfo: nil, repeats: true)
    }

    @objc private func updateFrame() {
        currentFrameIndex = (currentFrameIndex + 1) % imageFrames.count
        self.needsDisplay = true
    }

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        imageFrames[currentFrameIndex].draw(in: self.bounds)
    }
}

