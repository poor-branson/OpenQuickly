//
//  ViewController.swift
//  OpenQuickly Demo
//
//  Created by Luka Kerr on 25/2/19.
//  Copyright © 2019 Luka Kerr. All rights reserved.
//

import Cocoa
import OpenQuicklyX

let languages: [OQItem] = [
  OQItem(
    name: "Swift",
    subtitle: "A general-purpose, multi-paradigm, compiled programming OQItem",
    image: NSWorkspace.shared.icon(forFileType: ".swift")
  ),
  OQItem(
    name: "JavaScript",
    subtitle: "A high-level, interpreted programming OQItem",
    image: NSWorkspace.shared.icon(forFileType: ".js")
  ),
  OQItem(
    name: "Java",
    subtitle: "A general-purpose computer-programming OQItem",
    image: NSWorkspace.shared.icon(forFileType: ".java")
  ),
  OQItem(
    name: "Python",
    subtitle: "An interpreted, high-level, general-purpose programming OQItem",
    image: NSWorkspace.shared.icon(forFileType: ".py")
  ),
  OQItem(
    name: "Ruby",
    subtitle: "A dynamic, interpreted, reflective, object-oriented, general-purpose programming OQItem",
    image: NSWorkspace.shared.icon(forFileType: ".rb")
  ),
  OQItem(
    name: "Go",
    subtitle: "A statically typed, compiled programming OQItem",
    image: NSWorkspace.shared.icon(forFileType: ".go")
  ),
  OQItem(
    name: "Markdown",
    subtitle: "A lightweight markup OQItem",
    image: NSWorkspace.shared.icon(forFileType: ".md")
  ),
  OQItem(
    name: "Bash",
    subtitle: "A Unix shell and command OQItem",
    image: NSWorkspace.shared.icon(forFileType: ".sh")
  )
]
