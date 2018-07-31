//
//  CWUBCell_HorizontalScroll_TitleTop_TitleBottom_ImgRight.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/7/30.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_HorizontalScroll_TitleTop_TitleBottom_ImgRight.h"
#import "TitleTop_TitleBottom_ImgRight.h"

@interface CWUBCell_HorizontalScroll_TitleTop_TitleBottom_ImgRight()<
TitleTop_TitleBottom_ImgRight_Delegate
>

@property (nonatomic, strong) NSMutableArray *m_array;

@end

@implementation CWUBCell_HorizontalScroll_TitleTop_TitleBottom_ImgRight

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_HorizontalScroll_TitleTop_TitleBottom_ImgRight_Model*)model{

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier model:model]) {

        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (id)initWithModel:(CWUBCell_HorizontalScroll_TitleTop_TitleBottom_ImgRight_Model*)model{

    if (self = [super init]) {

        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (void)fun_commonInitWithModel:(CWUBCell_HorizontalScroll_TitleTop_TitleBottom_ImgRight_Model*)model{

    self.selectionStyle = UITableViewCellSelectionStyleNone;
    self.m_model = model;
    if (self.m_model.m_bottomLineInfo.m_color) {
        self.m_img_sep.backgroundColor = self.m_model.m_bottomLineInfo.m_color;
    }else{
        self.m_img_sep.backgroundColor = [UIColor clearColor];
    }

    [self func_initWithSubViews];
}

- (void) func_initWithSubViews{

    for (TitleTop_TitleBottom_ImgRight_Model *model in self.m_model.m_array) {

        TitleTop_TitleBottom_ImgRight *single = [[TitleTop_TitleBottom_ImgRight alloc] initWithModel:model];
        single.delegate = self;
        [self addSubview:single];
        [self.m_array addObject:single];
    }

    [self addSubview:self.m_img_sep];

    [self func_updateConsrtains];

}

- (void)func_updateConsrtains{

    float fWidth = 0.;
    for (int i=0; i<self.m_array.count; i++) {

        TitleTop_TitleBottom_ImgRight *single = [self.m_array objectAtIndex:i];

        TitleTop_TitleBottom_ImgRight_Model *model = [self.m_model.m_array objectAtIndex:i];
        [single mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self);
            make.bottom.equalTo(self);
            make.left.equalTo(self).offset(fWidth);
            make.width.equalTo(@(model.m_width));
            make.height.equalTo(@(model.m_height));
        }];

        [single interface_updateWithModel:model];

        fWidth += model.m_width;
    }

    [self.m_img_sep mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(@(self.m_model.m_bottomLineInfo.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_bottomLineInfo.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
    }];

}

#pragma mark - 属性
-(CWUBCell_HorizontalScroll_TitleTop_TitleBottom_ImgRight_Model*) m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_HorizontalScroll_TitleTop_TitleBottom_ImgRight_Model new];
    }

    return _m_model;
}

/**
 * 保存子视图的数组
 */
-(NSMutableArray *) m_array{

    if (!_m_array) {
        _m_array = [NSMutableArray new];
    }

    return _m_array;
}
#pragma mark - 接口

- (void) interface_updateWithModel:(CWUBCell_HorizontalScroll_TitleTop_TitleBottom_ImgRight_Model*)model{

    [super interface_updateWithModel:model];

    self.m_model = model;

    if (self.m_model.m_bottomLineInfo.m_color) {
        self.m_img_sep.backgroundColor = self.m_model.m_bottomLineInfo.m_color;
    }else{
        self.m_img_sep.backgroundColor = [UIColor clearColor];
    }
    if (self.m_model.m_bottomLineInfo.m_image && self.m_model.m_bottomLineInfo.m_image.length>0) {
        [self.m_img_sep setImage:[UIImage imageNamed:self.m_model.m_bottomLineInfo.m_image]];
    }
    [self func_updateConsrtains];

}

-(NSString *)interface_get_event_opt_code{
    return self.m_model.m_event_opt_code;
}

#pragma mark - 子视图点击事件

/**
 * code 代表该项标签
 */
- (void)TitleTop_TitleBottom_ImgRight_Delegate_clickWithCode:(NSString*)code{

    if ([self.delegate respondsToSelector:@selector(CWUBCell_HorizontalScroll_TitleTop_TitleBottom_ImgRight_Delegate_clickWithCode:)]) {

        [self.delegate CWUBCell_HorizontalScroll_TitleTop_TitleBottom_ImgRight_Delegate_clickWithCode:code];
    }

}

#pragma mark - system
- (void)awakeFromNib {[super awakeFromNib];}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

@end
