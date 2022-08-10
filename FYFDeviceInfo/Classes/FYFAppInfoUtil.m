//
//  FYFAppInfoUtil.m
//
//
//  Created by 范云飞 on 2021/8/19.
//

#import "FYFAppInfoUtil.h"

@implementation FYFAppInfoUtil

+ (NSDictionary *)infoDictionary {
    return [[NSBundle mainBundle] infoDictionary];
}

+ (NSString *)appName {
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleDisplayName"];
}

+ (NSString *)appBundleName {
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleName"];
}

+ (NSString *)appBundleID {
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleIdentifier"];
}

+ (NSString *)appVersion {
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
}

+ (NSString *)appBuildVersion {
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleVersion"];
}

+ (NSArray *)applicationQueriesSchemes {
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"LSApplicationQueriesSchemes"];
}

+ (NSURL *)appExecutablePath {
    NSString *executableName = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleExecutable"];
    if (!executableName  || executableName.length < 1) {
        return nil;
    }
    return [[NSBundle mainBundle] URLForResource:executableName withExtension:nil];
}
// 应用产品名称
+ (NSString *)appProductName {
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"AppProductName"] ?: @"";
}

+ (NSInteger)appVersionNumber {
    return (NSInteger)abs((int)[[[FYFAppInfoUtil appVersion] stringByReplacingOccurrencesOfString:@"." withString:@""] integerValue]);
}

+ (NSURL *)documentsURL {
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
}

+ (NSString *)documentsPath {
    return [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
}

+ (NSURL *)cachesURL {
    return [[[NSFileManager defaultManager] URLsForDirectory:NSCachesDirectory inDomains:NSUserDomainMask] lastObject];
}

+ (NSString *)cachesPath {
    return [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) firstObject];
}

+ (NSURL *)libraryURL {
    return [[[NSFileManager defaultManager] URLsForDirectory:NSLibraryDirectory inDomains:NSUserDomainMask] lastObject];
}

+ (NSString *)libraryPath {
    return [NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES) firstObject];
}
@end
