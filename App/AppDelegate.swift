//
//  AppDelegate.swift
//  App
//
//  Created by 尤坤 on 2022/8/16.
//

import UIKit
import OCFramework

protocol TPB: AnyObject {
    func sayHi()
}

extension TPB {
    func sayHi() {
        print("\(#function)")
    }
}

class TCC: NSObject & TPB {
    
}

protocol TPA<ObjectType>: AnyObject {
    associatedtype ObjectType: TPB
    var aTPB: ObjectType { get set }
}


class TCA<ObjectType: TPB>: NSObject {
    var aTPA: (any TPA<ObjectType>)?
    
    func sayHi() {
        aTPA?.aTPB.sayHi()
    }
}

class TCB<ObjectType: TPB>: NSObject {
    var tcas: [TCA<ObjectType>]?
    
    func sayHi() {
        tcas?.first?.aTPA?.aTPB.sayHi()
    }
}


class TCD: NSObject {
    func new() -> TCD {
        return type(of: self).init()
    }
    
    required override init() {
        super.init()
    }
}

@objc
open class AppDelegate: UIResponder & URLSessionDelegate & UIApplicationDelegate {
    public override init() {
        super.init()
    }
    
    @objc
    public var options: BFCWebImageOptions = .cacheMemoryOnly {
        didSet {
            myPrint(options)
        }
    }
    
    private lazy var urlSession: URLSession = {
        let config = URLSessionConfiguration.background(withIdentifier: "MySession")
        config.isDiscretionary = true
        config.sessionSendsLaunchEvents = true
        return URLSession(configuration: config, delegate: self, delegateQueue: nil)
    }()
    
    public func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        UIViewController().isKind(of: UIViewController.self)
        
        
        let rect = CGRect(x: 1, y: 1, width: 2, height: 2)
        print("minX: \(rect.minX)")
        print("maxX: \(rect.maxX)")
        print("minY: \(rect.minY)")
        print("maxY: \(rect.maxY)")
        
        var dict = getDictionary()
        dict["k2"] = ["k21":"v21"];
        use(dict)
        
        return true
    }
    
    private func buildBodyDataWithPath() -> Data {
        return Data()
    }
}

public func globalFunction() {
    print("globalFunction")
}
