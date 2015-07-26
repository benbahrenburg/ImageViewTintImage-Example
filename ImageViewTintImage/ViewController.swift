//
//  ViewController.swift
//  ImageViewTintImage
//
//  Created by Ben Bahrenburg on 7/26/15.
//  Copyright © 2015 Bencoding. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIGestureRecognizerDelegate {

    var starOneOn = false
    @IBOutlet weak var starOneImgView: UIImageView!
    
    var starTwoOn = false
    @IBOutlet weak var starTwoImgView: UIImageView!


    func setDefaultStyle(view : UIImageView) {
        view.image = view.image!.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)
        view.tintColor = UIColor.lightGrayColor()
    }
    
    func setSelectedStyle(view : UIImageView) {
        view.image = view.image!.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)
        view.tintColor = UIColor.blueColor()
    }
    
    func addHandlers() {
        let starOneTap = UITapGestureRecognizer(target: self, action: Selector("starOneTapHandler:"))
        starOneTap.delegate = self
        starOneImgView.addGestureRecognizer(starOneTap)
        
        let starTwoTap = UITapGestureRecognizer(target: self, action: Selector("starTwoTapHandler:"))
        starTwoTap.delegate = self
        starTwoImgView.addGestureRecognizer(starTwoTap)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addHandlers()
        setDefaultStyle(starOneImgView)
        setDefaultStyle(starTwoImgView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func starOneTapHandler(sender: UITapGestureRecognizer? = nil) {
        (starOneOn) ? setDefaultStyle(starOneImgView) : setSelectedStyle(starOneImgView)
        starOneOn = !starOneOn
    }

    func starTwoTapHandler(sender: UITapGestureRecognizer? = nil) {
        (starTwoOn) ? setDefaultStyle(starTwoImgView) : setSelectedStyle(starTwoImgView)
        starTwoOn = !starTwoOn
    }
    
}

