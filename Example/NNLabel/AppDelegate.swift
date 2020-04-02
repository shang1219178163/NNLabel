//
//  AppDelegate.swift
//  NNLabel
//
//  Created by shang1219178163 on 03/26/2020.
//  Copyright (c) 2020 shang1219178163. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {


    lazy var window: NSWindow = {
        let screenSize = NSScreen.main?.frame.size
        let window = NSWindow(contentRect: NSMakeRect(0, 0, screenSize!.width*0.5, screenSize!.height*0.5),
                        styleMask: [.titled, .resizable, .miniaturizable, .closable, .fullSizeContentView],
                        backing: .buffered,
                        defer: false)
        // 设置最小尺寸
        window.minSize = window.frame.size
        // 打开显示在屏幕的中心位置
        window.center()

        return window
    }()

    // MARK: -life cycle
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        window.makeKeyAndOrderFront(nil)
        NSApplication.shared.mainWindow?.title = "Hello world"

        // 设置 contentViewController
        let contentViewController = ViewController() // or ViewController(nibName:nil, bundle: nil)
        window.contentViewController = contentViewController
    }

    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return true
    }
    
    func applicationShouldHandleReopen(_ sender: NSApplication, hasVisibleWindows flag: Bool) -> Bool {
        if flag == false {
            window.makeKeyAndOrderFront(self)
            return true
        }
        return false;
    }
    
    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
        
    }


}

