//
//  ViewController.swift
//  text1117
//
//  Created by ksu on 2016/11/17.
//  Copyright © 2016年 ksu. All rights reserved.
//

import UIKit
import IJKMediaFramework

class ViewController: UIViewController {
    
    var player : IJKFFMoviePlayerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //啟動最初的畫面
        
        let options = IJKFFOptions.byDefault()
        
        let url = NSURL(string: "rtmp://live.hkstv.hk.lxdns.com/live/hks")
        //播放源網址
        
        
        let player = IJKFFMoviePlayerController(contentURL: url as URL!, with: options)
        // 初始化播放器，播放線上影片或直播（RTMP）
        
        let autoresize = UIViewAutoresizing.flexibleWidth.rawValue | UIViewAutoresizing.flexibleHeight.rawValue
        player?.view.autoresizingMask = UIViewAutoresizing(rawValue: autoresize)
        player?.view.frame = self.view.bounds
        // 播放頁面寬高自適應
        
        player?.scalingMode = .aspectFit
        // 縮放模式
        player?.shouldAutoplay = true
        // 啟動後自動播放
        self.view.autoresizesSubviews = true
        self.view.addSubview((player?.view)!)
        self.player = player
    }
    
    override func viewWillAppear(_ animated: Bool) {
       //當畫面開啟時
        self.player.prepareToPlay()
        //開始播放
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        //關閉畫面時
        
        self.player.shutdown()
        //關閉播放器
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}



