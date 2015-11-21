#import "StringCheck.h"

@implementation StringCheck

/* 邮箱验证 */
+(BOOL)isValidateEmail:(NSString *)email
{
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:email];
}

/* 手机号码验证 */
+(BOOL)isValidateMobile:(NSString *)mobile
{
    //手机号以13， 15，18开头，八个 \d 数字字符
    NSString *phoneRegex = @"^1[3456789]\\d{9}$";
    NSPredicate *phoneTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",phoneRegex];
    //    NSLog(@"phoneTest is %@",phoneTest);
    return [phoneTest evaluateWithObject:mobile];
}

/* 中国固话验证 */
+(BOOL)isValidateTelephone:(NSString *)telephone
{
    //手机号以13， 15，18开头，八个 \d 数字字符
    NSString *phoneRegex = @"^\\d{3,4}-?\\d{6,8}$";
    NSPredicate *phoneTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",phoneRegex];
    //    NSLog(@"phoneTest is %@",phoneTest);
    return [phoneTest evaluateWithObject:telephone];
}

/* 车牌号验证 */
+(BOOL)validateCarNo:(NSString *)carNo
{
    NSString *carRegex = @"^[A-Za-z]{1}[A-Za-z_0-9]{5}$";
    NSPredicate *carTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",carRegex];
    return [carTest evaluateWithObject:carNo];
}

/* 整数验证 */
+(BOOL)isNumber:(NSString *)number
{
    // 正则表达式1
    NSString *carRegex = @"^[0-9]*$";
    // 过滤器
    NSPredicate *carTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",carRegex];
    // 过滤判断
    return [carTest evaluateWithObject:number];
}

/*
   只能输入数字：“^[0-9]*$”
   只能输入n位的数字：“^d{n}$”
 　只能输入至少n位数字：“^d{n,}$”
 　只能输入m-n位的数字：“^d{m,n}$”
 　只能输入零和非零开头的数字：“^(0|[1-9][0-9]*)$”
 　只能输入有两位小数的正实数：“^[0-9]+(.[0-9]{2})?$”
 　只能输入有1-3位小数的正实数：“^[0-9]+(.[0-9]{1,3})?$”
 　只能输入非零的正整数：“^+?[1-9][0-9]*$”
 　只能输入非零的负整数：“^-[1-9][0-9]*$”
 　只能输入长度为3的字符：“^.{3}$”
 　只能输入由26个英文字母组成的字符串：“^[A-Za-z]+$”
 　只能输入由26个大写英文字母组成的字符串：“^[A-Z]+$”
 　只能输入由26个小写英文字母组成的字符串：“^[a-z]+$”
 　只能输入由数字和26个英文字母组成的字符串：“^[A-Za-z0-9]+$”
 　只能输入由数字、26个英文字母或者下划线组成的字符串：“^w+$”
 　验证用户密码:“^[a-zA-Z]w{5,17}$”正确格式为：以字母开头，长度在6-18之间，
 　　只能包含字符、数字和下划线。
 　验证是否含有^%&',;=?$"等字符：“[^%&',;=?$x22]+”
 　只能输入汉字：“^[u4e00-u9fa5],{0,}$”
 　验证Email地址：“^w+[-+.]w+)*@w+([-.]w+)*.w+([-.]w+)*$”
 　验证InternetURL：“^http://([w-]+.)+[w-]+(/[w-./?%&=]*)?$”
 　验证电话号码：“^((d{3,4})|d{3,4}-)?d{7,8}$”
 　正确格式为：“XXXX-XXXXXXX”，“XXXX-XXXXXXXX”，“XXX-XXXXXXX”，
 　　“XXX-XXXXXXXX”，“XXXXXXX”，“XXXXXXXX”。
 　验证身份证号（15位或18位数字）：“^d{15}|d{}18$”
 　验证一年的12个月：“^(0?[1-9]|1[0-2])$”正确格式为：“01”-“09”和“1”“12”
 　验证一个月的31天：“^((0?[1-9])|((1|2)[0-9])|30|31)$”
 　　    正确格式为：“01”“09”和“1”“31”。
 　匹配中文字符的正则表达式： [u4e00-u9fa5]
 　匹配双字节字符(包括汉字在内)：[^x00-xff]
 　匹配空行的正则表达式：n[s| ]*r
 　匹配HTML标记的正则表达式：/<(.*)>.*|<(.*) />/
 　匹配首尾空格的正则表达式：(^s*)|(s*$)
 　匹配Email地址的正则表达式：w+([-+.]w+)*@w+([-.]w+)*.w+([-.]w+)*
 　匹配网址URL的正则表达式：[url=http://([w-]+.)+[w-]+(/[w]http://([w-]+.)+[w-]+(/[w[/url]- ./?%&=]*)?
 */

@end
