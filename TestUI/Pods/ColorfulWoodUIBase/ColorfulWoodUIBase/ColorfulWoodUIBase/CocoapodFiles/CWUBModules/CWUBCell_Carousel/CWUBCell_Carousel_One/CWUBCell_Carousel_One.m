//
//  CWUBCell_Carousel_One.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/7/30.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_Carousel_One.h"
#import <SDWebImage/UIImageView+WebCache.h>
#import "CWUBLabelWithModel.h"
#import "CWUBLableLeftTop.h"
#import "CWUBCell_Carousel_Single.h"

@interface CWUBCell_Carousel_One()<
UIScrollViewDelegate
>

@property(nonatomic, strong) CWUBImageViewWithModel *m_img_left;

@property(nonatomic, strong) NSMutableArray *m_array;

@property(nonatomic, strong) UIScrollView *m_scrollView;

/**
 * 轮播定时器
 */
@property(nonatomic, strong) NSTimer *m_timer;

@property(nonatomic, assign) int m_currentPage;

/**
 * 上次动画的时间，发现会连续进行两次动画；那么用时间进行规避
 */
@property(nonatomic, strong) NSDate *m_dateLast;

@end

@implementation CWUBCell_Carousel_One

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_Carousel_One_Model*)model{

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier model:model]) {

        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (id)initWithModel:(CWUBCell_Carousel_One_Model*)model{

    if (self = [super init]) {

        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (void)fun_commonInitWithModel:(CWUBCell_Carousel_One_Model*)model{

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

    [self addSubview:self.m_img_left];

    [self addSubview:self.m_scrollView];

    [self addSubview:self.m_img_sep];

    [self func_updateConsrtains];

}

/**
 * 初始化元素
 */
- (void)func_init{

    if (self.m_timer) {
        [self.m_timer invalidate];
    }

    self.m_currentPage = 0.;

    /**
     * 删除所有子视图
     */
    for(UIView *view in [self.m_scrollView subviews]){

        [view removeFromSuperview];
    }
    [self.m_array removeAllObjects];

    /**
     * 生成子视图
     */
    for (int i=0; i<self.m_model.m_array.count; i++) {

        CWUBCell_Carousel_Single_Model *model = [self.m_model.m_array objectAtIndex:i];

        CWUBCell_Carousel_Single *single = [[CWUBCell_Carousel_Single alloc] initWithModel:model];

        [self.m_array addObject:single];
    }

    self.m_dateLast = [NSDate date];
}

- (void)func_updateConsrtains{

    [self func_init];

    float fLastView = 0.;

    [self.m_img_left mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(self).offset(self.m_model.m_img_left.m_margin_left);
        make.width.equalTo(@(self.m_model.m_img_left.m_width));
        make.height.equalTo(@(self.m_model.m_img_left.m_height));
        make.centerY.equalTo(self);
    }];


    /**
     * 添加子视图到scrollview
     */
    for (int i=0; i<self.m_array.count; i++) {

        CWUBCell_Carousel_Single *single = (CWUBCell_Carousel_Single *)[self.m_array objectAtIndex:i];

        [self.m_scrollView addSubview:single];

        float fWidth = [single interface_getLength];

        [single mas_remakeConstraints:^(MASConstraintMaker *make) {

            make.left.equalTo(self.m_scrollView);
            make.width.equalTo(@(fWidth));
            make.height.equalTo(@(self.m_model.m_height));
            make.top.equalTo(@(fLastView));
        }];

        fLastView += self.m_model.m_height;

        /**
         * 只添加两个就可以了，后续会更新
         */
        if (i>0) {
            break;
        }

    }

    /**
     * 延迟进行动画，不然效果有问题
     */
    [self performSelector:@selector(func_refresh:) withObject:[NSString stringWithFormat:@"%f",fLastView] afterDelay:0.1];

    [self.m_img_sep mas_remakeConstraints:^(MASConstraintMaker *make) {

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

    if (self.m_array.count>1) {

        [self func_addTimer];
    }

}

#pragma mark - 属性
- (CWUBCell_Carousel_One_Model*) m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_Carousel_One_Model new];
    }

    return _m_model;
}

- (CWUBImageViewWithModel *) m_img_left{

    if (!_m_img_left) {
        _m_img_left = [CWUBImageViewWithModel new];
    }

    return _m_img_left;
}

/**
 * 保存图片信息或文本信息的数组
 */
- (NSMutableArray *) m_array{

    if (!_m_array) {
        _m_array = [NSMutableArray new];
    }

    return _m_array;
}

- (UIScrollView *)m_scrollView{

    if (!_m_scrollView) {

        float fLeft   = self.m_model.m_img_left.m_margin_left+self.m_model.m_img_left.m_width+self.m_model.m_img_left.m_margin_right;
        float fTop    = 0;
        float fWidth  = CWUBDefineDeviceWidth - fLeft;
        float fHeight = self.m_model.m_height;
        CGRect rect = CGRectMake(fLeft, fTop, fWidth, fHeight);
        _m_scrollView = [[UIScrollView alloc] initWithFrame:rect];
        _m_scrollView.pagingEnabled = YES;
        _m_scrollView.delegate = self;
        _m_scrollView.showsHorizontalScrollIndicator = NO;
        _m_scrollView.showsVerticalScrollIndicator = NO;
        _m_scrollView.contentSize = CGSizeMake(0, self.m_model.m_array.count*self.bounds.size.height);
    }

    return _m_scrollView;
}

#pragma mark - 接口

- (void) interface_updateWithModel:(CWUBCell_Carousel_One_Model*)model{

    [super interface_updateWithModel:model];

    self.m_model = model;

    [self.m_img_left interface_update:self.m_model.m_img_left];

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

#pragma mark - 轮播
/**
 *  开启定时器
 */
- (void)func_addTimer{

    [self.m_timer invalidate];
    self.m_timer = [NSTimer scheduledTimerWithTimeInterval:self.m_model.m_stayTime target:self selector:@selector(func_nextPage) userInfo:nil repeats:YES];

}

- (void)func_nextPage{

    [UIView animateWithDuration:1. animations:^{

        NSDate *date = [NSDate date];
        NSTimeInterval since = [date timeIntervalSinceDate:self.m_dateLast];
        if (since > 1) {
            self.m_dateLast= [NSDate date];
            //  滚动scrollview
            CGFloat y = self.m_scrollView.frame.size.height;
            [self.m_scrollView setContentOffset:CGPointMake(0, y)];
        }

    } completion:^(BOOL finished) {

        NSDate *date = [NSDate date];
        NSTimeInterval since = [date timeIntervalSinceDate:self.m_dateLast];
        if (since > 1) {

            /**
             * 标记动画时间
             */
            self.m_dateLast= [NSDate date];

            /**
             * 计算滚动后的页码
             */
            if (self.m_currentPage == self.m_array.count-1) {
                self.m_currentPage = 0;
            }else{
                self.m_currentPage++;
            }

            /**
             * 删除所有子视图
             */
            for(UIView *view in [self.m_scrollView subviews]){

                [view removeFromSuperview];
            }

            /**
             * 当前页面
             */
            CWUBCell_Carousel_Single *single = (CWUBCell_Carousel_Single *)[self.m_array objectAtIndex:self.m_currentPage];
            [self.m_scrollView addSubview:single];
            float fWidth = [single interface_getLength];

            float fLastView = 0.;

            [single mas_remakeConstraints:^(MASConstraintMaker *make) {

                make.left.equalTo(self.m_scrollView);
                make.width.equalTo(@(fWidth));
                make.height.equalTo(@(self.m_model.m_height));
                make.top.equalTo(@(fLastView));
            }];

            fLastView += self.m_model.m_height;

            /**
             * 计算下一个页面
             */
            int iNext = self.m_currentPage;
            if (iNext == self.m_array.count-1) {
                iNext = 0;
            }else{
                iNext++;
            }

            /**
             * 添加第二个页面
             */
            CWUBCell_Carousel_Single *single1 = (CWUBCell_Carousel_Single *)[self.m_array objectAtIndex:iNext];
            [self.m_scrollView addSubview:single1];
            float fWidth1 = [single1 interface_getLength];

            [single1 mas_remakeConstraints:^(MASConstraintMaker *make) {

                make.left.equalTo(self.m_scrollView);
                make.width.equalTo(@(fWidth1));
                make.height.equalTo(@(self.m_model.m_height));
                make.top.equalTo(@(fLastView));
            }];

            [self.m_scrollView setContentOffset:CGPointMake(0, 0)];

            [self.m_timer invalidate];
            self.m_timer = [NSTimer scheduledTimerWithTimeInterval:self.m_model.m_stayTime target:self selector:@selector(func_nextPage) userInfo:nil repeats:YES];
        }


    }];
}

/**
 * 重新启动动画
 */
- (void)interface_restartTimer{
    
    [self.m_timer invalidate];
    self.m_timer = [NSTimer scheduledTimerWithTimeInterval:self.m_model.m_stayTime target:self selector:@selector(func_nextPage) userInfo:nil repeats:YES];

}

/**
 * 重新启动动画
 */
- (void)interface_stopTimer{

    [self.m_timer invalidate];
}

#pragma mark - system

- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

@end



