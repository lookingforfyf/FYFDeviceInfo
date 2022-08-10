//
//  FYFAppInfoUtil.h
//
//
//  Created by 范云飞 on 2021/8/19.
//


#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FYFAppInfoUtil : NSObject

/// App info.plist文件信息
+ (NSDictionary *)infoDictionary;

/// App名称
+ (NSString *)appName;

/// App Bundle
+ (NSString *)appBundleName;

/// App BundleID
+ (NSString *)appBundleID;

/// App版本号
+ (NSString *)appVersion;

/// App Build版本号
+ (NSString *)appBuildVersion;

/// App可信任Schemes
+ (NSArray *)applicationQueriesSchemes;

/// App可执行文件路径
+ (NSURL *)appExecutablePath;

// 应用产品名称
+ (NSString *)appProductName;

/// 整数型应用版本号
+ (NSInteger)appVersionNumber;

+ (NSURL *)documentsURL;

+ (NSString *)documentsPath;

+ (NSURL *)cachesURL;

+ (NSString *)cachesPath;

+ (NSURL *)libraryURL;

+ (NSString *)libraryPath;

@end

NS_ASSUME_NONNULL_END
