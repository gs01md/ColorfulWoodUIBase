//
//  CWUBCellBase.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/4/7.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCellBase.h"

@implementation CWUBCellBase

/**
 * 返回cell
 */
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBModelBase*)model{

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {

        if (model) {
            self.backgroundColor = model.m_color_backGround;
            if (model.m_cornerInfo && model.m_cornerInfo.m_cornerRadius>0 && model.m_cornerInfo.m_cornerWidth>0) {

                self.layer.cornerRadius = model.m_cornerInfo.m_cornerRadius;
                self.layer.borderWidth = model.m_cornerInfo.m_cornerWidth;
                self.layer.borderColor = [model.m_cornerInfo.m_cornerColor CGColor];
                self.layer.masksToBounds = YES;

            }else{

                self.layer.cornerRadius = 0.;
                self.layer.borderWidth = 0.;
                self.layer.borderColor = [[UIColor clearColor] CGColor];
                self.layer.masksToBounds = NO;
            }
        }

    }

    return self;
}

- (instancetype)initWithModel:(CWUBModelBase *)model{

    if (self = [super init]) {

        if (model) {
            self.backgroundColor = model.m_color_backGround;
            if (model.m_cornerInfo && model.m_cornerInfo.m_cornerRadius>0 && model.m_cornerInfo.m_cornerWidth>0) {

                self.layer.cornerRadius = model.m_cornerInfo.m_cornerRadius;
                self.layer.borderWidth = model.m_cornerInfo.m_cornerWidth;
                self.layer.borderColor = [model.m_cornerInfo.m_cornerColor CGColor];
                self.layer.masksToBounds = YES;

            }else{

                self.layer.cornerRadius = 0.;
                self.layer.borderWidth = 0.;
                self.layer.borderColor = [[UIColor clearColor] CGColor];
                self.layer.masksToBounds = NO;
            }
        }

    }

    return self;
}

-(UIImageView *)m_img_sep{

    if(!_m_img_sep){
        _m_img_sep = [CWUBDefine imgSep];
        [_m_img_sep setClipsToBounds:YES];
    }
    return _m_img_sep;
}

- (void)interface_updateWithModel:(CWUBModelBase*)model{

}

/**
 * 获取该列的操作标识 - 用于点击事件
 */
- (NSString*) interface_get_event_opt_code{
    return @"";
}

/**
 * 根据参数刷新界面
 */
- (void)interface_updateWithCode:(NSString*)code{
    
}

/**
 * 隐藏底部的虚线
 */
- (void) interface_bottomLine_hidden{
    
}

- (void)awakeFromNib {[super awakeFromNib];}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

@end
