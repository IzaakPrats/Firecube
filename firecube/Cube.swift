//
//  Cube.swift
//  firecube
//
//  Created by Izaak Prats on 11/17/16.
//  Copyright © 2016 IJVP. All rights reserved.
//

import Foundation

struct Cube: Equatable {
    typealias Face = [Color]
    
    enum Color: String {
        case w = "W"
        case r = "R"
        case b = "B"
        case y = "Y"
        case o = "O"
        case g = "G"
        case x = "X"
    }
    
    var up: Face
    var down: Face
    var front: Face
    var back: Face
    var left: Face
    var right: Face
    
    func toString() -> String {
        var string = "["
        
        for face in 0...5 {
            for sticker in 0...8 {
                string.append(self[face][sticker].rawValue)
            }
            
            if face < 5 { string.append(", ") }
        }
        
        string.append("]")
        
        return string
    }
    
    // MARK: Subscript
    
    subscript(face: Int) -> Face {
        get {
            switch face {
            case 0:
                return up
            case 1:
                return down
            case 2:
                return front
            case 3:
                return back
            case 4:
                return left
            case 5:
                return right
            default:
                return up
            }
        }
    }
    
    subscript(face: Int, sticker: Int) -> Color {
        get {
            return self[face][sticker]
        }
        
        set {
            switch face {
            case 0:
                up[sticker] = newValue
            case 1:
                down[sticker] = newValue
            case 2:
                front[sticker] = newValue
            case 3:
                back[sticker] = newValue
            case 4:
                left[sticker] = newValue
            case 5:
                right[sticker] = newValue
            default:
                up[sticker] = newValue
            }
        }
    }
    
    // MARK: Equatable
    
    static func ==(lhs: Cube, rhs: Cube) -> Bool {
        for face in 0..<6 {
            for sticker in 0..<9 {
                if rhs[face][sticker] != .x {
                    if rhs[face][sticker] != lhs[face][sticker] {
                        return false
                    }
                }
            }
        }
        
        return true
    }
    
    // MARK: inits
    
    init() {
        up = []
        down = []
        front = []
        back = []
        left = []
        right = []
    }
    
    static func random() -> Cube {
        var cube = Cube()
        
        cube.up = [.w, .r, .b,
                   .r, .w, .o,
                   .w, .w, .g]
        
        cube.down = [.b, .g, .g,
                     .g, .y, .g,
                     .b, .b, .b]
        
        cube.front = [.r, .b, .y,
                      .b, .o, .g,
                      .o, .r, .r]
        
        cube.back = [.o, .b, .o,
                     .o, .r, .b,
                     .o, .w, .y]
        
        cube.left = [.g, .w, .o,
                     .o, .b, .y,
                     .r, .y, .w]
        
        cube.right = [.r, .w, .y,
                      .o, .g, .y,
                      .w, .y, .y]
        
        return cube
    }
    
    static func whiteCross() -> Cube {
        var cube = Cube()
        
        cube.up = [.x, .w, .x,
                   .w, .w, .w,
                   .x, .w, .x]
        
        cube.down = [.x, .x, .x,
                     .x, .y, .x,
                     .x, .x, .x]
        
        cube.front = [.x, .o, .x,
                      .x, .o, .x,
                      .x, .x, .x]
        
        cube.back = [.x, .r, .x,
                     .x, .r, .x,
                     .x, .x, .x]
        
        cube.left = [.x, .b, .x,
                     .x, .b, .x,
                     .x, .x, .x]
        
        cube.right = [.x, .g, .x,
                      .x, .g, .x,
                      .x, .x, .x]
        
        return cube
    }
}
