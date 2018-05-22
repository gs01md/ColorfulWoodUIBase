//
//  CWUBButtonWithInfo.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/19.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBButtonWithInfo.h"
#import "CWUBDefine.h"

@interface CWUBButtonWithInfo()
@property(nonatomic, strong)CWUBButtonInfo * m_info;
@end

@implementation CWUBButtonWithInfo

- (instancetype)initWithModel:(CWUBButtonInfo*)info{

    if (self = [super init]) {
        self.m_info = info;

        if (info) {

            self.layer.cornerRadius = 5.;
            self.layer.borderWidth = 1.;
            self.clipsToBounds = YES;

            [self setTitle:info.m_text?info.m_text:@"" forState:UIControlStateNormal];
            [self setTitleColor:info.m_color?info.m_color:[UIColor blackColor] forState:UIControlStateNormal];
            self.backgroundColor = info.m_backgroundColor?info.m_backgroundColor:[CWUBDefine colorBlueDeep];
            if (info.m_font) {
                [self.titleLabel setFont:info.m_font];
            }

        }

    }

    return self;
}

- (void)interface_updateWithModel:(CWUBButtonInfo*)info{

    self.m_info = info;

    [self setTitle:info.m_text?info.m_text:@"" forState:UIControlStateNormal];
    [self setTitleColor:info.m_color?info.m_color:[UIColor blackColor] forState:UIControlStateNormal];
    self.backgroundColor = info.m_backgroundColor?info.m_backgroundColor:[CWUBDefine colorBlueDeep];
    if (info.m_font) {
        [self.titleLabel setFont:info.m_font];
    }
}

@end
