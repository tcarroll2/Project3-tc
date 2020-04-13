//
//  ViewController.swift
//  Project1
//
//  Created by Thomas Carroll on 4/12/20.
//  Copyright © 2020 Thomas Carroll. All rights reserved.
//

import Cocoa

class ViewController: NSSplitViewController {

    @IBAction func shareClicked(_ sender: NSView) {
        guard let detail = children[1] as? DetailViewController else { return }
        guard let image = detail.imageView.image else { return }
        let picker = NSSharingServicePicker(items: [image])
        picker.show(relativeTo: .zero, of: sender, preferredEdge: .minY)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

