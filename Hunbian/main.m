//
//  main.m
//  Hunbian
//
//  Created by 尤坤 on 2022/8/16.
//

#import <UIKit/UIKit.h>
//#import "AppDelegate.h"
#import "App/App-Swift.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
