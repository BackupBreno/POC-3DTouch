//
//  AppDelegate.swift
//  POC-3DTouch
//
//  Created by Breno Aquino on 16/11/2017.
//  Copyright © 2017 Breno Aquino. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        // Dynamic Mode
        let shortcut = UIMutableApplicationShortcutItem(type: "brenoaquino.POC-3DTouch.Dynamic", localizedTitle: "Alocando Dynamicamente")
        UIApplication.shared.shortcutItems?.append(shortcut)
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

    func application(_ application: UIApplication, performActionFor shortcutItem: UIApplicationShortcutItem, completionHandler: @escaping (Bool) -> Void) {
        
        if shortcutItem.type == "brenoaquino.POC-3DTouch.Disciplinas" {
            
            let sb = UIStoryboard(name: "Main", bundle: nil)
            
            let second = sb.instantiateInitialViewController() as! ViewController
            
            let root = UIApplication.shared.keyWindow?.rootViewController
            
            root?.present(second, animated: true, completion: {
                completionHandler(true)
            })
        }
        
        else if shortcutItem.type == "brenoaquino.POC-3DTouch.TelaPreview" {
            
            let sb = UIStoryboard(name: "Main", bundle: nil)
            
            let second = sb.instantiateViewController(withIdentifier: "previewID") as! PreviewViewController
            
            let root = UIApplication.shared.keyWindow?.rootViewController
            
            root?.present(second, animated: true, completion: {
                completionHandler(true)
            })
        }
        
        else if shortcutItem.type == "brenoaquino.POC-3DTouch.TelaFinal" {
            
            let sb = UIStoryboard(name: "Main", bundle: nil)
            
            let second = sb.instantiateViewController(withIdentifier: "finalID") as! FinalViewController
            
            let root = UIApplication.shared.keyWindow?.rootViewController
            
            root?.present(second, animated: true, completion: {
                completionHandler(true)
            })
        }
        
        else if shortcutItem.type == "brenoaquino.POC-3DTouch.Dynamic" {
            
            let sb = UIStoryboard(name: "Main", bundle: nil)
            
            let second = sb.instantiateViewController(withIdentifier: "dinamicoID")
            
            let root = UIApplication.shared.keyWindow?.rootViewController
            
            root?.present(second, animated: true, completion: {
                completionHandler(true)
            })
        }
    }
}

