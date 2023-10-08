//
//  OutletsUtils.swift
//  TheSimpsonsAppPatterns
//
//  Created by Gonzalo Gregorio on 08/10/2023.
//

import UIKit

public func updateLabel(content: String?, label: UILabel) {
    label.text = content ?? ""
}

public func updateText(content: String?, textView: UITextView) {
    textView.text = content ?? ""
}

public func updateImage(imageName: String?, imageView: UIImageView) {
    imageView.image = UIImage(named: imageName ?? "")
}
