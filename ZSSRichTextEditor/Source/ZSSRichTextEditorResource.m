//
//  ZSSRichTextEditorResource.m
//  DynamicUI_lib
//
//  Created by Vladimir Kudashov on 25.05.16.
//  Copyright © 2016 TZ Communications. All rights reserved.
//

#import "ZSSRichTextEditorResource.h"

@implementation ZSSRichTextEditorResource
static NSString* bundleName;
+ (NSBundle*) bundle{
    if (bundleName == nil){
        return nil;
    }
    
    NSURL* url = [[NSBundle mainBundle] URLForResource:bundleName withExtension:@"bundle"];
    if (url==nil) {
        return nil;
    }
    
    NSBundle *bundle = [NSBundle bundleWithURL:url];
    return bundle;
}

+ (void) setBundleName: (NSString*) bName{
    bundleName = bName;
}

+ (UIImage *)imageNamed:(NSString *)name{
    if (bundleName == nil){
        return nil;
    }
    name = [NSString stringWithFormat:@"%@.bundle/%@", bundleName, name];
    UIImage* image = [UIImage imageNamed:name];
    return image;
}

+ (NSString*) localizedStringForKey: (NSString*) key{
    NSBundle *bundle = [self bundle];
    return [bundle localizedStringForKey:key value:@"" table:nil];
}

@end
