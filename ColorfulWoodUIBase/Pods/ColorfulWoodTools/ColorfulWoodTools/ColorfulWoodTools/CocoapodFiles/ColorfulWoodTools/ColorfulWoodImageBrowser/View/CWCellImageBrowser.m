//
//  CWCellImageBrowser.m
//  ColorfulWoodTools
//
//  Created by 大新 on 2018/12/24.
//  Copyright © 2018 ColorfulWood. All rights reserved.
//

#import "CWCellImageBrowser.h"
#import <Masonry/Masonry.h>

static CGFloat const KmaxScaleZoome = 2.f;
static CGFloat const kminScaleZoome = 1.f;

@interface CWCellImageBrowser () <UIScrollViewDelegate>

@property (nonatomic, strong)UIScrollView *scrollView;

@property (nonatomic, assign) CGFloat currentScale;

@end
@implementation CWCellImageBrowser

- (instancetype)initWithFrame:(CGRect)frame
{
    if(self = [super initWithFrame:frame]){

        [self setupUI];
    }
    return self;
}

- (void)setupUI
{
    self.scrollView.zoomScale = kminScaleZoome;
    [self.contentView addSubview:self.scrollView];
    [self.scrollView mas_makeConstraints:^(MASConstraintMaker *make) {

        make.edges.offset(0);
    }];

    [self.scrollView addSubview:self.m_pictureImageView];
    [self.m_pictureImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.scrollView);
        make.width.equalTo(self.scrollView.mas_width);
        make.height.equalTo(self.scrollView.mas_height);
    }];
}

- (void)handleTapAction:(UITapGestureRecognizer *)sender
{
    NSLog(@"单击");
    if (self.block_tapImage) {
        self.block_tapImage();
    }
}

- (void)handleDoubleTapAction:(UITapGestureRecognizer *)sender
{
    if (self.scrollView.zoomScale != 1.0f) {

        [self.scrollView setZoomScale:1.0f animated:true];
    } else{

        //获得Cell的宽度
        CGFloat width = self.frame.size.width;

        //触及范围
        CGFloat scale = width / KmaxScaleZoome;

        //获取当前的触摸点
        CGPoint point = [sender locationInView:self.m_pictureImageView];

        //对点进行处理
        CGFloat originX = MAX(0, point.x - width / scale);
        CGFloat originY = MAX(0, point.y - width / scale);

        //进行位置的计算
        CGRect rect = CGRectMake(originX, originY, width / scale , width / scale);

        //进行缩放
        [self.scrollView zoomToRect:rect animated:YES];
    }
}

#pragma mark - UIScrollViewDelegate
- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return self.m_pictureImageView;
}


- (void)scrollViewDidEndZooming:(UIScrollView *)scrollView withView:(nullable UIView *)view atScale:(CGFloat)scale
{
    [scrollView setZoomScale:scale animated:true];
}

#pragma mark - 懒加载
- (UIScrollView *)scrollView {
    if (!_scrollView) {
        _scrollView = [[UIScrollView alloc] init];
        _scrollView.delegate = self;
        _scrollView.backgroundColor = [UIColor clearColor];
        _scrollView.bounces = YES;
        _scrollView.minimumZoomScale = kminScaleZoome;
        _scrollView.maximumZoomScale = KmaxScaleZoome;
        _scrollView.userInteractionEnabled = YES;
        _scrollView.showsVerticalScrollIndicator = NO;
        _scrollView.showsHorizontalScrollIndicator = NO;
    }
    return _scrollView;
}

- (UIImageView *)m_pictureImageView
{
    if(!_m_pictureImageView){
        _m_pictureImageView = [[UIImageView alloc] init];
        _m_pictureImageView.contentMode = UIViewContentModeScaleAspectFit;
        _m_pictureImageView.userInteractionEnabled = YES;

        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTapAction:)];
        [_m_pictureImageView addGestureRecognizer:tap];

        UITapGestureRecognizer *doubleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleDoubleTapAction:)];
        doubleTap.numberOfTapsRequired = 2;
        [tap requireGestureRecognizerToFail:doubleTap];
        [_m_pictureImageView addGestureRecognizer:doubleTap];
    }
    return _m_pictureImageView;
}

@end
