//
//  AppDelegate.swift
//  OpenQuickly Demo
//
//  Created by Luka Kerr on 25/2/19.
//  Copyright © 2019 Luka Kerr. All rights reserved.
//

import Cocoa
import OpenQuicklyX
import HotKey

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
  
  private var openQuicklyWindowController: OpenQuicklyWindowController!
  let hk = HotKey(key: .space, modifiers: [.control])
  
  func applicationDidFinishLaunching(_ aNotification: Notification) {
    print("finished launch")
    // Insert code here to initialize your application
    let openQuicklyOptions = OpenQuicklyOptions()
    openQuicklyOptions.width = 500
    openQuicklyOptions.rowHeight = 50
    openQuicklyOptions.delegate = self
    openQuicklyOptions.persistPosition = true
    openQuicklyOptions.placeholder = "Search for a language"
    
    self.openQuicklyWindowController = OpenQuicklyWindowController(options: openQuicklyOptions)
    
    hk.keyDownHandler = {
      print("key pressed")
      self.openQuicklyWindowController.toggle()
    }
  }
  
  override func awakeFromNib() {
    print("nib")
  }

  func applicationWillTerminate(_ aNotification: Notification) {
    // Insert code here to tear down your application
  }

}

extension AppDelegate: OpenQuicklyDelegate {
  func dataSource(_ value: String) -> [Any] {
    let matches = languages.filter {
      $0.name.lowercased().contains(value.lowercased())
    }
    
    return matches
  }
  
  func itemWasSelected(selected item: Any) {
    guard let language = item as? OQItem else { return }
    
    print("\(language.name) was selected")
  }
  
  func searchBarClosed() {
    print("search bar closed")
  }
  
}
