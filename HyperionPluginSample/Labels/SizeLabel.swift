//
//  SizeLabel.swift
//  HyperionPluginSample
//
//  Created by Kenzo Nirasawa on 2018/12/14.
//  Copyright © 2018年 nirazo. All rights reserved.
//

import UIKit

class SizeLabel: UILabel {

    init(with text: String, size: CGFloat) {
        super.init(frame: .zero)
        self.font = .systemFont(ofSize: size)
        self.text = text
        self.textColor = .black
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
