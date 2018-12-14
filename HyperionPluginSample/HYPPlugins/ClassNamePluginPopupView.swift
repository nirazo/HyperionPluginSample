//
//  ClassNamePluginPopupView.swift
//  HyperionPluginSample
//
//  Created by Kenzo Nirasawa on 2018/12/14.
//  Copyright © 2018年 nirazo. All rights reserved.
//

import UIKit

class ClassNamePluginPopupView: UIView {
    private let label: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 16)
        label.numberOfLines = 0
        return label
    }()

    init() {
        super.init(frame: .zero)
        backgroundColor = .white
        addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.topAnchor.constraint(equalTo: topAnchor).isActive = true
        label.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        label.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        label.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        layer.borderColor = UIColor.blue.cgColor
        layer.borderWidth = 1.0
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configure(text: String) {
        label.text = text
        layoutIfNeeded()
    }
}
