//
//  ViewController.swift
//  Fischer Random Generator
//
//  Created by Sarowar H. Mishkat on 13/8/19.
//  Copyright © 2019 Sarowar H. Mishkat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let Chess960Positions = allPositions()
    var positionIndex = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
           stringToCharArray()
    }
    
    @IBOutlet weak var a1: UIImageView!
    @IBOutlet weak var b1: UIImageView!
    @IBOutlet weak var c1: UIImageView!
    @IBOutlet weak var d1: UIImageView!
    @IBOutlet weak var e1: UIImageView!
    @IBOutlet weak var f1: UIImageView!
    @IBOutlet weak var g1: UIImageView!
    @IBOutlet weak var h1: UIImageView!
    @IBOutlet weak var a8: UIImageView!
    @IBOutlet weak var b8: UIImageView!
    @IBOutlet weak var c8: UIImageView!
    @IBOutlet weak var d8: UIImageView!
    @IBOutlet weak var e8: UIImageView!
    @IBOutlet weak var f8: UIImageView!
    @IBOutlet weak var g8: UIImageView!
    @IBOutlet weak var h8: UIImageView!
    @IBAction func button(_ sender: UIButton) {
        
        stringToCharArray()
        
    }
    
    func stringToCharArray() {
        positionIndex = Int.random(in: 1...960)
        print(positionIndex)
        
        //var positonIndex = 407
        
     
        var save = ["wBishop","wBishop","wQueen","wKnight","wKnight","wRook","wKing","wRook","bBishop","bBishop","bQueen","bKnight","bKnight","bRook","bKing","bRook"]
        //print(save)
        
        switch positionIndex {
        case 0...99:
            save = Chess960Positions.Positions100[positionIndex]
        case 100...199:
            save = Chess960Positions.Positions200[positionIndex-100]
        case 200...299:
            save = Chess960Positions.Positions300[positionIndex-200]
        case 300...399:
            save = Chess960Positions.Positions400[positionIndex-300]
        case 400...499:
            save = Chess960Positions.Positions500[positionIndex-400]
        case 500...599:
            save = Chess960Positions.Positions600[positionIndex-500]
        case 600...699:
            save = Chess960Positions.Positions700[positionIndex-600]
        case 700...799:
            save = Chess960Positions.Positions800[positionIndex-700]
        case 800...899:
            save = Chess960Positions.Positions900[positionIndex-800]
        case 900...959:
            save = Chess960Positions.Positions960[positionIndex-900]
        default:
            print("out of range")
        }
        /*let positionInChar = Array(save)
        print(positionInChar)*/
        
        a1.image = UIImage (named: save[0])
        b1.image = UIImage (named: save[1])
        c1.image = UIImage (named: save[2])
        d1.image = UIImage (named: save[3])
        e1.image = UIImage (named: save[4])
        f1.image = UIImage (named: save[5])
        g1.image = UIImage (named: save[6])
        h1.image = UIImage (named: save[7])
        a8.image = UIImage (named: save[8])
        b8.image = UIImage (named: save[9])
        c8.image = UIImage (named: save[10])
        d8.image = UIImage (named: save[11])
        e8.image = UIImage (named: save[12])
        f8.image = UIImage (named: save[13])
        g8.image = UIImage (named: save[14])
        h8.image = UIImage (named: save[15])
        
        //a1.image = UIImage(named: "blackBishop")
        //a1.image = UIImage(named: positionInChar[0])
}
    
}
