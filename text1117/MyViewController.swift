//
//  MyViewController.swift
//  text1117
//
//  Created by Nick on 2016/11/28.
//  Copyright © 2016年 ksu. All rights reserved.
//

import UIKit
import GoogleMobileAds

class MyViewController: UIViewController {
    

    @IBOutlet weak var bannerView: GADBannerView!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()

        self.bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        //廣告ID
        
        self.bannerView.rootViewController = self
        
        let request: GADRequest = GADRequest()
        self.bannerView.load(request)
        //請求代理（用於第三方套件）
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      

    }
    

}
