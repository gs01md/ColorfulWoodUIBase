//
//  CWUBCell_TitleLeft_CollectionRight_ImgRight_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/18.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_TitleLeft_CollectionRight_ImgRight_Model.h"
#import "CWUBView_TitleLeft_ButtonRight_Model.h"

@implementation CWUBCell_TitleLeft_CollectionRight_ImgRight_Model

- (instancetype) init{

    if (self = [super init]) {
        self.m_type = CWUBCellType_TitleLeft_CollectionRight_ImgRight;
    }

    return self;
}

- (CWUBTextInfo*) m_title_left{

    if (!_m_title_left) {
        _m_title_left = [CWUBTextInfo new];
    }

    return _m_title_left;
}

- (CWUBTextInfo*) m_title_right{

    if (!_m_title_right) {
        _m_title_right = [CWUBTextInfo new];
    }

    return _m_title_right;
}

- (CWUBTextInfo*) m_title_rightBottom{

    if (!_m_title_rightBottom) {
        _m_title_rightBottom = [CWUBTextInfo new];
    }

    return _m_title_rightBottom;
}

- (CWUBCollectionInfo*) m_collection_right{

    if (!_m_collection_right) {
        _m_collection_right = [CWUBCollectionInfo new];
    }

    return _m_collection_right;
}

- (CWUBImageInfo*) m_img_right{

    if (!_m_img_right) {
        _m_img_right = [CWUBImageInfo new];
    }

    return _m_img_right;
}

+(CWUBCell_TitleLeft_CollectionRight_ImgRight_Model *)tester_dataWithArray:(NSMutableArray *)data{

    CWUBCell_TitleLeft_CollectionRight_ImgRight_Model * model11 = [CWUBCell_TitleLeft_CollectionRight_ImgRight_Model new];
    model11.m_type = CWUBCellType_TitleLeft_CollectionRight_ImgRight;

    model11.m_title_left = [[CWUBTextInfo alloc] initWithText:@"请选择行业" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];
    model11.m_title_left.m_width = 120;

    /**
     * 右侧的提示文字
     */
    model11.m_title_right = [[CWUBTextInfo alloc] initWithText:@"" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];

    float imgWidth1 = 0.01;
    /**
     * 右侧下部的提示文字
     */
    model11.m_title_rightBottom = [[CWUBTextInfo alloc] initWithText:@"" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];
    //model11.m_collection_right.m_canUserInteract = @"0";
    model11.m_event_opt_code = @"选择行业";
    NSArray * array1 = @[@"Objective-C的类不可以多重继承；可以实现多个接口（协议）；Category是类别；一般情况用分类好，用Category去重写类的方法，仅对本Category有效，不会影响到其他类与原有类的关系",@"航空航空航空航空航空航空航空航空航空航空航空航空航空航空航空航空空航空航空航空航空",@"航空航空",@"空航空",@"航空航空航空",@"航空",@"航空航空",@"航空航空",@"航空航空航空",@"空",@"航空航航空",@"空航空",@"航空航空航空",@"航空"];

    for (NSString* temp in array1) {
        CWUBTextInfo * info = [[CWUBTextInfo alloc] initWithText:temp font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];
        //info.m_cornerInfo = [CWUBCornerInfo interface_initWithRadius:4. width:0.5 color:CWUBDefineCreate_Color(51,51,51,1)];

        CWUBView_TitleLeft_ButtonRight_Model *m1 = [[CWUBView_TitleLeft_ButtonRight_Model alloc] initWithTitle:info img:[[CWUBImageInfo alloc] initWithName:@"right" width:imgWidth1 height:imgWidth1]];
        m1.m_cornerInfo = [CWUBCornerInfo interface_initWithRadius:4. width:0.5 color:CWUBDefineCreate_Color(51,51,51,1)];

        [model11.m_collection_right.m_array addObject:m1];
    }


    model11.m_img_right = [[CWUBImageInfo alloc] initWithName:@"right" width:10 height:10];

    model11.m_bottomLineInfo.m_color = [UIColor redColor];
    [data addObject:model11];

    return model11;
}

@end
