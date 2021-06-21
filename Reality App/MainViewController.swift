//
//  ViewController.swift
//  Reality App
//
//  Created by Татьяна Кочетова on 20.06.2021.
//

import UIKit
import RealityKit

class MainViewController: UIViewController {
    
    @IBOutlet var arView: ARView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! Experience.loadBox()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
    }
}
