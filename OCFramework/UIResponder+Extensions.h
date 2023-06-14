//
//  UIResponder+Extensions.h
//  OCFramework
//
//  Created by 尤坤 on 2022/9/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_OPTIONS(NSInteger, BFCWebImageOptions) {
    /// Do not load image from/to disk cache.
    BFCWebImageCacheMemoryOnly = 1 << 0,
    
    /// Display progressive/interlaced/baseline image during download (same as web browser).
    BFCWebImageProgressive = 1 << 1,
    
    /// Load the image from remote and refresh the image cache.
    BFCWebImageRefreshCache = 1 << 2,
    
    /// Allows background task to download image when app is in background.
    BFCWebImageAllowBackgroundTask = 1 << 3,
    
    /// Handles cookies stored in NSHTTPCookieStore.
    BFCWebImageHandleCookies = 1 << 4,
    
    /// Allows untrusted SSL ceriticates.
    BFCWebImageAllowInvalidSSL = 1 << 5,
    
    /// Do not change the view's image before set a new URL to it.
    BFCWebImageIgnorePlaceHolder = 1 << 6,
    
    /// Ignore multi-frame image decoding.
    /// This will handle the GIF/APNG/WebP/ICO image as single frame image.
    BFCWebImageIgnoreAnimatedImage = 1 << 7,
    
    /// This flag will add the URL to a blacklist (in memory) when the URL fail to be downloaded,
    /// so the library won't keep trying.
    BFCWebImageIgnoreFailedURL = 1 << 8,

    /// Set the image to view with a fade animation.
    /// This will remove the "fade" animation on image view's layer.
    BFCWebImageIgnoreFadeAnimation = 1 << 9,
    
    /// Disable the auto retry logic.
    BFCWebImageOptionDisableAutoRetry = 1 << 10,
    
    /// Ignore the quality setting of application.
    BFCWebImageIgnoreQuality = 1 << 11,
    
    /// Show network activity on status bar when download image.
    BFCWebImageOptionShowNetworkActivity = 1 << 12,
    
    /// Display blurred progressive JPEG or interlaced PNG image during download.
    /// This will ignore baseline image for better user experience.
    BFCWebImageOptionProgressiveBlur = 1 << 13,
    
    /// Use NSURLCache instead of BFCImageCache.
    BFCWebImageOptionUseNSURLCache = 1 << 14,
    
    /// Ignore image decoding.
    /// This may used for image downloading without display.
    BFCWebImageOptionIgnoreImageDecoding = 1 << 15,
    
    /// Do not set the image to the view when image fetch complete.
    /// You may set the image manually.
    BFCWebImageOptionAvoidSetImage = 1 << 16,

    /// 取gif图片的第一帧
    BFCWebImageOptionFirstFrame = 1 << 17,
    
    BFCWebImageOptionBFCImageDecode =  1 << 18,
    /**
     * 我们在从加载器加载映像之前查询缓存。此标志可以阻止此操作仅从加载器加载。
     */
    BFCWebImageOptionFromLoaderOnly = 1 << 19,
    /**
     * q=85, 高清图片，不建议使用
     */
    BFCWebImageOptionHighQuality = 1 << 20,
    /**
     * 支持图片仅限制单边（宽or高）加载
     */
    BFCWebImageOptionFromUnilateralOnly = 1 << 21,
};

OBJC_EXPORT
@interface UIResponder (Extensions)

- (void)myPrint:(BFCWebImageOptions)options;
- (NSDictionary *)getDictionary;
- (void)useDictionary:(NSDictionary *)dict;

@end

NS_ASSUME_NONNULL_END
