//
//  CWUBImageViewWithModel.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/22.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBImageViewWithModel.h"
#import <SDWebImage/UIImageView+WebCache.h>

@implementation CWUBImageViewWithModel

-(instancetype)initWithModel:(CWUBImageInfo*)model{

    if (self = [super init]) {
        [self interface_update:model];
    }

    return self;
}

-(void) interface_update:(CWUBImageInfo*)model{

    self.m_model = model;

    if (model) {

        if (model.m_imgUrl && model.m_imgUrl.length>0) {

            /**
             * 如果原来已经显示了图片，就不要再显示默认图片,默认图片优先显示UIImage图片
             */
            UIImage * img = self.m_model.m_defaultImg?self.m_model.m_defaultImg:
            (self.image?self.image:[UIImage imageNamed:model.m_imgName]);
            [self sd_setImageWithURL:[NSURL URLWithString:model.m_imgUrl] placeholderImage:img completed:nil];

        }else{
            /**
             * 优先显示UIImage图片
             */
            if (self.m_model.m_defaultImg) {
                [self setImage:self.m_model.m_defaultImg];
            } else {
                [self setImage:[UIImage imageNamed:model.m_imgName]];
            }
        }

        self.clipsToBounds = model.m_isClipToBounds;
        [self setClipsToBounds:model.m_isClipToBounds];

        self.contentMode = model.m_contentMode;

        if (model.m_cornerInfo.m_cornerRadius>0 && model.m_cornerInfo.m_cornerWidth>0) {

            self.layer.cornerRadius = model.m_cornerInfo.m_cornerRadius;
            self.layer.borderWidth = model.m_cornerInfo.m_cornerWidth;
            self.layer.borderColor = [model.m_cornerInfo.m_cornerColor CGColor];
            self.layer.masksToBounds = YES;

        }else{

            if (self.m_model.m_isCircle) {
                self.layer.cornerRadius = self.m_model.m_width/2.;
                self.layer.masksToBounds = YES;

            }else{
                self.layer.cornerRadius = 0.;
                self.layer.borderWidth = 0.;
                self.layer.borderColor = [[UIColor clearColor] CGColor];
                self.layer.masksToBounds = NO;
            }
        }

        if (model.m_color_backGround) {
            self.backgroundColor = model.m_color_backGround;
        }

        if ([model.m_canUserInteract isEqualToString:@"1"]) {
            self.userInteractionEnabled = YES;
        } else {
            self.userInteractionEnabled = NO;
        }

        self.hidden = model.m_isHidden;
    }
}

@end
