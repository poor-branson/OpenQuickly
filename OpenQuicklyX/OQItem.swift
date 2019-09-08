//
//  OQItem.swift
//  OpenQuicklyX
//
//  Created by branson on 2019/9/8.
//  Copyright © 2019 Luka Kerr. All rights reserved.
//
import Cocoa

public struct OQItem {
  public var name: String = "Name"
  public var subtitle: String = "SubTitle"
  public var image: NSImage = NSWorkspace.shared.icon(forFileType: ".swift")
  
  public init(name: String, subtitle: String, image: NSImage) {
    self.name = name
    self.subtitle = subtitle
    self.image = image
  }
}
