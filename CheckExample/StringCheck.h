#import <Foundation/Foundation.h>

// 字符串验证
@interface StringCheck : NSObject

/* 邮箱验证 */
+(BOOL)isValidateEmail:(NSString *)email;

/* 手机号码验证 */
+(BOOL)isValidateMobile:(NSString *)mobile;

/* 中国固话验证 */
+(BOOL)isValidateTelephone:(NSString *)telephone;

/* 车牌号验证 */
+(BOOL)validateCarNo:(NSString *)carNo;

/* 整数验证 */
+(BOOL)isNumber:(NSString *)number;

@end
