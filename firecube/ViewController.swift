//
//  ViewController.swift
//  firecube
//
//  Created by Izaak Prats on 11/16/16.
//  Copyright © 2016 IJVP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //randomCubeArray represents the randomized state of a rubik's cube that was physically created and conforms to transformation models presented in our Columbia University source code.
    var randomCube = Cube.random()
    var whiteCrossSolvedCube = Cube.whiteCross()
    var colorConfig: Cube!
    var colorConfigOld: Cube!
    
    var moveList: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        randomCube = Cube.random()
        whiteCrossSolvedCube = Cube.whiteCross()
        
        colorConfig = randomCube
        colorConfigOld = colorConfig
        
        testRun()
    }
    
    //this concludes the first solved state
    func refresh() {
        colorConfigOld = colorConfig
    }
    
    func X(count: Int) {
        guard count != 0 else { return }
        
        for _ in 0..<count {
            colorConfig[4, 0] = colorConfigOld[4, 2]
            colorConfig[4, 6] = colorConfigOld[4, 0]
            colorConfig[4, 8] = colorConfigOld[4, 6]
            colorConfig[4, 2] = colorConfigOld[4, 8]
            colorConfig[4, 1] = colorConfigOld[4, 5]
            colorConfig[4, 3] = colorConfigOld[4, 1]
            colorConfig[4, 7] = colorConfigOld[4, 3]
            colorConfig[4, 5] = colorConfigOld[4, 7]
            colorConfig[2, 0] = colorConfigOld[0, 0]
            colorConfig[0, 0] = colorConfigOld[5, 6]
            colorConfig[5, 6] = colorConfigOld[3, 8]
            colorConfig[3, 8] = colorConfigOld[2, 0]
            colorConfig[2, 3] = colorConfigOld[0, 3]
            colorConfig[0, 3] = colorConfigOld[5, 7]
            colorConfig[5, 7] = colorConfigOld[3, 5]
            colorConfig[3, 5] = colorConfigOld[2, 3]
            colorConfig[2, 6] = colorConfigOld[0, 6]
            colorConfig[0, 6] = colorConfigOld[5, 8]
            colorConfig[5, 8] = colorConfigOld[3, 2]
            colorConfig[3, 2] = colorConfigOld[2, 6]
            colorConfig[1, 0] = colorConfigOld[1, 6]
            colorConfig[1, 6] = colorConfigOld[1, 8]
            colorConfig[1, 8] = colorConfigOld[1, 2]
            colorConfig[1, 2] = colorConfigOld[1, 0]
            colorConfig[1, 1] = colorConfigOld[1, 3]
            colorConfig[1, 3] = colorConfigOld[1, 7]
            colorConfig[1, 7] = colorConfigOld[1, 5]
            colorConfig[1, 5] = colorConfigOld[1, 1]
            colorConfig[2, 2] = colorConfigOld[0, 2]
            colorConfig[0, 2] = colorConfigOld[5, 0]
            colorConfig[5, 0] = colorConfigOld[3, 6]
            colorConfig[3, 6] = colorConfigOld[2, 2]
            colorConfig[2, 5] = colorConfigOld[0, 5]
            colorConfig[0, 5] = colorConfigOld[5, 1]
            colorConfig[5, 1] = colorConfigOld[3, 3]
            colorConfig[3, 3] = colorConfigOld[2, 5]
            colorConfig[2, 8] = colorConfigOld[0, 8]
            colorConfig[0, 8] = colorConfigOld[5, 2]
            colorConfig[5, 2] = colorConfigOld[3, 0]
            colorConfig[3, 0] = colorConfigOld[2, 8]
            colorConfig[0, 1] = colorConfigOld[5, 3]
            colorConfig[0, 4] = colorConfigOld[5, 4]
            colorConfig[0, 7] = colorConfigOld[5, 5]
            colorConfig[2, 1] = colorConfigOld[0, 1]
            colorConfig[2, 4] = colorConfigOld[0, 4]
            colorConfig[2, 7] = colorConfigOld[0, 7]
            colorConfig[3, 7] = colorConfigOld[2, 1]
            colorConfig[3, 4] = colorConfigOld[2, 4]
            colorConfig[3, 1] = colorConfigOld[2, 7]
            colorConfig[5, 3] = colorConfigOld[3, 7]
            colorConfig[5, 4] = colorConfigOld[3, 4]
            colorConfig[5, 5] = colorConfigOld[3, 1]
            
            refresh()
            X(count: count - 1)
        }
    }
    
    func Y(count: Int) {
        guard count != 0 else { return }
        
        for _ in 0..<count {
            colorConfig[2, 0] = colorConfigOld[2, 6]
            colorConfig[2, 6] = colorConfigOld[2, 8]
            colorConfig[2, 8] = colorConfigOld[2, 2]
            colorConfig[2, 2] = colorConfigOld[2, 0]
            colorConfig[2, 1] = colorConfigOld[2, 3]
            colorConfig[2, 3] = colorConfigOld[2, 7]
            colorConfig[2, 7] = colorConfigOld[2, 5]
            colorConfig[2, 5] = colorConfigOld[2, 1]
            colorConfig[4, 0] = colorConfigOld[0, 0]
            colorConfig[0, 0] = colorConfigOld[1, 0]
            colorConfig[1, 0] = colorConfigOld[3, 0]
            colorConfig[3, 0] = colorConfigOld[4, 0]
            colorConfig[4, 1] = colorConfigOld[0, 1]
            colorConfig[0, 1] = colorConfigOld[1, 1]
            colorConfig[1, 1] = colorConfigOld[3, 1]
            colorConfig[3, 1] = colorConfigOld[4, 1]
            colorConfig[4, 2] = colorConfigOld[0, 2]
            colorConfig[0, 2] = colorConfigOld[1, 2]
            colorConfig[1, 2] = colorConfigOld[3, 2]
            colorConfig[3, 2] = colorConfigOld[4, 2]
            colorConfig[5, 0] = colorConfigOld[5, 2]
            colorConfig[5, 6] = colorConfigOld[5, 0]
            colorConfig[5, 8] = colorConfigOld[5, 6]
            colorConfig[5, 2] = colorConfigOld[5, 8]
            colorConfig[5, 1] = colorConfigOld[5, 5]
            colorConfig[5, 3] = colorConfigOld[5, 1]
            colorConfig[5, 7] = colorConfigOld[5, 3]
            colorConfig[5, 5] = colorConfigOld[5, 7]
            colorConfig[4, 6] = colorConfigOld[0, 6]
            colorConfig[0, 6] = colorConfigOld[1, 6]
            colorConfig[1, 6] = colorConfigOld[3, 6]
            colorConfig[3, 6] = colorConfigOld[4, 6]
            colorConfig[4, 7] = colorConfigOld[0, 7]
            colorConfig[0, 7] = colorConfigOld[1, 7]
            colorConfig[1, 7] = colorConfigOld[3, 7]
            colorConfig[3, 7] = colorConfigOld[4, 7]
            colorConfig[4, 8] = colorConfigOld[0, 8]
            colorConfig[0, 8] = colorConfigOld[1, 8]
            colorConfig[1, 8] = colorConfigOld[3, 8]
            colorConfig[3, 8] = colorConfigOld[4, 8]
            colorConfig[0, 3] = colorConfigOld[1, 3]
            colorConfig[0, 4] = colorConfigOld[1, 4]
            colorConfig[0, 5] = colorConfigOld[1, 5]
            colorConfig[1, 3] = colorConfigOld[3, 3]
            colorConfig[1, 4] = colorConfigOld[3, 4]
            colorConfig[1, 5] = colorConfigOld[3, 5]
            colorConfig[3, 3] = colorConfigOld[4, 3]
            colorConfig[3, 4] = colorConfigOld[4, 4]
            colorConfig[3, 5] = colorConfigOld[4, 5]
            colorConfig[4, 3] = colorConfigOld[0, 3]
            colorConfig[4, 4] = colorConfigOld[0, 4]
            colorConfig[4, 5] = colorConfigOld[0, 5]
            
            refresh()
            Y(count: count - 1)
        }
    }
    
    func Z(count: Int) {
        guard count != 0 else { return }
        
        for _ in 0..<count {
            colorConfig[0, 0] = colorConfigOld[0, 6]
            colorConfig[0, 6] = colorConfigOld[0, 8]
            colorConfig[0, 8] = colorConfigOld[0, 2]
            colorConfig[0, 2] = colorConfigOld[0, 0]
            colorConfig[0, 1] = colorConfigOld[0, 3]
            colorConfig[0, 3] = colorConfigOld[0, 7]
            colorConfig[0, 7] = colorConfigOld[0, 5]
            colorConfig[0, 5] = colorConfigOld[0, 1]
            colorConfig[2, 6] = colorConfigOld[4, 8]
            colorConfig[1, 0] = colorConfigOld[2, 6]
            colorConfig[5, 0] = colorConfigOld[1, 0]
            colorConfig[4, 8] = colorConfigOld[5, 0]
            colorConfig[2, 7] = colorConfigOld[4, 5]
            colorConfig[1, 3] = colorConfigOld[2, 7]
            colorConfig[5, 3] = colorConfigOld[1, 3]
            colorConfig[4, 5] = colorConfigOld[5, 3]
            colorConfig[2, 8] = colorConfigOld[4, 2]
            colorConfig[1, 6] = colorConfigOld[2, 8]
            colorConfig[5, 6] = colorConfigOld[1, 6]
            colorConfig[4, 2] = colorConfigOld[5, 6]
            colorConfig[3, 0] = colorConfigOld[3, 2]
            colorConfig[3, 6] = colorConfigOld[3, 0]
            colorConfig[3, 8] = colorConfigOld[3, 6]
            colorConfig[3, 2] = colorConfigOld[3, 8]
            colorConfig[3, 1] = colorConfigOld[3, 5]
            colorConfig[3, 3] = colorConfigOld[3, 1]
            colorConfig[3, 7] = colorConfigOld[3, 3]
            colorConfig[3, 5] = colorConfigOld[3, 7]
            colorConfig[2, 0] = colorConfigOld[4, 6]
            colorConfig[1, 2] = colorConfigOld[2, 0]
            colorConfig[5, 2] = colorConfigOld[1, 2]
            colorConfig[4, 6] = colorConfigOld[5, 2]
            colorConfig[2, 1] = colorConfigOld[4, 3]
            colorConfig[1, 5] = colorConfigOld[2, 1]
            colorConfig[5, 5] = colorConfigOld[1, 5]
            colorConfig[4, 3] = colorConfigOld[5, 5]
            colorConfig[2, 2] = colorConfigOld[4, 0]
            colorConfig[1, 8] = colorConfigOld[2, 2]
            colorConfig[5, 8] = colorConfigOld[1, 8]
            colorConfig[4, 0] = colorConfigOld[5, 8]
            colorConfig[4, 1] = colorConfigOld[5, 7]
            colorConfig[4, 4] = colorConfigOld[5, 4]
            colorConfig[4, 7] = colorConfigOld[5, 1]
            colorConfig[5, 7] = colorConfigOld[1, 7]
            colorConfig[5, 4] = colorConfigOld[1, 4]
            colorConfig[5, 1] = colorConfigOld[1, 1]
            colorConfig[1, 7] = colorConfigOld[2, 5]
            colorConfig[1, 4] = colorConfigOld[2, 4]
            colorConfig[1, 1] = colorConfigOld[2, 3]
            colorConfig[2, 3] = colorConfigOld[4, 7]
            colorConfig[2, 4] = colorConfigOld[4, 4]
            colorConfig[2, 5] = colorConfigOld[4, 1]
            
            refresh()
            Z(count: count - 1)
        }
    }
    
    func U1() {
        colorConfig[2, 0] = colorConfigOld[2, 6];
        
        print(colorConfig.toString())
        
        
        
        colorConfig[2, 6] = colorConfigOld[2, 8];
        
        
        print(colorConfig.toString())
        
        colorConfig[2, 8] = colorConfigOld[2, 2];
        colorConfig[2, 2] = colorConfigOld[2, 0];
        colorConfig[2, 1] = colorConfigOld[2, 3];
        colorConfig[2, 3] = colorConfigOld[2, 7];
        colorConfig[2, 7] = colorConfigOld[2, 5];
        colorConfig[2, 5] = colorConfigOld[2, 1];
        colorConfig[4, 0] = colorConfigOld[0, 0];
        colorConfig[0, 0] = colorConfigOld[1, 0];
        colorConfig[1, 0] = colorConfigOld[3, 0];
        colorConfig[3, 0] = colorConfigOld[4, 0];
        colorConfig[4, 1] = colorConfigOld[0, 1];
        colorConfig[0, 1] = colorConfigOld[1, 1];
        colorConfig[1, 1] = colorConfigOld[3, 1];
        colorConfig[3, 1] = colorConfigOld[4, 1];
        colorConfig[4, 2] = colorConfigOld[0, 2];
        colorConfig[0, 2] = colorConfigOld[1, 2];
        colorConfig[1, 2] = colorConfigOld[3, 2];
        colorConfig[3, 2] = colorConfigOld[4, 2];
    }
    
    func U2() {
        colorConfig[2, 0] = colorConfigOld[2, 8];
        colorConfig[2, 6] = colorConfigOld[2, 2];
        colorConfig[2, 8] = colorConfigOld[2, 0];
        colorConfig[2, 2] = colorConfigOld[2, 6];
        colorConfig[2, 1] = colorConfigOld[2, 7];
        colorConfig[2, 3] = colorConfigOld[2, 5];
        colorConfig[2, 7] = colorConfigOld[2, 1];
        colorConfig[2, 5] = colorConfigOld[2, 3];
        colorConfig[4, 0] = colorConfigOld[1, 0];
        colorConfig[0, 0] = colorConfigOld[3, 0];
        colorConfig[1, 0] = colorConfigOld[4, 0];
        colorConfig[3, 0] = colorConfigOld[0, 0];
        colorConfig[4, 1] = colorConfigOld[1, 1];
        colorConfig[0, 1] = colorConfigOld[3, 1];
        colorConfig[1, 1] = colorConfigOld[4, 1];
        colorConfig[3, 1] = colorConfigOld[0, 1];
        colorConfig[4, 2] = colorConfigOld[1, 2];
        colorConfig[0, 2] = colorConfigOld[3, 2];
        colorConfig[1, 2] = colorConfigOld[4, 2];
        colorConfig[3, 2] = colorConfigOld[0, 2];
    }
    
    func U3() {
        colorConfig[2, 0] = colorConfigOld[2, 2];
        colorConfig[2, 6] = colorConfigOld[2, 0];
        colorConfig[2, 8] = colorConfigOld[2, 6];
        colorConfig[2, 2] = colorConfigOld[2, 8];
        colorConfig[2, 1] = colorConfigOld[2, 5];
        colorConfig[2, 3] = colorConfigOld[2, 1];
        colorConfig[2, 7] = colorConfigOld[2, 3];
        colorConfig[2, 5] = colorConfigOld[2, 7];
        colorConfig[4, 0] = colorConfigOld[3, 0];
        colorConfig[0, 0] = colorConfigOld[4, 0];
        colorConfig[1, 0] = colorConfigOld[0, 0];
        colorConfig[3, 0] = colorConfigOld[1, 0];
        colorConfig[4, 1] = colorConfigOld[3, 1];
        colorConfig[0, 1] = colorConfigOld[4, 1];
        colorConfig[1, 1] = colorConfigOld[0, 1];
        colorConfig[3, 1] = colorConfigOld[1, 1];
        colorConfig[4, 2] = colorConfigOld[3, 2];
        colorConfig[0, 2] = colorConfigOld[4, 2];
        colorConfig[1, 2] = colorConfigOld[0, 2];
        colorConfig[3, 2] = colorConfigOld[1, 2];
    }
    
    func D1() {
        colorConfig[5, 0] = colorConfigOld[5, 6];
        colorConfig[5, 6] = colorConfigOld[5, 8];
        colorConfig[5, 8] = colorConfigOld[5, 2];
        colorConfig[5, 2] = colorConfigOld[5, 0];
        colorConfig[5, 1] = colorConfigOld[5, 3];
        colorConfig[5, 3] = colorConfigOld[5, 7];
        colorConfig[5, 7] = colorConfigOld[5, 5];
        colorConfig[5, 5] = colorConfigOld[5, 1];
        colorConfig[4, 6] = colorConfigOld[3, 6];
        colorConfig[0, 6] = colorConfigOld[4, 6];
        colorConfig[1, 6] = colorConfigOld[0, 6];
        colorConfig[3, 6] = colorConfigOld[1, 6];
        colorConfig[4, 7] = colorConfigOld[3, 7];
        colorConfig[0, 7] = colorConfigOld[4, 7];
        colorConfig[1, 7] = colorConfigOld[0, 7];
        colorConfig[3, 7] = colorConfigOld[1, 7];
        colorConfig[4, 8] = colorConfigOld[3, 8];
        colorConfig[0, 8] = colorConfigOld[4, 8];
        colorConfig[1, 8] = colorConfigOld[0, 8];
        colorConfig[3, 8] = colorConfigOld[1, 8];
    }
    
    func D2() {
        colorConfig[5, 0] = colorConfigOld[5, 8];
        colorConfig[5, 6] = colorConfigOld[5, 2];
        colorConfig[5, 8] = colorConfigOld[5, 0];
        colorConfig[5, 2] = colorConfigOld[5, 6];
        colorConfig[5, 1] = colorConfigOld[5, 7];
        colorConfig[5, 3] = colorConfigOld[5, 5];
        colorConfig[5, 7] = colorConfigOld[5, 1];
        colorConfig[5, 5] = colorConfigOld[5, 3];
        colorConfig[4, 6] = colorConfigOld[1, 6];
        colorConfig[0, 6] = colorConfigOld[3, 6];
        colorConfig[1, 6] = colorConfigOld[4, 6];
        colorConfig[3, 6] = colorConfigOld[0, 6];
        colorConfig[4, 7] = colorConfigOld[1, 7];
        colorConfig[0, 7] = colorConfigOld[3, 7];
        colorConfig[1, 7] = colorConfigOld[4, 7];
        colorConfig[3, 7] = colorConfigOld[0, 7];
        colorConfig[4, 8] = colorConfigOld[1, 8];
        colorConfig[0, 8] = colorConfigOld[3, 8];
        colorConfig[1, 8] = colorConfigOld[4, 8];
        colorConfig[3, 8] = colorConfigOld[0, 8];
    }
    
    func D3() {
        colorConfig[5, 0] = colorConfigOld[5, 2];
        colorConfig[5, 6] = colorConfigOld[5, 0];
        colorConfig[5, 8] = colorConfigOld[5, 6];
        colorConfig[5, 2] = colorConfigOld[5, 8];
        colorConfig[5, 1] = colorConfigOld[5, 5];
        colorConfig[5, 3] = colorConfigOld[5, 1];
        colorConfig[5, 7] = colorConfigOld[5, 3];
        colorConfig[5, 5] = colorConfigOld[5, 7];
        colorConfig[4, 6] = colorConfigOld[0, 6];
        colorConfig[0, 6] = colorConfigOld[1, 6];
        colorConfig[1, 6] = colorConfigOld[3, 6];
        colorConfig[3, 6] = colorConfigOld[4, 6];
        colorConfig[4, 7] = colorConfigOld[0, 7];
        colorConfig[0, 7] = colorConfigOld[1, 7];
        colorConfig[1, 7] = colorConfigOld[3, 7];
        colorConfig[3, 7] = colorConfigOld[4, 7];
        colorConfig[4, 8] = colorConfigOld[0, 8];
        colorConfig[0, 8] = colorConfigOld[1, 8];
        colorConfig[1, 8] = colorConfigOld[3, 8];
        colorConfig[3, 8] = colorConfigOld[4, 8];
    }
    
    func F1() {
        colorConfig[0, 0] = colorConfigOld[0, 6]
        colorConfig[0, 6] = colorConfigOld[0, 8]
        colorConfig[0, 8] = colorConfigOld[0, 2]
        colorConfig[0, 2] = colorConfigOld[0, 0]
        colorConfig[0, 1] = colorConfigOld[0, 3]
        colorConfig[0, 3] = colorConfigOld[0, 7]
        colorConfig[0, 7] = colorConfigOld[0, 5]
        colorConfig[0, 5] = colorConfigOld[0, 1]
        colorConfig[2, 6] = colorConfigOld[4, 8]
        colorConfig[1, 0] = colorConfigOld[2, 6]
        colorConfig[5, 0] = colorConfigOld[1, 0]
        colorConfig[4, 8] = colorConfigOld[5, 0]
        colorConfig[2, 7] = colorConfigOld[4, 5]
        colorConfig[1, 3] = colorConfigOld[2, 7]
        colorConfig[5, 3] = colorConfigOld[1, 3]
        colorConfig[4, 5] = colorConfigOld[5, 3]
        colorConfig[2, 8] = colorConfigOld[4, 2]
        colorConfig[1, 6] = colorConfigOld[2, 8]
        colorConfig[5, 6] = colorConfigOld[1, 6]
        colorConfig[4, 2] = colorConfigOld[5, 6]
    }
    
    func F2() {
        colorConfig[0, 0] = colorConfigOld[0, 8]
        colorConfig[0, 6] = colorConfigOld[0, 2]
        colorConfig[0, 8] = colorConfigOld[0, 0]
        colorConfig[0, 2] = colorConfigOld[0, 6]
        colorConfig[0, 1] = colorConfigOld[0, 7]
        colorConfig[0, 3] = colorConfigOld[0, 5]
        colorConfig[0, 7] = colorConfigOld[0, 1]
        colorConfig[0, 5] = colorConfigOld[0, 3]
        colorConfig[2, 6] = colorConfigOld[5, 0]
        colorConfig[1, 0] = colorConfigOld[4, 8]
        colorConfig[5, 0] = colorConfigOld[2, 6]
        colorConfig[4, 8] = colorConfigOld[1, 0]
        colorConfig[2, 7] = colorConfigOld[5, 3]
        colorConfig[1, 3] = colorConfigOld[4, 5]
        colorConfig[5, 3] = colorConfigOld[2, 7]
        colorConfig[4, 5] = colorConfigOld[1, 3]
        colorConfig[2, 8] = colorConfigOld[5, 6]
        colorConfig[1, 6] = colorConfigOld[4, 2]
        colorConfig[5, 6] = colorConfigOld[2, 8]
        colorConfig[4, 2] = colorConfigOld[1, 6]
    }
    
    func F3() {
        colorConfig[0, 0] = colorConfigOld[0, 2]
        colorConfig[0, 6] = colorConfigOld[0, 0]
        colorConfig[0, 8] = colorConfigOld[0, 6]
        colorConfig[0, 2] = colorConfigOld[0, 8]
        colorConfig[0, 1] = colorConfigOld[0, 5]
        colorConfig[0, 3] = colorConfigOld[0, 1]
        colorConfig[0, 7] = colorConfigOld[0, 3]
        colorConfig[0, 5] = colorConfigOld[0, 7]
        colorConfig[2, 6] = colorConfigOld[1, 0]
        colorConfig[1, 0] = colorConfigOld[5, 0]
        colorConfig[5, 0] = colorConfigOld[4, 8]
        colorConfig[4, 8] = colorConfigOld[2, 6]
        colorConfig[2, 7] = colorConfigOld[1, 3]
        colorConfig[1, 3] = colorConfigOld[5, 3]
        colorConfig[5, 3] = colorConfigOld[4, 5]
        colorConfig[4, 5] = colorConfigOld[2, 7]
        colorConfig[2, 8] = colorConfigOld[1, 6]
        colorConfig[1, 6] = colorConfigOld[5, 6]
        colorConfig[5, 6] = colorConfigOld[4, 2]
        colorConfig[4, 2] = colorConfigOld[2, 8]
    }
    
    func B1() {
        colorConfig[3, 0] = colorConfigOld[3, 6]
        colorConfig[3, 6] = colorConfigOld[3, 8]
        colorConfig[3, 8] = colorConfigOld[3, 2]
        colorConfig[3, 2] = colorConfigOld[3, 0]
        colorConfig[3, 1] = colorConfigOld[3, 3]
        colorConfig[3, 3] = colorConfigOld[3, 7]
        colorConfig[3, 7] = colorConfigOld[3, 5]
        colorConfig[3, 5] = colorConfigOld[3, 1]
        colorConfig[2, 0] = colorConfigOld[1, 2]
        colorConfig[1, 2] = colorConfigOld[5, 2]
        colorConfig[5, 2] = colorConfigOld[4, 6]
        colorConfig[4, 6] = colorConfigOld[2, 0]
        colorConfig[2, 1] = colorConfigOld[1, 5]
        colorConfig[1, 5] = colorConfigOld[5, 5]
        colorConfig[5, 5] = colorConfigOld[4, 3]
        colorConfig[4, 3] = colorConfigOld[2, 1]
        colorConfig[2, 2] = colorConfigOld[1, 8]
        colorConfig[1, 8] = colorConfigOld[5, 8]
        colorConfig[5, 8] = colorConfigOld[4, 0]
        colorConfig[4, 0] = colorConfigOld[2, 2]
    }
    
    func B2() {
        colorConfig[3, 0] = colorConfigOld[3, 8]
        colorConfig[3, 6] = colorConfigOld[3, 2]
        colorConfig[3, 8] = colorConfigOld[3, 0]
        colorConfig[3, 2] = colorConfigOld[3, 6]
        colorConfig[3, 1] = colorConfigOld[3, 7]
        colorConfig[3, 3] = colorConfigOld[3, 5]
        colorConfig[3, 7] = colorConfigOld[3, 1]
        colorConfig[3, 5] = colorConfigOld[3, 3]
        colorConfig[2, 0] = colorConfigOld[5, 2]
        colorConfig[1, 2] = colorConfigOld[4, 6]
        colorConfig[5, 2] = colorConfigOld[2, 0]
        colorConfig[4, 6] = colorConfigOld[1, 2]
        colorConfig[2, 1] = colorConfigOld[5, 5]
        colorConfig[1, 5] = colorConfigOld[4, 3]
        colorConfig[5, 5] = colorConfigOld[2, 1]
        colorConfig[4, 3] = colorConfigOld[1, 5]
        colorConfig[2, 2] = colorConfigOld[5, 8]
        colorConfig[1, 8] = colorConfigOld[4, 0]
        colorConfig[5, 8] = colorConfigOld[2, 2]
        colorConfig[4, 0] = colorConfigOld[1, 8]
    }
    
    func B3() {
        colorConfig[3, 0] = colorConfigOld[3, 2]
        colorConfig[3, 6] = colorConfigOld[3, 0]
        colorConfig[3, 8] = colorConfigOld[3, 6]
        colorConfig[3, 2] = colorConfigOld[3, 8]
        colorConfig[3, 1] = colorConfigOld[3, 5]
        colorConfig[3, 3] = colorConfigOld[3, 1]
        colorConfig[3, 7] = colorConfigOld[3, 3]
        colorConfig[3, 5] = colorConfigOld[3, 7]
        colorConfig[2, 0] = colorConfigOld[4, 6]
        colorConfig[1, 2] = colorConfigOld[2, 0]
        colorConfig[5, 2] = colorConfigOld[1, 2]
        colorConfig[4, 6] = colorConfigOld[5, 2]
        colorConfig[2, 1] = colorConfigOld[4, 3]
        colorConfig[1, 5] = colorConfigOld[2, 1]
        colorConfig[5, 5] = colorConfigOld[1, 5]
        colorConfig[4, 3] = colorConfigOld[5, 5]
        colorConfig[2, 2] = colorConfigOld[4, 0]
        colorConfig[1, 8] = colorConfigOld[2, 2]
        colorConfig[5, 8] = colorConfigOld[1, 8]
        colorConfig[4, 0] = colorConfigOld[5, 8]
    }
    
    func L1() {
        colorConfig[4, 0] = colorConfigOld[4, 6]
        colorConfig[4, 6] = colorConfigOld[4, 8]
        colorConfig[4, 8] = colorConfigOld[4, 2]
        colorConfig[4, 2] = colorConfigOld[4, 0]
        colorConfig[4, 1] = colorConfigOld[4, 3]
        colorConfig[4, 3] = colorConfigOld[4, 7]
        colorConfig[4, 7] = colorConfigOld[4, 5]
        colorConfig[4, 5] = colorConfigOld[4, 1]
        colorConfig[2, 0] = colorConfigOld[3, 8]
        colorConfig[0, 0] = colorConfigOld[2, 0]
        colorConfig[5, 6] = colorConfigOld[0, 0]
        colorConfig[3, 8] = colorConfigOld[5, 6]
        colorConfig[2, 3] = colorConfigOld[3, 5]
        colorConfig[0, 3] = colorConfigOld[2, 3]
        colorConfig[5, 7] = colorConfigOld[0, 3]
        colorConfig[3, 5] = colorConfigOld[5, 7]
        colorConfig[2, 6] = colorConfigOld[3, 2]
        colorConfig[0, 6] = colorConfigOld[2, 6]
        colorConfig[5, 8] = colorConfigOld[0, 6]
        colorConfig[3, 2] = colorConfigOld[5, 8]
    }
    
    func L2() {
        colorConfig[4, 0] = colorConfigOld[4, 8]
        colorConfig[4, 6] = colorConfigOld[4, 2]
        colorConfig[4, 8] = colorConfigOld[4, 0]
        colorConfig[4, 2] = colorConfigOld[4, 6]
        colorConfig[4, 1] = colorConfigOld[4, 7]
        colorConfig[4, 3] = colorConfigOld[4, 5]
        colorConfig[4, 7] = colorConfigOld[4, 1]
        colorConfig[4, 5] = colorConfigOld[4, 3]
        colorConfig[2, 0] = colorConfigOld[5, 6]
        colorConfig[0, 0] = colorConfigOld[3, 8]
        colorConfig[5, 6] = colorConfigOld[2, 0]
        colorConfig[3, 8] = colorConfigOld[0, 0]
        colorConfig[2, 3] = colorConfigOld[5, 7]
        colorConfig[0, 3] = colorConfigOld[3, 5]
        colorConfig[5, 7] = colorConfigOld[2, 3]
        colorConfig[3, 5] = colorConfigOld[0, 3]
        colorConfig[2, 6] = colorConfigOld[5, 8]
        colorConfig[0, 6] = colorConfigOld[3, 2]
        colorConfig[5, 8] = colorConfigOld[2, 6]
        colorConfig[3, 2] = colorConfigOld[0, 6]
    }
    
    func L3() {
        colorConfig[4, 0] = colorConfigOld[4, 2]
        colorConfig[4, 6] = colorConfigOld[4, 0]
        colorConfig[4, 8] = colorConfigOld[4, 6]
        colorConfig[4, 2] = colorConfigOld[4, 8]
        colorConfig[4, 1] = colorConfigOld[4, 5]
        colorConfig[4, 3] = colorConfigOld[4, 1]
        colorConfig[4, 7] = colorConfigOld[4, 3]
        colorConfig[4, 5] = colorConfigOld[4, 7]
        colorConfig[2, 0] = colorConfigOld[0, 0]
        colorConfig[0, 0] = colorConfigOld[5, 6]
        colorConfig[5, 6] = colorConfigOld[3, 8]
        colorConfig[3, 8] = colorConfigOld[2, 0]
        colorConfig[2, 3] = colorConfigOld[0, 3]
        colorConfig[0, 3] = colorConfigOld[5, 7]
        colorConfig[5, 7] = colorConfigOld[3, 5]
        colorConfig[3, 5] = colorConfigOld[2, 3]
        colorConfig[2, 6] = colorConfigOld[0, 6]
        colorConfig[0, 6] = colorConfigOld[5, 8]
        colorConfig[5, 8] = colorConfigOld[3, 2]
        colorConfig[3, 2] = colorConfigOld[2, 6]
    }
    
    func R1() {
        colorConfig[1, 0] = colorConfigOld[1, 6]
        colorConfig[1, 6] = colorConfigOld[1, 8]
        colorConfig[1, 8] = colorConfigOld[1, 2]
        colorConfig[1, 2] = colorConfigOld[1, 0]
        colorConfig[1, 1] = colorConfigOld[1, 3]
        colorConfig[1, 3] = colorConfigOld[1, 7]
        colorConfig[1, 7] = colorConfigOld[1, 5]
        colorConfig[1, 5] = colorConfigOld[1, 1]
        colorConfig[2, 2] = colorConfigOld[0, 2]
        colorConfig[0, 2] = colorConfigOld[5, 0]
        colorConfig[5, 0] = colorConfigOld[3, 6]
        colorConfig[3, 6] = colorConfigOld[2, 2]
        colorConfig[2, 5] = colorConfigOld[0, 5]
        colorConfig[0, 5] = colorConfigOld[5, 1]
        colorConfig[5, 1] = colorConfigOld[3, 3]
        colorConfig[3, 3] = colorConfigOld[2, 5]
        colorConfig[2, 8] = colorConfigOld[0, 8]
        colorConfig[0, 8] = colorConfigOld[5, 2]
        colorConfig[5, 2] = colorConfigOld[3, 0]
        colorConfig[3, 0] = colorConfigOld[2, 8]
    }
    
    func R2() {
        colorConfig[1, 0] = colorConfigOld[1, 8]
        colorConfig[1, 6] = colorConfigOld[1, 2]
        colorConfig[1, 8] = colorConfigOld[1, 0]
        colorConfig[1, 2] = colorConfigOld[1, 6]
        colorConfig[1, 1] = colorConfigOld[1, 7]
        colorConfig[1, 3] = colorConfigOld[1, 5]
        colorConfig[1, 7] = colorConfigOld[1, 1]
        colorConfig[1, 5] = colorConfigOld[1, 3]
        colorConfig[2, 2] = colorConfigOld[5, 0]
        colorConfig[0, 2] = colorConfigOld[3, 6]
        colorConfig[5, 0] = colorConfigOld[2, 2]
        colorConfig[3, 6] = colorConfigOld[0, 2]
        colorConfig[2, 5] = colorConfigOld[5, 1]
        colorConfig[0, 5] = colorConfigOld[3, 3]
        colorConfig[5, 1] = colorConfigOld[2, 5]
        colorConfig[3, 3] = colorConfigOld[0, 5]
        colorConfig[2, 8] = colorConfigOld[5, 2]
        colorConfig[0, 8] = colorConfigOld[3, 0]
        colorConfig[5, 2] = colorConfigOld[2, 8]
        colorConfig[3, 0] = colorConfigOld[0, 8]
    }
    
    func R3() {
        colorConfig[1, 0] = colorConfigOld[1, 2]
        colorConfig[1, 6] = colorConfigOld[1, 0]
        colorConfig[1, 8] = colorConfigOld[1, 6]
        colorConfig[1, 2] = colorConfigOld[1, 8]
        colorConfig[1, 1] = colorConfigOld[1, 5]
        colorConfig[1, 3] = colorConfigOld[1, 1]
        colorConfig[1, 7] = colorConfigOld[1, 3]
        colorConfig[1, 5] = colorConfigOld[1, 7]
        colorConfig[2, 2] = colorConfigOld[3, 6]
        colorConfig[0, 2] = colorConfigOld[2, 2]
        colorConfig[5, 0] = colorConfigOld[0, 2]
        colorConfig[3, 6] = colorConfigOld[5, 0]
        colorConfig[2, 5] = colorConfigOld[3, 3]
        colorConfig[0, 5] = colorConfigOld[2, 5]
        colorConfig[5, 1] = colorConfigOld[0, 5]
        colorConfig[3, 3] = colorConfigOld[5, 1]
        colorConfig[2, 8] = colorConfigOld[3, 0]
        colorConfig[0, 8] = colorConfigOld[2, 8]
        colorConfig[5, 2] = colorConfigOld[0, 8]
        colorConfig[3, 0] = colorConfigOld[5, 2]
    }
    
    func doCounterMove() {
        let to = moveList.removeLast()
        
        switch to {
        case "U1":
            U3()
            break
        case "U2":
            U2()
            break
        case "U3":
            U1()
            break
        case "D1":
            D3()
            break
        case "D2":
            D2()
            break
        case "D3":
            D1()
            break
        case "F1":
            F3()
            break
        case "F2":
            F2()
            break
        case "F3":
            F1()
            break
        case "B1":
            B3()
            break
        case "B2":
            B2()
            break
        case "B3":
            B1()
            break
        case "L1":
            L3()
            break
        case "L2":
            L2()
            break
        case "L3":
            L1()
            break
        case "R1":
            R3()
            break
        case "R2":
            R2()
            break
        case "R3":
            R1()
            break
        case "X1":
            X(count: 1)
            break
        case "X2":
            X(count: 2)
            break
        case "X3":
            X(count: 1)
            break
        case "Y1":
            Y(count: 3)
            break
        case "Y2":
            Y(count: 2)
            break
        case "Y3":
            Y(count: 1)
            break
        case "Z1":
            Z(count: 3)
            break
        case "Z2":
            Z(count: 2)
            break
        case "Z3":
            Z(count: 1)
            break
            
        default:
            break
        }
    }
    
    func doMove(number: Int) {
        
        switch number {
        case 0:
            U1()
            moveList.append("U1")
            break
        case 1:
            U2()
            moveList.append("U2")
            break
        case 2:
            U3()
            moveList.append("U3")
            break
        case 3:
            D1()
            moveList.append("D1")
            break
        case 4:
            D2()
            moveList.append("D2")
            break
        case 5:
            D3()
            moveList.append("D3")
            break
        case 6:
            F1()
            moveList.append("F1")
            break
        case 7:
            F2()
            moveList.append("F2")
            break
        case 8:
            F3()
            moveList.append("F3")
            break
        case 9:
            B1()
            moveList.append("B1")
            break
        case 10:
            B2()
            moveList.append("B2")
            break
        case 11:
            B3()
            moveList.append("B3")
            break
        case 12:
            L1()
            moveList.append("L1")
            break
        case 13:
            L2()
            moveList.append("L2")
            break
        case 14:
            L3()
            moveList.append("L3")
            break
        case 15:
            R1()
            moveList.append("R1")
            break
        case 16:
            R2()
            moveList.append("R2")
            break
        case 17:
            R3()
            moveList.append("R3")
            break
        default:
            break
        }
    }
    
    func randomTwist(){
        let randomNum = Int((Double(arc4random())/Double(UINT32_MAX))*18)
        doMove(number: randomNum)
    }
    
    // The following seaerch uses random cube turns to attempt to reach the goal state (currently set as random -> WDS)
    //func searchForPath(startCube: [[String]], goalCube: [[String]] ) {
    // replace above with the following
    func searchForPath() {
        while !(colorConfig == whiteCrossSolvedCube) {
            // replace above with the following // reverted
            //for var _ in 0...3 {
            randomTwist()
            print(colorConfig.toString())
            refresh()
            
            if moveList.count >= 150 {
                print("reached max moves without a solution")
                break
            }
        }
        
        print("completed searching for a solution")
        print(moveList)
    }
    
    /*
     // executive decision to limit to 7 (seems legit)
     func depthFirstSearchForPath() ->[String] {
     for i in 0...17 {
     print("the value of 'i' is \(i)")
     doMove(number: i)
     if isMatch(testCube: colorConfig, goalCube: whiteCrossSolvedCube) == false {
     for j in 0...17 {
     doMove(number: j)
     if isMatch(testCube: colorConfig, goalCube: whiteCrossSolvedCube) == false {
     for k in 0...17 {
     doMove(number: k)
     if isMatch(testCube: colorConfig, goalCube: whiteCrossSolvedCube) == false {
     for l in 0...17 {
     doMove(number: l)
     if isMatch(testCube: colorConfig, goalCube: whiteCrossSolvedCube) == false {
     /*                    for m in 0...17 {
     doMove(number: m)
     if isMatch(testCube: colorConfig, goalCube: whiteCrossSolvedCube) == false {
     for n in 0...17 {
     doMove(number: n)
     if isMatch(testCube: colorConfig, goalCube: whiteCrossSolvedCube) == false {
     for o in 0...17 {
     doMove(number: o)
     print("testing combination \(i) \(j) \(k) \(l) \(m) \(n) \(o) for the path")
     if isMatch(testCube: colorConfig, goalCube: whiteCrossSolvedCube) == false {
     doMove(number: o)
     doMove(number: o)
     doMove(number: o)
     moveList.removeLast()
     } else {//undo last move
     print(moveList)
     break
     }
     }
     } else {
     print(moveList)
     break
     }
     doMove(number: n)
     doMove(number: n)
     doMove(number: n)
     moveList.removeLast()
     }
     } else {
     print(moveList)
     break
     }
     doMove(number: m)
     doMove(number: m)
     doMove(number: m)
     moveList.removeLast()
     }*/
     } else {
     print(moveList)
     break
     }
     doCounterMove()
     }
     } else {
     print(moveList)
     return moveList
     }
     doCounterMove()
     }
     } else {
     print(moveList)
     return moveList
     }
     doCounterMove()
     }
     } else {
     print(moveList)
     return moveList
     }
     doCounterMove()
     }
     print("no solution was found")
     return(["no solution was found"])
     }
     */
    
    
    //print(randomCubeArray[0, 1])
    func testRun() {
        print(colorConfig.toString())
        U1()
        print(colorConfig.toString())
        L2()
        print(colorConfig.toString())
        F2()
        print(colorConfig.toString())
    }
    //testRun()
    //print(isMatch(testCube: randomCubeArray, goalCube: colorConfig))
    //searchForPath(startCube: colorConfigOld, goalCube: whiteCrossSolvedCube)
    //searchForPath()
    //depthFirstSearchForPath()
}
