//
//  AppDelegate.swift
//  text1117
//
//  Created by ksu on 2016/11/17.
//  Copyright © 2016年 ksu. All rights reserved.
//

import UIKit
import AVFoundation


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    

    var window: UIWindow?
    var myplayer: AVAudioPlayer!
    
 
    func application(_ application: UIApplication,didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
     
        
        let AssortedMusics = NSURL(fileURLWithPath: Bundle.main.path(forResource: "10051500968", ofType: "mp3")!)
        //    音樂檔案名稱，副檔名
        myplayer = try! AVAudioPlayer(contentsOf: AssortedMusics as URL)
        myplayer.volume = 1
        //音量 預設為1 0為靜音 音量範圍0~1之間
        myplayer.prepareToPlay()

        myplayer.play()
        
        Thread.sleep(forTimeInterval: 5.0)
        //延長登入畫面時間
        myplayer.stop()
        //啟動畫面結束時音樂停止
        return true
    }
    

    func applicationWillResignActive(_ application: UIApplication) {
        
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
       
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
   
    }

    func applicationWillTerminate(_ application: UIApplication) {
 
    }


}

