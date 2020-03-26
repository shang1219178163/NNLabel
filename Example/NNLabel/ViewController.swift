//
//  ViewController.swift
//  NNLabel
//
//  Created by shang1219178163 on 03/26/2020.
//  Copyright (c) 2020 shang1219178163. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    override func loadView() {
        // 设置 ViewController 大小同 mainWindow
        guard let windowRect = NSApplication.shared.mainWindow?.frame else { return }
        view = NSView(frame: windowRect)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    // Do any additional setup after loading the view.
        view.wantsLayer = true;
        view.layer!.backgroundColor = NSColor.white.cgColor;
    }

    override var representedObject: Any? {
        didSet {
            // Update the view, if already loaded.
        }
    }


}

