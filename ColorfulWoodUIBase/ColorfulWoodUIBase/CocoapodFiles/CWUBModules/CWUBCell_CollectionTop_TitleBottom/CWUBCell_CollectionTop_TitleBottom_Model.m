//
//  CWUBCell_Collection_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/29.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_CollectionTop_TitleBottom_Model.h"
#import "CWUBView_TitleLeft_ButtonRight_Model.h"

@implementation CWUBCell_CollectionTop_TitleBottom_Model

- (instancetype) init{

    if (self = [super init]) {
        self.m_type = CWUBCellType_CollectionTop_TitleBottom;
    }

    return self;
}

- (CWUBTextInfo*) m_title_bottom{

    if (!_m_title_bottom) {
        _m_title_bottom = [CWUBTextInfo new];
    }

    return _m_title_bottom;
}

- (CWUBCollectionInfo*) m_collection_top{

    if (!_m_collection_top) {
        _m_collection_top = [CWUBCollectionInfo new];
    }

    return _m_collection_top;
}

/**
 * 测试数据
 */
+ (CWUBCell_CollectionTop_TitleBottom_Model*) tester_dataWithArray:(NSMutableArray*) arrayIn{

    CWUBCell_CollectionTop_TitleBottom_Model * model19 = [CWUBCell_CollectionTop_TitleBottom_Model new];
    model19.m_type = CWUBCellType_CollectionTop_TitleBottom;


    float imgWidth = 10;
    /**
     * 下部的提示文字
     */
    model19.m_title_bottom = [[CWUBTextInfo alloc] initWithText:@"" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];
    model19.m_collection_top.m_canUserInteract = @"0";
    NSArray * array = @[@"航空航空航空航空航空航空航空航空航空航空航空航空航空航空航空航空",@"航空航空航空航空航空航空航空航空航空航空航空航空航空航空航空航空空航空航空航空航空",@"航空航空",@"空航空",@"航空航空航空",@"航空",@"航空航空",@"航空航空",@"航空航空航空",@"空",@"航空航航空",@"空航空",@"航空航空航空",@"航空"];

    for (NSString* temp in array) {
        CWUBTextInfo * info = [[CWUBTextInfo alloc] initWithText:temp font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];
        //info.m_cornerInfo = [CWUBCornerInfo interface_initWithRadius:4. width:0.5 color:CWUBDefineCreate_Color(51,51,51,1)];

        CWUBView_TitleLeft_ButtonRight_Model *m1 = [[CWUBView_TitleLeft_ButtonRight_Model alloc] initWithTitle:info img:[[CWUBImageInfo alloc] initWithName:@"right" width:imgWidth height:imgWidth]];
        m1.m_cornerInfo = [CWUBCornerInfo interface_initWithRadius:4. width:0.5 color:CWUBDefineCreate_Color(51,51,51,1)];
        m1.m_color_backGround = [UIColor redColor];
        [model19.m_collection_top.m_array addObject:m1];
    }

    model19.m_event_opt_code = @"感兴趣行业";

    model19.m_bottomLineInfo.m_color = [UIColor redColor];

    [arrayIn addObject:model19];

    return model19;
}

@end
