//
//  Describable.swift
//  ToDoApp
//
//  Created by Fer Alvarado on 16/10/26.
//

import Foundation

protocol Describable {
    var title: String { get }
    var summary: String { get }
}

extension Describable {
    var summary: String {
        "Summary \(title)"
    }
}
