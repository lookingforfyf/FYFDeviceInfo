//
//  FYFDeviceHelper.m
//  
//
//  Created by 范云飞 on 2021/8/19.
//

#import "FYFDeviceHelper.h"
#import "sys/utsname.h"
#import <net/if.h>
#import <net/if_dl.h>
#import <arpa/inet.h>
#import <netinet/in.h>
#import <sys/ioctl.h>
#import <sys/stat.h>
#import <dlfcn.h>

#import <sys/socket.h>
#import <sys/sysctl.h>


@implementation FYFDeviceHelper

/// 设备名称
+ (NSString *)fyf_getDeviceName {
    return [[UIDevice currentDevice] name];
}

+ (NSString *)fyf_getSystemName {
    struct utsname systemInfo;
    uname(&systemInfo);
    
    NSString * platform = [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
    
    if ([platform isEqualToString:@"iPhone1,1"])  return @"iPhone 2G";
    
    if ([platform isEqualToString:@"iPhone1,2"])  return @"iPhone 3G";
    
    if ([platform isEqualToString:@"iPhone2,1"])  return @"iPhone 3GS";
    
    if ([platform isEqualToString:@"iPhone3,1"])  return @"iPhone 4";
    
    if ([platform isEqualToString:@"iPhone3,2"])  return @"iPhone 4";
    
    if ([platform isEqualToString:@"iPhone3,3"])  return @"iPhone 4";
    
    if ([platform isEqualToString:@"iPhone4,1"])  return @"iPhone 4S";
    
    if ([platform isEqualToString:@"iPhone5,1"])  return @"iPhone 5";
    
    if ([platform isEqualToString:@"iPhone5,2"])  return @"iPhone 5";
    
    if ([platform isEqualToString:@"iPhone5,3"])  return @"iPhone 5c";
    
    if ([platform isEqualToString:@"iPhone5,4"])  return @"iPhone 5c";
    
    if ([platform isEqualToString:@"iPhone6,1"])  return @"iPhone 5s";
    
    if ([platform isEqualToString:@"iPhone6,2"])  return @"iPhone 5s";
    
    if ([platform isEqualToString:@"iPhone7,1"])  return @"iPhone 6 Plus";
    
    if ([platform isEqualToString:@"iPhone7,2"])  return @"iPhone 6";
    
    if ([platform isEqualToString:@"iPhone8,1"])  return @"iPhone 6s";
    
    if ([platform isEqualToString:@"iPhone8,2"])  return @"iPhone 6s Plus";
    
    if ([platform isEqualToString:@"iPhone8,4"])  return @"iPhone SE";
    
    if ([platform isEqualToString:@"iPhone9,1"])  return @"iPhone 7";
    
    if ([platform isEqualToString:@"iPhone9,3"])  return @"iPhone 7";
    
    if ([platform isEqualToString:@"iPhone9,2"])  return @"iPhone 7 Plus";
    
    if ([platform isEqualToString:@"iPhone9,4"])  return @"iPhone 7 Plus";
    
    if ([platform isEqualToString:@"iPhone10,1"])  return @"iPhone 8";
    
    if ([platform isEqualToString:@"iPhone10,4"])  return @"iPhone 8";
    
    if ([platform isEqualToString:@"iPhone10,2"])  return @"iPhone 8 Plus";
    
    if ([platform isEqualToString:@"iPhone10,5"])  return @"iPhone 8 Plus";
    
    if ([platform isEqualToString:@"iPhone10,3"])  return @"iPhone X";
    
    if ([platform isEqualToString:@"iPhone10,6"])  return @"iPhone X";
    
    if ([platform isEqualToString:@"iPhone11,8"])  return @"iPhone XR";
    
    if ([platform isEqualToString:@"iPhone11,2"])  return @"iPhone XS";
    
    if ([platform isEqualToString:@"iPhone11,4"])  return @"iPhone XS MAX";
    
    if ([platform isEqualToString:@"iPhone11,6"])  return @"iPhone XS MAX";
    
    if ([platform isEqualToString:@"iPhone12,1"])  return @"iPhone 11";
    
    if ([platform isEqualToString:@"iPhone12,3"])  return @"iPhone 11 Pro";
    
    if ([platform isEqualToString:@"iPhone12,5"])  return @"iPhone 11 Pro Max";
    
    if ([platform isEqualToString:@"iPhone13,1"])  return @"iPhone 12 mini";
    
    if ([platform isEqualToString:@"iPhone13,2"])  return @"iPhone 12";
    
    if ([platform isEqualToString:@"iPhone13,3"])  return @"iPhone 12 Pro";
    
    if ([platform isEqualToString:@"iPhone13,4"])  return @"iPhone 12 Pro Max";
    
    if ([platform isEqualToString:@"iPod1,1"])  return @"iPod Touch 1G";
    
    if ([platform isEqualToString:@"iPod2,1"])  return @"iPod Touch 2G";
    
    if ([platform isEqualToString:@"iPod3,1"])  return @"iPod Touch 3G";
    
    if ([platform isEqualToString:@"iPod4,1"])  return @"iPod Touch 4G";
    
    if ([platform isEqualToString:@"iPod5,1"])  return @"iPod Touch 5G";
    
    if ([platform isEqualToString:@"iPod7,1"])  return @"iPod Touch 6G";
    
    if ([platform isEqualToString:@"iPod9,1"])  return @"iPod Touch 7G";
    
    if ([platform isEqualToString:@"iPad1,1"])  return @"iPad 1G";
    
    if ([platform isEqualToString:@"iPad2,1"])  return @"iPad 2";
    
    if ([platform isEqualToString:@"iPad2,2"])  return @"iPad 2";
    
    if ([platform isEqualToString:@"iPad2,3"])  return @"iPad 2";
    
    if ([platform isEqualToString:@"iPad2,4"])  return @"iPad 2";
    
    if ([platform isEqualToString:@"iPad2,5"])  return @"iPad Mini 1G";
    
    if ([platform isEqualToString:@"iPad2,6"])  return @"iPad Mini 1G";
    
    if ([platform isEqualToString:@"iPad2,7"])  return @"iPad Mini 1G";
    
    if ([platform isEqualToString:@"iPad3,1"])  return @"iPad 3";
    
    if ([platform isEqualToString:@"iPad3,2"])  return @"iPad 3";
    
    if ([platform isEqualToString:@"iPad3,3"])  return @"iPad 3";
    
    if ([platform isEqualToString:@"iPad3,4"])  return @"iPad 4";
    
    if ([platform isEqualToString:@"iPad3,5"])  return @"iPad 4";
    
    if ([platform isEqualToString:@"iPad3,6"])  return @"iPad 4";
    
    if ([platform isEqualToString:@"iPad4,1"])  return @"iPad Air";
    
    if ([platform isEqualToString:@"iPad4,2"])  return @"iPad Air";
    
    if ([platform isEqualToString:@"iPad4,3"])  return @"iPad Air";
    
    if ([platform isEqualToString:@"iPad4,4"])  return @"iPad Mini 2G";
    
    if ([platform isEqualToString:@"iPad4,5"])  return @"iPad Mini 2G";
    
    if ([platform isEqualToString:@"iPad4,6"])  return @"iPad Mini 2G";
    
    if ([platform isEqualToString:@"iPad4,7"])  return @"iPad Mini 3";
    
    if ([platform isEqualToString:@"iPad4,8"])  return @"iPad Mini 3";
    
    if ([platform isEqualToString:@"iPad4,9"])  return @"iPad Mini 3";
    
    if ([platform isEqualToString:@"iPad5,1"])  return @"iPad Mini 4";
    
    if ([platform isEqualToString:@"iPad5,2"])  return @"iPad Mini 4";
    
    if ([platform isEqualToString:@"iPad5,3"])  return @"iPad Air 2";
    
    if ([platform isEqualToString:@"iPad5,4"])  return @"iPad Air 2";
    
    if ([platform isEqualToString:@"iPad6,3"])  return @"iPad Pro 9.7";
    
    if ([platform isEqualToString:@"iPad6,4"])  return @"iPad Pro 9.7";
    
    if ([platform isEqualToString:@"iPad6,7"])  return @"iPad Pro 12.9";
    
    if ([platform isEqualToString:@"iPad6,8"])  return @"iPad Pro 12.9";
    
    if ([platform isEqualToString:@"iPad6,11"] ||
        [platform isEqualToString:@"iPad6,12"]) return @"iPad 5";
    
    if ([platform isEqualToString:@"iPad7,1"] ||
        [platform isEqualToString:@"iPad7,2"]) return @"iPad Pro 12.9-inch 2";
    
    if ([platform isEqualToString:@"iPad7,3"] ||
        [platform isEqualToString:@"iPad7,4"]) return @"iPad Pro 10.5-inch";
    
    if ([platform isEqualToString:@"iPad7,5"])  return @"iPad 6th";
    
    if ([platform isEqualToString:@"iPad7,6"])  return @"iPad 6th";
    
    if ([platform isEqualToString:@"iPad7,11"])  return @"iPad 7th";
    
    if ([platform isEqualToString:@"iPad7,12"])  return @"iPad 7th";
    
    if ([platform isEqualToString:@"iPad8,1"])  return @"iPad Pro 11-inch";
    
    if ([platform isEqualToString:@"iPad8,2"])  return @"iPad Pro 11-inch";
    
    if ([platform isEqualToString:@"iPad8,3"])  return @"iPad Pro 11-inch";
    
    if ([platform isEqualToString:@"iPad8,4"])  return @"iPad Pro 11-inch";
    
    if ([platform isEqualToString:@"iPad8,5"])  return @"iPad Pro 12.9-inch 3rd";
    
    if ([platform isEqualToString:@"iPad8,6"])  return @"iPad Pro 12.9-inch 3rd";
    
    if ([platform isEqualToString:@"iPad8,7"])  return @"iPad Pro 12.9-inch 3rd";
    
    if ([platform isEqualToString:@"iPad8,8"])  return @"iPad Pro 12.9-inch 3rd";
    
    if ([platform isEqualToString:@"iPad8,9"] ||
        [platform isEqualToString:@"iPad8,10"]) return @"iPad Pro (11-inch)";
    
    if ([platform isEqualToString:@"iPad8,11"] ||
        [platform isEqualToString:@"iPad8,12"]) return @"iPad Pro (12.9-inch)";
    
    if ([platform isEqualToString:@"iPad11,1"] ||
        [platform isEqualToString:@"iPad11,2"]) return @"iPad Mini 5";
    
    if ([platform isEqualToString:@"i386"])  return @"iPhone Simulator";
    
    if ([platform isEqualToString:@"x86_64"])  return @"iPhone Simulator";
    
    return platform;
}

+ (NSString *)fyf_getDeviceSystemVersion {
    return [[UIDevice currentDevice] systemVersion];
}

+ (NSString *)fyf_getMacAddress {
    int mib[6];
    size_t len;
    char *buf;
    unsigned char *ptr;
    struct if_msghdr *ifm;
    struct sockaddr_dl *sdl;

    mib[0] = CTL_NET;
    mib[1] = AF_ROUTE;
    mib[2] = 0;
    mib[3] = AF_LINK;
    mib[4] = NET_RT_IFLIST;

    if ((mib[5] = if_nametoindex("en0")) == 0) {
        printf("Error: if_nametoindex error\n");
        return NULL;
    }

    if (sysctl(mib, 6, NULL, &len, NULL, 0) < 0) {
        printf("Error: sysctl, take 1\n");
        return NULL;
    }

    if ((buf = malloc(len)) == NULL) {
        printf("Could not allocate memory. error!\n");
        return NULL;
    }

    if (sysctl(mib, 6, buf, &len, NULL, 0) < 0) {
        printf("Error: sysctl, take 2");
        free(buf);
        return NULL;
    }

    ifm = (struct if_msghdr *) buf;
    sdl = (struct sockaddr_dl *) (ifm + 1);
    ptr = (unsigned char *) LLADDR(sdl);
    NSString *macString = [NSString stringWithFormat:@"%02X:%02X:%02X:%02X:%02X:%02X",
                                                     *ptr,
                                                     *(ptr + 1),
                                                     *(ptr + 2),
                                                     *(ptr + 3),
                                                     *(ptr + 4),
                                                     *(ptr + 5)];
    free(buf);

    return macString;
}

+ (NSString *)fyf_getDeviceIPAddress {
    int sockfd = socket(AF_INET, SOCK_DGRAM, 0);
    NSMutableArray *ips = [NSMutableArray array];
    int BUFFERSIZE = 4096;
    struct ifconf ifc;
    char buffer[BUFFERSIZE], *ptr, lastname[IFNAMSIZ], *cptr;
    struct ifreq *ifr, ifrcopy;
    
    ifc.ifc_len = BUFFERSIZE;
    ifc.ifc_buf = buffer;
    
    if (ioctl(sockfd, SIOCGIFCONF, &ifc) >= 0){
        for (ptr = buffer; ptr < buffer + ifc.ifc_len; ){
            ifr = (struct ifreq *)ptr;
            int len = sizeof(struct sockaddr);
            
            if (ifr->ifr_addr.sa_len > len) {
                len = ifr->ifr_addr.sa_len;
            }
            
            ptr += sizeof(ifr->ifr_name) + len;
            if (ifr->ifr_addr.sa_family != AF_INET) continue;
            if ((cptr = (char *)strchr(ifr->ifr_name, ':')) != NULL) *cptr = 0;
            if (strncmp(lastname, ifr->ifr_name, IFNAMSIZ) == 0) continue;
            
            memcpy(lastname, ifr->ifr_name, IFNAMSIZ);
            ifrcopy = *ifr;
            ioctl(sockfd, SIOCGIFFLAGS, &ifrcopy);
            
            if ((ifrcopy.ifr_flags & IFF_UP) == 0) continue;
            
            NSString *ip = [NSString  stringWithFormat:@"%s", inet_ntoa(((struct sockaddr_in *)&ifr->ifr_addr)->sin_addr)];
            [ips addObject:ip];
        }
    }
    
    close(sockfd);
    NSString *deviceIP = @"";
    
    for (int i=0; i < ips.count; i++) {
        if (ips.count > 0) {
            deviceIP = [NSString stringWithFormat:@"%@",ips.lastObject];
        }
    }
    return deviceIP;
}

//判断当前设备是否越狱
+ (BOOL)fyf_isJailBreak {
    //以下检测的过程是越往下，越狱越高级
    //获取越狱文件路径
    NSString *cydiaPath = @"/Applications/Cydia.app";
    NSString *aptPath = @"/private/var/lib/apt/";
    if ([[NSFileManager defaultManager] fileExistsAtPath:cydiaPath]) {
        return YES;
    }
    if ([[NSFileManager defaultManager] fileExistsAtPath:aptPath]) {
        return YES;
    }
    
    //可能存在hook了NSFileManager方法，此处用底层C stat去检测
    struct stat stat_info;
    if (0 == stat("/Library/MobileSubstrate/MobileSubstrate.dylib", &stat_info)) {
        return YES;
    }
    if (0 == stat("/Applications/Cydia.app", &stat_info)) {
        return YES;
    }
    if (0 == stat("/var/lib/cydia/", &stat_info)) {
        return YES;
    }
    if (0 == stat("/var/cache/apt", &stat_info)) {
        return YES;
    }
    
    //可能存在stat也被hook了，可以看stat是不是出自系统库，有没有被攻击者换掉。这种情况出现的可能性很小
    int ret;
    Dl_info dylib_info;
    int (*func_stat)(const char *,struct stat *) = stat;
    if ((ret = dladdr(func_stat, &dylib_info))) {
        //相等为0，不相等，肯定被攻击
        if (strcmp(dylib_info.dli_fname, "/usr/lib/system/libsystem_kernel.dylib")) {
            return YES;
        }
    }
    
    //通常，越狱机的输出结果会包含字符串：Library/MobileSubstrate/MobileSubstrate.dylib。
    //攻击者给MobileSubstrate改名，原理都是通过DYLD_INSERT_LIBRARIES注入动态库。那么可以检测当前程序运行的环境变量
    char *env = getenv("DYLD_INSERT_LIBRARIES");
    if (env != NULL) {
        return YES;
    }
    
    return NO;
}

@end
