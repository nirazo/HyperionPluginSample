//
//  BoldableLabel.swift
//  HyperionPluginSample
//
//  Created by Kenzo Nirasawa on 2018/12/14.
//  Copyright © 2018年 nirazo. All rights reserved.
//

import UIKit

class BoldableLabel: UILabel {

    init(with text: String, isBold: Bool) {
        super.init(frame: .zero)
        self.font = isBold ? .boldSystemFont(ofSize: 20) : .systemFont(ofSize: 20)
        self.text = text
        self.textColor = .black
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
