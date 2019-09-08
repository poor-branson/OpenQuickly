//
//  OpenQuicklyDelegate.swift
//  OpenQuickly
//
//  Created by Luka Kerr on 25/2/19.
//  Copyright © 2019 Luka Kerr. All rights reserved.
//

import Foundation
import Cocoa

public protocol OpenQuicklyDelegate {
  /// Called when a value was typed in the search bar
  ///
  /// - Parameters:
  ///   - value: The value entered in to the search field
  ///
  /// - Returns: Any matches based off the value typed
  func dataSource(_ value: String) -> [Any]
}

extension OpenQuicklyDelegate {
  /// Called when an item in the matches list was selected
  ///
  /// - Parameters:
  ///   - item: The selected item
  func itemWasSelected(selected item: Any) {}
  /// Called when the open quickly window is closed
  func searchBarClosed() {
    
  }
  /// Given an item return a view to be used for that item in the matches list
  ///
  /// - Parameters:
  ///   - item: An item from the matches list
  ///
  /// - Returns: A view to display the given item in the matches list
  func openQuickly(item: Any) -> NSView? {
    guard let listItem = item as? OQItem else { return nil }
    
    let view = NSStackView()
    
    let imageView = NSImageView(image: listItem.image)
    
    let title = NSTextField()
    
    title.isEditable = false
    title.isBezeled = false
    title.isSelectable = false
    title.focusRingType = .none
    title.drawsBackground = false
    title.font = NSFont.systemFont(ofSize: 14)
    title.stringValue = listItem.name
    
    let subtitle = NSTextField()
    
    subtitle.isEditable = false
    subtitle.isBezeled = false
    subtitle.isSelectable = false
    subtitle.focusRingType = .none
    subtitle.drawsBackground = false
    subtitle.stringValue = listItem.subtitle
    subtitle.font = NSFont.systemFont(ofSize: 12)
    
    let text = NSStackView()
    text.orientation = .vertical
    text.spacing = 2.0
    text.alignment = .left
    
    text.addArrangedSubview(title)
    text.addArrangedSubview(subtitle)
    
    view.addArrangedSubview(imageView)
    view.addArrangedSubview(text)
    
    return view
  }
}
