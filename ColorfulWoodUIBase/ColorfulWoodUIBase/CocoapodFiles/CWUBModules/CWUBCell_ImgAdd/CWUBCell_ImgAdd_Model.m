//
//  CWUBCell_ImgAdd_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2019/4/17.
//  Copyright © 2019 ColorfulWood. All rights reserved.
//

#import "CWUBCell_ImgAdd_Model.h"

@implementation CWUBCell_ImgAdd_Model
- (NSMutableArray *)m_imgArr{

    if (!_m_imgArr) {
        _m_imgArr = [NSMutableArray new];
    }

    return _m_imgArr;
}

- (float) m_margin_left{

    if (_m_margin_left == 0) {
        _m_margin_left = 15;
    }

    return _m_margin_left;
}

- (float) m_margin_right{

    if (_m_margin_right == 0) {
        _m_margin_right = 15;
    }

    return _m_margin_right;
}

- (float) m_margin_top{

    if (_m_margin_top == 0) {
        _m_margin_top = 15;
    }

    return _m_margin_top;
}

- (float) m_margin_bottom{

    if (_m_margin_bottom == 0) {
        _m_margin_bottom = 15;
    }

    return _m_margin_bottom;
}

- (float) m_imgHeight{

    if (_m_imgHeight == 0) {
        _m_imgHeight = 35;
    }

    return _m_imgHeight;
}

- (float) m_imgWidth{

    if (_m_imgWidth == 0) {
        _m_imgWidth = 35;
    }

    return _m_imgWidth;
}

+(CWUBCell_ImgAdd_Model *)tester_dataWithArray:(NSMutableArray *)data{

    CWUBCell_ImgAdd_Model * model13 = [CWUBCell_ImgAdd_Model new];
    model13.m_margin_top = 15;
    model13.m_margin_left = 15;
    model13.m_typeName = @"CWUBCell_ImgAdd";


    CWUBImageInfo * img1 = [[CWUBImageInfo alloc] initWithName:@"FSL_II_我是个人" width:75. height:75.];
    img1.m_imgUrl = @"http://images.fangshiliu.com/fsl_api/2018-05-31/252924cf-d74c-439b-b95a-fb1650e051f2.png";
    img1.m_event_opt_code = @"视频点击";
    img1.m_cornerInfo = [CWUBCornerInfo interface_initWithRadius:5. width:0.5 color:[UIColor whiteColor]];
    img1.m_width = 80;
    img1.m_height = 80;

    [model13.m_imgArr addObject:img1];

    CWUBImageInfo * img2 = [[CWUBImageInfo alloc] initWithName:@"upload" width:75. height:75.];
    //img2.m_imgUrl = @"http://images.fangshiliu.com/fsl_api/2018-05-31/252924cf-d74c-439b-b95a-fb1650e051f2.png";
    //img2.m_defaultName = @"left";
    img2.m_event_opt_code = @"视频点击";
    img2.m_cornerInfo = [CWUBCornerInfo interface_initWithRadius:5. width:0.5 color:[UIColor whiteColor]];
    img2.m_width = 80;
    img2.m_height = 80;

    [model13.m_imgArr addObject:img2];
    [model13.m_imgArr addObject:img1];
    [model13.m_imgArr addObject:img2];
    [model13.m_imgArr addObject:img2];
    [model13.m_imgArr addObject:img1];
    [model13.m_imgArr addObject:img2];



    model13.m_bottomLineInfo.m_color = [UIColor blueColor];
    model13.m_bottomLineInfo.m_margin_right = 15;
    [data addObject:model13];

    return model13;
}
@end
