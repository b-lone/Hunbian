//
//  ViewController.m
//  Hunbian
//
//  Created by 尤坤 on 2022/8/16.
//

#import "ViewController.h"
#import <App/App-Swift.h>
#import <FrameWork1/FrameWork1-Swift.h>
#import <OCFramework/OCFramework.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    AppDelegate *a = [[AppDelegate alloc] init];
    a.options = BFCWebImageCacheMemoryOnly | BFCWebImageProgressive;
    
    id<MyTestProtocol> testObject = [TestObject new];
    [testObject globalPushToRoot:self selectType:BBStudioTabBarTypeHome];
}

@end
