//
//  Protocol.swift
//  FrameWork1
//
//  Created by 尤坤 on 2022/9/7.
//

import UIKit

@objc
public protocol MyTestProtocol2: AnyObject {
    var value: Int { get set }
}

class A: MyTestProtocol2 {
    var value: Int = 0
}

@objc
public protocol MyTestProtocol: AnyObject {
    var delegate: MyTestProtocol2 { get set }
    
    func globalPush(toRoot vc: UIViewController, selectType type: TabBarType)
    func showSplash(_ showSplash: Bool, withModel model: AnyObject?)
}
