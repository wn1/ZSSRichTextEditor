//
//  ZSSRichTextEditorResource.h
//  DynamicUI_lib
//
//  Created by Vladimir Kudashov on 25.05.16.
//  Copyright © 2016 TZ Communications. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ZSSRichTextEditorResource : NSObject
+ (NSBundle*) bundle;
+ (void) setBundleName: (NSString*) bName;
+ (UIImage *)imageNamed:(NSString *)name;
+ (NSString*) localizedStringForKey: (NSString*) key;

#define ZSSRichTextEditorLocalizedString(key, comment) \
[ZSSRichTextEditorResource localizedStringForKey:key]
@end
