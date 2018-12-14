//
//  ViewController.swift
//  HyperionPluginSample
//
//  Created by Kenzo Nirasawa on 2018/12/14.
//  Copyright © 2018年 nirazo. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    let boldableLabel = BoldableLabel(with: "何のラベル？", isBold: false)
    let colorLabel = ColorLabel(with: "何のラベル？", color: .black)
    let sizeLabel = SizeLabel(with: "何のラベル？", size: 20)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(boldableLabel)
        view.addSubview(colorLabel)
        view.addSubview(sizeLabel)
        setupConstraints()
    }

    private func setupConstraints() {
        boldableLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(150)
            make.left.equalToSuperview().inset(50)
            make.width.equalTo(120)
            make.height.equalTo(32)
        }
        
        colorLabel.snp.makeConstraints { make in
            make.top.equalTo(boldableLabel.snp.bottom).offset(50)
            make.left.size.equalTo(boldableLabel)
        }

        sizeLabel.snp.makeConstraints { make in
            make.top.equalTo(colorLabel.snp.bottom).offset(50)
            make.left.size.equalTo(boldableLabel)
        }
    }

}

