//
//  CWUBImageViewWithModel.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/22.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBImageViewWithModel.h"
#import <SDWebImage/UIImageView+WebCache.h>

@interface CWUBImageViewWithModel()
@property(nonatomic, strong)CWUBImageInfo* m_info;
@end

@implementation CWUBImageViewWithModel

-(instancetype)initWithModel:(CWUBImageInfo*)info{

    if (self = [super init]) {
        [self interface_update:info];
    }

    return self;
}

-(void) interface_update:(CWUBImageInfo*)info{

    self.m_info = info;

    if (info) {

        if (info.m_imgUrl && info.m_imgUrl.length>0) {

            /**
             * 如果原来已经显示了图片，就不要再显示默认图片,默认图片优先显示UIImage图片
             */
            UIImage * img = self.m_info.m_defaultImg?self.m_info.m_defaultImg:
            (self.image?self.image:[UIImage imageNamed:info.m_imgName]);
            [self sd_setImageWithURL:[NSURL URLWithString:info.m_imgUrl] placeholderImage:img completed:nil];

        }else{
            /**
             * 优先显示UIImage图片
             */
            if (self.m_info.m_defaultImg) {
                [self setImage:self.m_info.m_defaultImg];
            } else {
                [self setImage:[UIImage imageNamed:info.m_imgName]];
            }
        }

        self.clipsToBounds = info.m_isClipToBounds;
        [self setClipsToBounds:info.m_isClipToBounds];

        self.contentMode = info.m_contentMode;

        if (info.m_cornerInfo.m_cornerRadius>0 && info.m_cornerInfo.m_cornerWidth>0) {

            self.layer.cornerRadius = info.m_cornerInfo.m_cornerRadius;
            self.layer.borderWidth = info.m_cornerInfo.m_cornerWidth;
            self.layer.borderColor = [info.m_cornerInfo.m_cornerColor CGColor];
            self.layer.masksToBounds = YES;

        }else{

            if (self.m_info.m_isCircle) {
                self.layer.cornerRadius = self.m_info.m_width/2.;
                self.layer.masksToBounds = YES;

            }else{
                self.layer.cornerRadius = 0.;
                self.layer.borderWidth = 0.;
                self.layer.borderColor = [[UIColor clearColor] CGColor];
                self.layer.masksToBounds = NO;
            }
        }

        if (info.m_color_backGroud) {
            self.backgroundColor = info.m_color_backGroud;
        }

    }
}

@end
