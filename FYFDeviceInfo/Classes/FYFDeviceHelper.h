//
//  FYFDeviceHelper.h
//
//
//  Created by 范云飞 on 2021/8/19.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FYFDeviceHelper : NSObject

/// 获取设备类型
+ (NSString *)fyf_getSystemName;

/// 设备名称
+ (NSString *)fyf_getDeviceName;

/// 获取设备系统版本号
+ (NSString *)fyf_getDeviceSystemVersion;

/// 获取设备的mac地址
+ (NSString *)fyf_getMacAddress;

/// 获取设备的IP地址
+ (NSString *)fyf_getDeviceIPAddress;

//判断当前设备是否越狱
+ (BOOL)fyf_isJailBreak;

@end

NS_ASSUME_NONNULL_END
