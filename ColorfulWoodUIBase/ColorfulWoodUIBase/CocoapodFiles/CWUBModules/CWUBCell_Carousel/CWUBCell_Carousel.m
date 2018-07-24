//
//  CWUBCell_Carousel.m
//  ColorfulWoodUIBase
//  图片 文字 轮播
//  Created by 大新 on 2018/7/20.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_Carousel.h"
#import <SDWebImage/UIImageView+WebCache.h>
#import "CWUBLabelWithModel.h"
#import "CWUBLableLeftTop.h"
#import "CWUBCell_Carousel_Single.h"

@interface CWUBCell_Carousel()
@property (nonatomic, strong) NSMutableArray *m_array;
@property (nonatomic, strong) UIImageView * m_img_sep;
@end

@implementation CWUBCell_Carousel

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_Carousel_Model*)model{

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier model:model]) {

        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (id)initWithModel:(CWUBCell_Carousel_Model*)model{

    if (self = [super init]) {

        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (void)fun_commonInitWithModel:(CWUBCell_Carousel_Model*)model{

    self.selectionStyle = UITableViewCellSelectionStyleNone;
    self.m_model = model;
    if (self.m_model.m_bottomLineInfo.m_color) {
        self.m_img_sep.backgroundColor = self.m_model.m_bottomLineInfo.m_color;
    }else{
        self.m_img_sep.backgroundColor = [UIColor clearColor];
    }
    [self initWithSubViews];
}

- (void) initWithSubViews{

    /**
     * 删除所有子视图
     */
    for(UIView *view in [self subviews]){

        [view removeFromSuperview];
    }
    [self.m_array removeAllObjects];

    float fLastView = [[UIScreen mainScreen] bounds].size.width;

    /**
     * 添加子视图
     */
    for (int i=0; i<self.m_model.m_array.count; i++) {

        CWUBCell_Carousel_Single_Model *model = [self.m_model.m_array objectAtIndex:i];

        CWUBCell_Carousel_Single *single = [[CWUBCell_Carousel_Single alloc] initWithModel:model];


        [self addSubview:single];

        float fWidth = [single interface_getLength];

        [single mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self).offset(fLastView);
            make.width.equalTo(@(fWidth));
            make.height.equalTo(self);
            make.top.equalTo(self);
        }];

        fLastView += fWidth;

        [self.m_array addObject:single];
    }

    [self addSubview:self.m_img_sep];

    [self func_updateConsrtains];

}

- (void)func_updateConsrtains{

    float fLastView = [[UIScreen mainScreen] bounds].size.width;

    /**
     * 更新位置
     */
    for (int i=0; i<self.m_model.m_array.count; i++) {

        CWUBCell_Carousel_Single *single = (CWUBCell_Carousel_Single *)[self.m_array objectAtIndex:i];

        float fWidth = [single interface_getLength];

        [single mas_remakeConstraints:^(MASConstraintMaker *make) {

            make.left.equalTo(self).offset(fLastView);
            make.width.equalTo(@(fWidth));
            make.height.equalTo(self);
            make.top.equalTo(self);
        }];

        if (i == self.m_model.m_array.count-1) {
            fLastView += fWidth;
        } else {
            fLastView += fWidth;
        }

        /**
         * 如果其约束还没有生成的时候需要动画的话，就请先强制刷新后才写动画，否则所有没生成的约束会直接跑动画
         */
        [single.superview layoutIfNeeded];

    }

    [self performSelector:@selector(func_refresh:) withObject:[NSString stringWithFormat:@"%f",fLastView] afterDelay:0.1];

    [_m_img_sep mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(@(self.m_model.m_bottomLineInfo.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_bottomLineInfo.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
    }];

}

/**
 * 滚动动画
 * 动画是循环滚动的；滚动结束时，根据参数设置最后文字剩余多长时，开始循环
 */
- (void)func_refresh:(NSString*)lastView{

    /**
     * 总长度，用来计算动画时间
     */
    float fTotalWidth = [lastView floatValue];

    if (self.m_array.count>0) {

        [UIView animateWithDuration:fTotalWidth/CWUBDefine_Width(CWUBDefineDeviceWidth)*self.m_model.m_fSecond delay:0. options:UIViewAnimationOptionBeginFromCurrentState|UIViewAnimationOptionRepeat|UIViewAnimationOptionCurveLinear|UIViewAnimationOptionAllowUserInteraction animations:^{

            /**
             * 先安排最后一个，让它的尾部正好在视图的最左侧
             * 前面的依次排列
             */
            float fLastView = 0.;
            for (int i=(int)self.m_array.count-1; i>=0; i--) {

                CWUBCell_Carousel_Single *single = (CWUBCell_Carousel_Single *)[self.m_array objectAtIndex:i];
                float fWidth = [single interface_getLength];

                /**
                 * 不要全部滚动完再开始循环，而是留下一段信息
                 */
                if (i == (int)self.m_array.count-1) {
                    fLastView -= fWidth;
                } else {
                    fLastView -= fWidth;
                }

                [single mas_updateConstraints:^(MASConstraintMaker *make) {

                    make.left.equalTo(self).offset(fLastView);
                    make.width.equalTo(@(fWidth));
                    make.height.equalTo(self);
                    make.top.equalTo(self);
                }];

            }

            [self layoutIfNeeded];//强制绘制

        } completion:^(BOOL finished) {


        }];

    }

}

#pragma mark - 属性
-(CWUBCell_Carousel_Model*) m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_Carousel_Model new];
    }

    return _m_model;
}

-(UIImageView *)m_img_sep{

    if(!_m_img_sep){
        _m_img_sep = [CWUBDefine imgSep];
        [_m_img_sep setClipsToBounds:YES];
    }
    return _m_img_sep;
}

/**
 * 保存图片信息或文本信息的数组
 */
-(NSMutableArray *) m_array{

    if (!_m_array) {
        _m_array = [NSMutableArray new];
    }

    return _m_array;
}

#pragma mark - 接口

- (void) interface_updateWithModel:(CWUBCell_Carousel_Model*)model{

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

- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

@end


