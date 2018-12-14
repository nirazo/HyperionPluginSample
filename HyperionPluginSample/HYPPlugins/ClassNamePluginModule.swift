//
//  ClassNamePluginModule.swift
//  HyperionPluginSample
//
//  Created by Kenzo Nirasawa on 2018/12/14.
//  Copyright © 2018年 nirazo. All rights reserved.
//

import Foundation
import HyperionCore

class ClassNamePluginModule: HYPSnapshotPluginModule {
    var currentPluginView: ClassNamePluginInteractiveView?

    required init(with ext: HYPPluginExtension) {
        super.init(with: ext)
    }

    override func pluginMenuItemTitle() -> String {
        return "Class Name"
    }

    override func pluginMenuItemImage() -> UIImage {
        return UIImage(named: "classNamePluginIcon")!
    }

    override func activateSnapshotPluginView(withContext context: UIView) {
        super.activateSnapshotPluginView(withContext: context)
        currentPluginView?.removeFromSuperview()
        currentPluginView = ClassNamePluginInteractiveView(with: `extension`)
        currentPluginView?.translatesAutoresizingMaskIntoConstraints = false
        context.addSubview(currentPluginView!)
        currentPluginView?.topAnchor.constraint(equalTo: context.topAnchor).isActive = true
        currentPluginView?.leadingAnchor.constraint(equalTo: context.leadingAnchor).isActive = true
        currentPluginView?.bottomAnchor.constraint(equalTo: context.bottomAnchor).isActive = true
        currentPluginView?.trailingAnchor.constraint(equalTo: context.trailingAnchor).isActive = true
    }
}
