#import <Foundation/Foundation.h>

extern "C" int TH07_IOS_GetPreferredGameLanguage()
{
    @autoreleasepool
    {
        NSString *preferred = [[NSLocale preferredLanguages] firstObject];
        NSString *code = [[NSLocale localeWithLocaleIdentifier:preferred ?: @"en"] languageCode];
        if ([code isEqualToString:@"ja"]) return 0;
        if ([code isEqualToString:@"zh"]) return 1;
        return 2;
    }
}
