//
//  ClassNamePluginInteractiveView.swift
//  HyperionPluginSample
//
//  Created by Kenzo Nirasawa on 2018/12/14.
//  Copyright © 2018年 nirazo. All rights reserved.
//

import Foundation
import HyperionCore

class ClassNamePluginInteractiveView: HYPSnapshotInteractionView {
    let highlightView = UIView(frame: .zero)
    let classNameView = ClassNamePluginPopupView()

    override init(frame: CGRect) {
        super.init(frame: .zero)
        setup()
    }

    override init(with ext: HYPPluginExtension?) {
        super.init(with: ext)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setup() {
        backgroundColor = UIColor(red: 50.0/255.0, green: 50.0/255.0, blue: 50.0/255.0, alpha: 0.3)
        let tapGr = UITapGestureRecognizer(target: self, action: #selector(viewTapped(_:)))
        addGestureRecognizer(tapGr)

        highlightView.backgroundColor = UIColor(red: 43.0/255.0, green: 87.0/255.0, blue: 244.0/255.0, alpha: 0.4)
        highlightView.isHidden = true
        addSubview(highlightView)

        classNameView.translatesAutoresizingMaskIntoConstraints = true
        classNameView.isHidden = true
        addSubview(classNameView)
    }

    @objc func viewTapped(_ sender: UITapGestureRecognizer) {
        guard let ext = `extension` else { return }
        let attachedWindow = ext.attachedWindow
        let location = sender.location(in: self)
        let selectedViews = HYPPluginHelper.findSubviews(in: attachedWindow(), intersecting: location)
        print("selectedViews: \(String(describing: selectedViews?.description))")
        if let v = selectedViews?.firstObject as? UIView {
            viewSelected(v)
        }
    }

    override func interactionViewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator?) {
        super.interactionViewWillTransition(to: size, with: coordinator)
        `extension`?.snapshotContainer().dismissCurrentPopover()
    }

    override func interactionViewDidTransition(to size: CGSize) {
        super.interactionViewDidTransition(to: size)
    }
}

extension ClassNamePluginInteractiveView: HYPViewSelectionDelegate {
    func viewSelected(_ selection: UIView!) {
        guard let selection = selection, let ext = `extension` else { return }
        highlightView.isHidden = !highlightView.isHidden
        let f = selection.convert(selection.bounds, to: ext.attachedWindow())
        highlightView.frame = f

        classNameView.frame = CGRect(x: f.minX, y: f.maxY, width: 300, height: 40)
        classNameView.isHidden = !classNameView.isHidden
        classNameView.configure(text: NSStringFromClass(type(of: selection)))
    }
}
