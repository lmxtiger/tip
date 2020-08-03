//
//  HighlightedButton.swift
//  tip
//
//  Created by Steven Liu on 8/3/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import Foundation
import UIKit

class HighlightedButton: UIButton {

    override var isHighlighted: Bool {
        didSet {
            // The reset button's background will change color to white when it's highlighted (pressed down) and back to "opaque separator color" (default) when the press is released
            backgroundColor = isHighlighted ? .white : .opaqueSeparator
        }
    }
}
