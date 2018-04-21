//
//  CWUBWoodUIBaseDemo.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/4/21.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CWUBModel.h"
#import "CWUBCell_TitleRight_ButtonRight.h"


@interface CWUBWoodUIBaseDemo: NSObject
@property(nonatomic, strong)CWUBModel * m_dataView;
- (CWUBModel*)interface_transToViewData;
@end

@implementation CWUBWoodUIBaseDemo

#pragma mark - 属性
- (CWUBModel*) m_dataView{

    if (!_m_dataView) {
        _m_dataView = [CWUBModel new];
    }
    return _m_dataView;
}

- (CWUBModel*)interface_transToViewData{

    [self.m_dataView.m_array_show removeAllObjects];

    [self func_getOne];

    return self.m_dataView;
}


- (void) func_getOne{

    NSMutableArray * data = [NSMutableArray new];

    CWUBCell_TitleRight_ButtonRight_Model * model = [CWUBCell_TitleRight_ButtonRight_Model new];
    model.m_type = CWUBCellType_TitleRight_ButtonRight;
    model.m_title = [[CWUBTextInfo alloc] initWithText:@"查看详情" font:[CWUBDefine fontOptButton] color:[CWUBDefine colorBlueDeep]];
    model.m_btnImg = @"";
    model.m_event_opt_code = @"查看详情";
    [data addObject:model];

    if (data.count>0) {
        [self.m_dataView.m_array_show addObject:data];
    }

}

/*
#pragma mark - 代理 tableview

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSInteger i = 0;

    if (self.m_model && self.m_model.m_array_show) {

        if (section<=self.m_model.m_array_show.count-1) {

            NSArray *array = self.m_model.m_array_show[section];

            if (array) {
                i = array.count;
            }
        }
    }

    return i;

}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    NSUInteger i = 0;
    if (self.m_model && self.m_model.m_array_show) {
        i = self.m_model.m_array_show.count;
    }

    return i;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    NSArray * array =  nil;

    if (indexPath.section <= self.m_model.m_array_show.count-1) {
        array =self.m_model.m_array_show[indexPath.section];
    }

    if (array && indexPath.row <= array.count-1) {

        CWUBModelBase * model = array[indexPath.row];
        CWUBCellBase* cell = (CWUBCellBase*)[model interface_getView:tableView];
        [cell interface_updateWithModel:model];
        if (model.m_type == CWUBCellType_TitleRight_ButtonRight) {
            CWUBCell_TitleRight_ButtonRight * cell1 = (CWUBCell_TitleRight_ButtonRight*)cell;
            cell1.delegate = self;
        }

        return cell;

    }else{

        return [UITableViewCell new];
    }

}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    CWUBCellBase *cell = (CWUBCellBase *)[tableView cellForRowAtIndexPath:indexPath];
    NSString * code = [cell interface_get_event_opt_code];
    if ([code isEqualToString:@"查看详情"]) {

    }
}
*/
@end

