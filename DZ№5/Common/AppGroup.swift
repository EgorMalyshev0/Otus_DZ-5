//
//  AppGroup.swift
//  DZ№5
//
//  Created by Egor Malyshev on 05.11.2021.
//

import Foundation

public enum AppGroup: String {
  case info = "group.com.suffixWidget.info"

  public var containerURL: URL {
    switch self {
    case .info:
      return FileManager.default.containerURL(
      forSecurityApplicationGroupIdentifier: self.rawValue)!
    }
  }
}
