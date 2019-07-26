//
//  AppDelegate.swift
//  SwiftNative
//
//  Created by Malav Soni on 23/07/19.
//  Copyright © 2019 Malav Soni. All rights reserved.
//

import UIKit
import UnityFramework

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    
    //MARK:- Unity Methods
    var unityFramework:UnityFramework?
    
    func unityFrameworkLoad() -> UnityFramework? {
        let bundlePath = Bundle.main.bundlePath.appending("/Frameworks/UnityFramework.framework")
        if let unityBundle = Bundle.init(path: bundlePath){
            if let frameworkInstance = unityBundle.principalClass?.getInstance(){
                return frameworkInstance
            }
        }
        return nil
    }
    
    func initAndShowUnity() -> Void {
        if let framework = self.unityFrameworkLoad(){
            self.unityFramework = framework
            self.unityFramework?.setDataBundleId("com.unity3d.framework")
            self.unityFramework?.runEmbedded(withArgc: CommandLine.argc, argv: CommandLine.unsafeArgv, appLaunchOpts: [:])
            self.unityFramework?.showUnityWindow()
        }
    }

    //MARK:- Application LifeCycle
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }
}
