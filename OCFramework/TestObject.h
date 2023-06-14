//
//  TestObject.h
//  OCFramework
//
//  Created by 尤坤 on 2022/10/26.
//

#import <UIKit/UIKit.h>
#import <FrameWork1/FrameWork1-Swift.h>

NS_ASSUME_NONNULL_BEGIN

@class BBStudioSplashModel;

OBJC_EXPORT
@interface TestObject : NSObject<MyTestProtocol>

- (void)globalPushToRoot:(UIViewController *)vc selectType:(BBStudioTabBarType)selectType;
- (void)showSplash:(BOOL)showSplash withModel:(BBStudioSplashModel * __nullable)model;

@end

NS_ASSUME_NONNULL_END
