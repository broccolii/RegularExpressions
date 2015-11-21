#import <Foundation/Foundation.h>
#import "StringCheck.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        char str[20];
        scanf("%s",str);
        
        NSString *temp = [NSString stringWithUTF8String:str];
        NSLog(@"temp = %@",temp);
        
        // float tempf = [temp floatValue];
        
        bool ifInt = [StringCheck isNumber:temp];
        NSLog(@"ifInt = %i",ifInt);
        
    }
    return 0;
}

