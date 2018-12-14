//
//  ColorLabel.swift
//  HyperionPluginSample
//
//  Created by Kenzo Nirasawa on 2018/12/14.
//  Copyright © 2018年 nirazo. All rights reserved.
//

import UIKit

class ColorLabel: UILabel {

    init(with text: String, color: UIColor) {
        super.init(frame: .zero)
        self.font = .systemFont(ofSize: 20)
        self.text = text
        self.textColor = color
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
