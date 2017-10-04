//
//  ViewController.swift
//  iSonidos
//
//  Created by CETYS on 04/10/17.
//  Copyright © 2017 CETYS. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var reproductor : AVAudioPlayer!
    
    @IBAction func sonidoPulsado(_ sender: UIButton) {
        print("botón pulsado!")
        reproductor.play()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rutaAlArchivo = Bundle.main.url(forResource: "queMeQuedoSinComer", withExtension: "mp3")!
        do{
            try reproductor = AVAudioPlayer(contentsOf: rutaAlArchivo )
        } catch{}
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

