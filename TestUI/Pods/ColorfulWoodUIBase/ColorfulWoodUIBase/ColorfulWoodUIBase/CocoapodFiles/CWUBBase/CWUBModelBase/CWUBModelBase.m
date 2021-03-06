//
//  CWUBModelBase.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/4/7.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBModelBase.h"
#import "CWUBCell_TitleLeft_InfoRight.h"
#import "CWUBCell_TitleLeft_InfoLeft.h"
#import "CWUBCell_TitleRight_ButtonRight.h"
#import "CWUBCell_Trip.h"
#import "CWUBCell_TitleLeft_InfoRight_ButtonRight.h"
#import "CWUBCell_ButtonLeft_TitleLeft.h"
#import "CWUBCell_Passenger.h"
#import "CWUBCell_Passenger_Delete.h"
#import "CWUBCell_Passenger_Opt.h"
#import "CWUBCell_TitleLeft_InfoLeft_ButtonRight.h"
#import "CWUBCell_Address.h"
#import "CWUBCell_TitleLeft_InputLeft.h"
#import "CWUBCell_ButtonRight_TitleRight_ButtonRight.h"
#import "CWUBCell_Refund.h"
#import "CWUBCell_ImgLeft_TitleLeft_InfoRight.h"
#import "CWUBCell_ButtonRight_SpaceBottom.h"
#import "CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight.h"
#import "CWUBCell_TitleLeft_SwithRight.h"
#import "CWUBCell_Address_ArrowRight.h"
#import "CWUBCell_CharterDetail_Opt.h"
#import "CWUBCell_TitleIconLeft_IconCenter_IconTitleRight.h"
#import "CWUBCell_IconTitleLeft_IconTitleRight.h"
#import "CWUBCell_IconTitleLeft_InfoBottomLeft_IconTitleRight_InfoBottomRight.h"
#import "CWUBCell_CharterDiscount.h"
#import "CWUBCell_TitleLeft_ButtonRight.h"
#import "CWUBCell_TitleCenter.h"
#import "CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight.h"
#import "CWUBCell_ImgCenter.h"
#import "CWUBCell_ImgLeft_TitleRightThree.h"
#import "CWUBCell_TitleLeft_TitleRight.h"
#import "CWUBCell_TitleLeftTwo_ImgCenter_TitleRightTwo.h"
#import "CWUBCell_WebImgStretch.h"
#import "CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom.h"
#import "CWUBCell_ImgTop_TitleCenter_TitleTitleImgBottom.h"
#import "CWUBCell_Company_One.h"
#import "CWUBCell_MyFollow_MyBusiness.h"
#import "CWUBCell_ImgCenter_TitleCenter.h"
#import "CWUBCell_TitleLeft_CollectionRight_ImgRight.h"
#import "CWUBCell_SevenImg.h"
#import "CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRight.h"
#import "CWUBCell_TitleLeft_InputRight_TitleRightBottom.h"
#import "CWUBCell_TitleLeft_TextViewRight_TitleRightBottom.h"
#import "CWUBCell_TitleTop_TitleBottom.h"
#import "CWUBCell_ImgBack_TitleFront.h"
#import "CWUBCell_SelectSex_Style1.h"
#import "CWUBCell_CollectionTop_TitleBottom.h"
#import "CWUBCell_ImgLeft_TitleTopLeft_TitleTopRight_TitleBottom.h"
#import "CWUBCell_Carousel.h"
#import "CWUBCell_Server_One.h"
#import "CWUBCell_Order_One.h"
#import "CWUBCell_Carousel_One.h"
#import "CWUBCell_HorizontalScroll_TitleTop_TitleBottom_ImgRight.h"
#import "CWUBCell_Server_Two.h"
#import "CWUBCell_Order_Two.h"
#import "CWUBCell_UploadImgWithTitle_S1.h"
#import "CWUBCell_Message_S1.h"
#import "CWUBCell_Person_S1.h"
#import "CWUBCell_Publish_Collection.h"
#import "CWUBCell_TitleLeft_InputRight_TitleRightBottom_CodeRight.h"
#import "CWUBCell_InputLeft_CodeRight.h"
#import "CWUBCell_TitleTopLeft_TitleBottomLeft_TitleBottomFollow.h"

@implementation CWUBModelBase
/**
 * 根据类型获取视图
 * tableView：在不是cell时，可不传
 */
- (UIView*) interface_getView:(UITableView*)tableView{

    UIView * view = nil;

    if (self.m_type) {

        switch (self.m_type) {

            case CWUBCellType_TitleLeft_InfoRight:
                view = [self func_CWUBCell_TitleLeft_InfoRight:tableView];
                break;

            case CWUBCellType_TitleLeft_InfoLeft:
                view = [self func_CWUBCell_TitleLeft_InfoLeft:tableView];
                break;

            case CWUBCellType_TitleRight_ButtonRight:
                view = [self func_CWUBCell_TitleRight_ButtonRight:tableView];
                break;

            case CWUBCellType_Trip:
                view = [self func_CWUBCell_Trip:tableView];
                break;

            case CWUBCellType_TitleLeft_InfoRight_ButtonRight:
                view = [self func_CWUBCell_TitleLeft_InfoRight_ButtonRight:tableView];
                break;

            case CWUBCellType_ButtonLeft_TitleLeft:
                view = [self func_CWUBCell_ButtonLeft_TitleLeft:tableView];
                break;

            case CWUBCellType_Passenger:
                view = [self func_CWUBCell_Passenger:tableView];
                break;

            case CWUBCellType_Passenger_Delete:
                view = [self func_CWUBCell_Passenger_Delete:tableView];
                break;

            case CWUBCellType_Passenger_Opt:
                view = [self func_CWUBCell_Passenger_Opt:tableView];
                break;

            case CWUBCellType_TitleLeft_InfoLeft_ButtonRight:
                view = [self func_CWUBCell_TitleLeft_InfoLeft_ButtonRight:tableView];
                break;

            case CWUBCellType_Address:
                view = [self func_CWUBCell_Address:tableView];
                break;

            case CWUBCellType_TitleLeft_InputLeft:
                view = [self func_CWUBCell_TitleLeft_InputLeft:tableView];
                break;

            case CWUBCellType_ButtonRight_TitleRight_ButtonRight:
                view = [self func_CWUBCell_ButtonRight_TitleRight_ButtonRight:tableView];
                break;

            case CWUBCellType_Refund:
                view = [self func_CWUBCell_Refund:tableView];
                break;

            case CWUBCellType_ImgLeft_TitleLeft_InfoRight:
                view = [self func_CWUBCell_ImgLeft_TitleLeft_InfoRight:tableView];
                break;

            case CWUBCellType_ButtonRight_SpaceBottom:
                view = [self func_CWUBCell_ButtonRight_SpaceBottom:tableView];
                break;

            case CWUBCellType_IconLeft_TitleLeft_TitleRight_IconRight:
                view = [self func_CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight:tableView];
                break;

            case CWUBCellType_TitleLeft_SwithRight:
                view = [self func_CWUBCell_TitleLeft_SwithRight:tableView];
                break;

            case CWUBCellType_Address_ArrowRight:
                view = [self func_CWUBCell_Address_ArrowRight:tableView];
                break;

            case CWUBCellType_CharterDetail_Opt:
                view = [self func_CWUBCell_CharterDetail_Opt:tableView];
                break;

            case CWUBCellType_IconTitleLeft_InfoBottomLeft_IconTitleRight_InfoBottomRight:
                view = [self func_CWUBCell_IconTitleLeft_InfoBottomLeft_IconTitleRight_InfoBottomRight:tableView];
                break;

            case CWUBCellType_IconTitleLeft_IconTitleRight:
                view = [self func_CWUBCell_IconTitleLeft_IconTitleRight:tableView];
                break;

            case CWUBCellType_TitleIconLeft_IconCenter_IconTitleRight:
                view = [self func_CWUBCell_TitleIconLeft_IconCenter_IconTitleRight:tableView];
                break;

            case CWUBCellType_CharterDiscount:
                view = [self func_CWUBCell_CharterDiscount:tableView];
                break;

            case CWUBCellType_TitleCenter:
                view = [self func_CWUBCell_TitleCenter:tableView];
                break;

            case CWUBCellType_TitleLeft_ButtonRight:
                view = [self func_CWUBCell_TitleLeft_ButtonRight:tableView];
                break;

            case CWUBCellType_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight:
                view = [self func_CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight:tableView];
                break;

            case CWUBCellType_ImgCenter:
                view = [self func_CWUBCell_ImgCenter:tableView];
                break;

            case CWUBCellType_ImgLeft_TitleRightThree:
                view = [self func_CWUBCell_ImgLeft_TitleRightThree:tableView];
                break;

            case CWUBCellType_TitleLeft_TitleRight:
                view = [self func_CWUBCell_TitleLeft_TitleRight:tableView];
                break;

            case CWUBCellType_TitleLeftTwo_ImgCenter_TitleRightTwo:
                view = [self func_CWUBCell_TitleLeftTwo_ImgCenter_TitleRightTwo:tableView];
                break;

            case CWUBCellType_WebImgStretch:
                view = [self func_CWUBCell_WebImgStretch:tableView];
                break;

            case CWUBCellType_ImgLeft_TitleRightTopTwo_TitleRightBottom:
                view = [self func_CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom:tableView];
                break;

            case CWUBCellType_ImgTop_TitleCenter_TitleTitleImgBottom:
                view = [self func_CWUBCell_ImgTop_TitleCenter_TitleTitleImgBottom:tableView];
                break;

            case CWUBCellType_Company_One:
                view = [self func_CWUBCell_Company_One:tableView];
                break;

            case CWUBCellType_MyFollow_MyBusiness:
                view = [self func_CWUBCell_MyFollow_MyBusiness:tableView];
                break;

            case CWUBCellType_ImgCenter_TitleCenter:
                view = [self func_CWUBCell_ImgCenter_TitleCenter:tableView];
                break;

            case CWUBCellType_TitleLeft_CollectionRight_ImgRight:
                view = [self func_CWUBCell_TitleLeft_CollectionRight_ImgRight:tableView];
                break;

            case CWUBCellType_SevenImg:
                view = [self func_CWUBCell_SevenImg:tableView];
                break;

            case CWUBCellType_TitleLeft_InputRight_TitleRightBottom:
                view = [self func_CWUBCell_TitleLeft_InputRight_TitleRightBottom:tableView];
                break;

            case CWUBCellType_TitleLeft_InputRight_TitleRightBottom_ImgRight:
                view = [self func_CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRight:tableView];
                break;

            case CWUBCellType_TitleLeft_TextViewRight_TitleRightBottom:
                view = [self func_CWUBCell_TitleLeft_TextViewRight_TitleRightBottom:tableView];
                break;

            case CWUBCellType_TitleTop_TitleBottom:
                view = [self func_CWUBCell_TitleTop_TitleBottom:tableView];
                break;

            case CWUBCellType_ImgBack_TitleFront:
                view = [self func_CWUBCell_ImgBack_TitleFront:tableView];
                break;

            case CWUBCellType_SelectSex_Style1:
                view = [self func_CWUBCell_SelectSex_Style1:tableView];
                break;

            case CWUBCellType_CollectionTop_TitleBottom:
                view = [self func_CWUBCell_CollectionTop_TitleBottom:tableView];
                break;

            case CWUBCellType_ImgLeft_TitleTopLeft_TitleTopRight_TitleBottom:
                view = [self func_CWUBCell_ImgLeft_TitleTopLeft_TitleTopRight_TitleBottom:tableView];
                break;

            case CWUBCellType_Carousel:
                view = [self func_CWUBCell_Carousel:tableView];
                break;

            case CWUBCellType_Order_One:
                view = [self func_CWUBCell_Order_One:tableView];
                break;

            case CWUBCellType_Server_One:
                view = [self func_CWUBCell_Server_One:tableView];
                break;

            case CWUBCellType_Server_Two:
                view = [self func_CWUBCell_Server_Two:tableView];
                break;

            case CWUBCellType_Carousel_One:
                view = [self func_CWUBCell_Carousel_One:tableView];
                break;

            case CWUBCellType_HorizontalScroll_TitleTop_TitleBottom_ImgRight:
                view = [self func_CWUBCell_HorizontalScroll_TitleTop_TitleBottom_ImgRight:tableView];
                break;

            case CWUBCellType_Order_Two:
                view = [self func_CWUBCell_Order_Two:tableView];
                break;

            case CWUBCellType_UploadImgWithTitle_S1:
                view = [self func_CWUBCell_UploadImgWithTitle_S1:tableView];
                break;

            case CWUBCellType_Person_S1:
                view = [self func_CWUBCell_Person_S1:tableView];
                break;

            case CWUBCellType_Publish_Collection:
                view = [self func_CWUBCell_Publish_Collection:tableView];
                break;

            case CWUBCellType_TitleLeft_InputRight_TitleRightBottom_CodeRight:
                view = [self func_CWUBCell_TitleLeft_InputRight_TitleRightBottom_CodeRight:tableView];
                break;

            case CWUBCellType_InputLeft_CodeRight:
                view = [self func_CWUBCell_InputLeft_CodeRight:tableView];
                break;

            case CWUBCellType_TitleTopLeft_TitleBottomLeft_TitleBottomFollow:
                view = [self func_CWUBCell_TitleTopLeft_TitleBottomLeft_TitleBottomFollow:tableView];
                break;


            default:
                break;
        }
    }

    return view;

}

- (CWUBCell_TitleLeft_InfoRight*) func_CWUBCell_TitleLeft_InfoRight:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_TitleILeft_InfoRight";
    CWUBCell_TitleLeft_InfoRight *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_TitleLeft_InfoRight alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_TitleLeft_InfoLeft*) func_CWUBCell_TitleLeft_InfoLeft:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_TitleLeft_InfoLeft";
    CWUBCell_TitleLeft_InfoLeft *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_TitleLeft_InfoLeft alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_TitleRight_ButtonRight*) func_CWUBCell_TitleRight_ButtonRight:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_TitleRight_ButtonRight";
    CWUBCell_TitleRight_ButtonRight *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_TitleRight_ButtonRight alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_Trip*) func_CWUBCell_Trip:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_Trip";
    CWUBCell_Trip *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_Trip alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_TitleLeft_InfoRight_ButtonRight*) func_CWUBCell_TitleLeft_InfoRight_ButtonRight:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_TitleLeft_InfoRight_ButtonRight";
    CWUBCell_TitleLeft_InfoRight_ButtonRight *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_TitleLeft_InfoRight_ButtonRight alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_ButtonLeft_TitleLeft*) func_CWUBCell_ButtonLeft_TitleLeft:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_ButtonLeft_TitleLeft";
    CWUBCell_ButtonLeft_TitleLeft *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_ButtonLeft_TitleLeft alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_Passenger*) func_CWUBCell_Passenger:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_Passenger";
    CWUBCell_Passenger *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_Passenger alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_Passenger_Delete*) func_CWUBCell_Passenger_Delete:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_Passenger_Delete";
    CWUBCell_Passenger_Delete *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_Passenger_Delete alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_Passenger_Opt*) func_CWUBCell_Passenger_Opt:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_Passenger_Opt";
    CWUBCell_Passenger_Opt *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_Passenger_Opt alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_TitleLeft_InfoLeft_ButtonRight*) func_CWUBCell_TitleLeft_InfoLeft_ButtonRight:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_TitleLeft_InfoLeft_ButtonRight";
    CWUBCell_TitleLeft_InfoLeft_ButtonRight *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_TitleLeft_InfoLeft_ButtonRight alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_Address*) func_CWUBCell_Address:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_Address";
    CWUBCell_Address *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_Address alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_TitleLeft_InputLeft*) func_CWUBCell_TitleLeft_InputLeft:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_TitleLeft_InputLeft";
    CWUBCell_TitleLeft_InputLeft *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_TitleLeft_InputLeft alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_ButtonRight_TitleRight_ButtonRight*) func_CWUBCell_ButtonRight_TitleRight_ButtonRight:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_ButtonRight_TitleRight_ButtonRight";
    CWUBCell_ButtonRight_TitleRight_ButtonRight *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_ButtonRight_TitleRight_ButtonRight alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_Refund*) func_CWUBCell_Refund:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_Refund";
    CWUBCell_Refund *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_Refund alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_ImgLeft_TitleLeft_InfoRight*) func_CWUBCell_ImgLeft_TitleLeft_InfoRight:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_ImgLeft_TitleLeft_InfoRight";
    CWUBCell_ImgLeft_TitleLeft_InfoRight *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_ImgLeft_TitleLeft_InfoRight alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_ButtonRight_SpaceBottom*) func_CWUBCell_ButtonRight_SpaceBottom:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_ButtonRight_SpaceBottom";
    CWUBCell_ButtonRight_SpaceBottom *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_ButtonRight_SpaceBottom alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight*) func_CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight";
    CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_TitleLeft_SwithRight*) func_CWUBCell_TitleLeft_SwithRight:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_TitleLeft_SwithRight";
    CWUBCell_TitleLeft_SwithRight *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_TitleLeft_SwithRight alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_Address_ArrowRight*) func_CWUBCell_Address_ArrowRight:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_Address_ArrowRight";
    CWUBCell_Address_ArrowRight *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_Address_ArrowRight alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_CharterDetail_Opt*) func_CWUBCell_CharterDetail_Opt:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_CharterDetail_Opt";
    CWUBCell_CharterDetail_Opt *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_CharterDetail_Opt alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_IconTitleLeft_InfoBottomLeft_IconTitleRight_InfoBottomRight*) func_CWUBCell_IconTitleLeft_InfoBottomLeft_IconTitleRight_InfoBottomRight:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_IconTitleLeft_InfoBottomLeft_IconTitleRight_InfoBottomRight";
    CWUBCell_IconTitleLeft_InfoBottomLeft_IconTitleRight_InfoBottomRight *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_IconTitleLeft_InfoBottomLeft_IconTitleRight_InfoBottomRight alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_IconTitleLeft_IconTitleRight*) func_CWUBCell_IconTitleLeft_IconTitleRight:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_IconTitleLeft_IconTitleRight";
    CWUBCell_IconTitleLeft_IconTitleRight *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_IconTitleLeft_IconTitleRight alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}


- (CWUBCell_TitleIconLeft_IconCenter_IconTitleRight*) func_CWUBCell_TitleIconLeft_IconCenter_IconTitleRight:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_TitleIconLeft_IconCenter_IconTitleRight";
    CWUBCell_TitleIconLeft_IconCenter_IconTitleRight *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_TitleIconLeft_IconCenter_IconTitleRight alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}


- (CWUBCell_CharterDiscount*) func_CWUBCell_CharterDiscount:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_CharterDiscount";
    CWUBCell_CharterDiscount *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_CharterDiscount alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_TitleCenter*) func_CWUBCell_TitleCenter:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_TitleCenter";
        CWUBCell_TitleCenter *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_TitleCenter alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;
    }else{
        return [[CWUBCell_TitleCenter alloc] initWithModel:self];
    }

}

- (CWUBCell_TitleLeft_ButtonRight*) func_CWUBCell_TitleLeft_ButtonRight:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_TitleLeft_ButtonRight";
        CWUBCell_TitleLeft_ButtonRight *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_TitleLeft_ButtonRight alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_TitleLeft_ButtonRight alloc] initWithModel:self];
    }

}


- (CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight*) func_CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight";
        CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight alloc] initWithModel:self];
    }

}

- (CWUBCell_ImgCenter*) func_CWUBCell_ImgCenter:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_ImgCenter";
        CWUBCell_ImgCenter *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_ImgCenter alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_ImgCenter alloc] initWithModel:self];
    }

}

- (CWUBCell_ImgLeft_TitleRightThree*) func_CWUBCell_ImgLeft_TitleRightThree:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_ImgLeft_TitleRightThree";
        CWUBCell_ImgLeft_TitleRightThree *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_ImgLeft_TitleRightThree alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_ImgLeft_TitleRightThree alloc] initWithModel:self];
    }

}

- (CWUBCell_TitleLeft_TitleRight*) func_CWUBCell_TitleLeft_TitleRight:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_TitleLeft_TitleRight";
        CWUBCell_TitleLeft_TitleRight *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_TitleLeft_TitleRight alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_TitleLeft_TitleRight alloc] initWithModel:self];
    }

}

- (CWUBCell_TitleLeftTwo_ImgCenter_TitleRightTwo*) func_CWUBCell_TitleLeftTwo_ImgCenter_TitleRightTwo:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_TitleLeftTwo_ImgCenter_TitleRightTwo";
        CWUBCell_TitleLeftTwo_ImgCenter_TitleRightTwo *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_TitleLeftTwo_ImgCenter_TitleRightTwo alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_TitleLeftTwo_ImgCenter_TitleRightTwo alloc] initWithModel:self];
    }

}

- (CWUBCell_WebImgStretch*) func_CWUBCell_WebImgStretch:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_WebImgStretch";
        CWUBCell_WebImgStretch *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_WebImgStretch alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_WebImgStretch alloc] initWithModel:self];
    }

}

- (CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom*) func_CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom";
        CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom alloc] initWithModel:self];
    }

}

- (CWUBCell_ImgTop_TitleCenter_TitleTitleImgBottom*) func_CWUBCell_ImgTop_TitleCenter_TitleTitleImgBottom:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_ImgTop_TitleCenter_TitleTitleImgBottom";
        CWUBCell_ImgTop_TitleCenter_TitleTitleImgBottom *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_ImgTop_TitleCenter_TitleTitleImgBottom alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_ImgTop_TitleCenter_TitleTitleImgBottom alloc] initWithModel:self];
    }

}

- (CWUBCell_Company_One*) func_CWUBCell_Company_One:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_Company_One";
        CWUBCell_Company_One *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_Company_One alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_Company_One alloc] initWithModel:self];
    }

}

- (CWUBCell_MyFollow_MyBusiness*) func_CWUBCell_MyFollow_MyBusiness:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_MyFollow_MyBusiness";
        CWUBCell_MyFollow_MyBusiness *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_MyFollow_MyBusiness alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_MyFollow_MyBusiness alloc] initWithModel:self];
    }

}

- (CWUBCell_ImgCenter_TitleCenter*) func_CWUBCell_ImgCenter_TitleCenter:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_ImgCenter_TitleCenter";
        CWUBCell_ImgCenter_TitleCenter *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_ImgCenter_TitleCenter alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_ImgCenter_TitleCenter alloc] initWithModel:self];
    }

}

- (CWUBCell_TitleLeft_CollectionRight_ImgRight*) func_CWUBCell_TitleLeft_CollectionRight_ImgRight:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_TitleLeft_CollectionRight_ImgRight";
        CWUBCell_TitleLeft_CollectionRight_ImgRight *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_TitleLeft_CollectionRight_ImgRight alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_TitleLeft_CollectionRight_ImgRight alloc] initWithModel:self];
    }

}

- (CWUBCell_SevenImg*) func_CWUBCell_SevenImg:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_SevenImg";
        CWUBCell_SevenImg *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_SevenImg alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_SevenImg alloc] initWithModel:self];
    }

}

- (CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRight*) func_CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRight:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRight";
        CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRight *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRight alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRight alloc] initWithModel:self];
    }

}

- (CWUBCell_TitleLeft_InputRight_TitleRightBottom*) func_CWUBCell_TitleLeft_InputRight_TitleRightBottom:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_TitleLeft_InputRight_TitleRightBottom";
        CWUBCell_TitleLeft_InputRight_TitleRightBottom *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_TitleLeft_InputRight_TitleRightBottom alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_TitleLeft_InputRight_TitleRightBottom alloc] initWithModel:self];
    }

}

- (CWUBCell_TitleLeft_TextViewRight_TitleRightBottom*) func_CWUBCell_TitleLeft_TextViewRight_TitleRightBottom:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_TitleLeft_TextViewRight_TitleRightBottom";
        CWUBCell_TitleLeft_TextViewRight_TitleRightBottom *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_TitleLeft_TextViewRight_TitleRightBottom alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_TitleLeft_TextViewRight_TitleRightBottom alloc] initWithModel:self];
    }

}

- (CWUBCell_TitleTop_TitleBottom*) func_CWUBCell_TitleTop_TitleBottom:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_TitleTop_TitleBottom";
        CWUBCell_TitleTop_TitleBottom *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_TitleTop_TitleBottom alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_TitleTop_TitleBottom alloc] initWithModel:self];
    }

}

- (CWUBCell_ImgBack_TitleFront*) func_CWUBCell_ImgBack_TitleFront:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_ImgBack_TitleFront";
        CWUBCell_ImgBack_TitleFront *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_ImgBack_TitleFront alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_ImgBack_TitleFront alloc] initWithModel:self];
    }

}

- (CWUBCell_SelectSex_Style1*) func_CWUBCell_SelectSex_Style1:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_SelectSex_Style1";
        CWUBCell_SelectSex_Style1 *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_SelectSex_Style1 alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_SelectSex_Style1 alloc] initWithModel:self];
    }

}

- (CWUBCell_CollectionTop_TitleBottom*) func_CWUBCell_CollectionTop_TitleBottom:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_CollectionTop_TitleBottom";
        CWUBCell_CollectionTop_TitleBottom *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_CollectionTop_TitleBottom alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_CollectionTop_TitleBottom alloc] initWithModel:self];
    }

}

- (CWUBCell_ImgLeft_TitleTopLeft_TitleTopRight_TitleBottom*) func_CWUBCell_ImgLeft_TitleTopLeft_TitleTopRight_TitleBottom:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_ImgLeft_TitleTopLeft_TitleTopRight_TitleBottom";
        CWUBCell_ImgLeft_TitleTopLeft_TitleTopRight_TitleBottom *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_ImgLeft_TitleTopLeft_TitleTopRight_TitleBottom alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_ImgLeft_TitleTopLeft_TitleTopRight_TitleBottom alloc] initWithModel:self];
    }

}

- (CWUBCell_Carousel*) func_CWUBCell_Carousel:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_Carousel";
        CWUBCell_Carousel *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_Carousel alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_Carousel alloc] initWithModel:self];
    }

}

- (CWUBCell_Order_One*) func_CWUBCell_Order_One:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_Order_One";
        CWUBCell_Order_One *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_Order_One alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_Order_One alloc] initWithModel:self];
    }

}

- (CWUBCell_Server_One*) func_CWUBCell_Server_One:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_Server_One";
        CWUBCell_Server_One *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_Server_One alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_Server_One alloc] initWithModel:self];
    }

}

- (CWUBCell_Server_Two*) func_CWUBCell_Server_Two:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_Server_Two";
        CWUBCell_Server_Two *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_Server_Two alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_Server_Two alloc] initWithModel:self];
    }

}

- (CWUBCell_Carousel_One*) func_CWUBCell_Carousel_One:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_Carousel_One";
        CWUBCell_Carousel_One *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_Carousel_One alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_Carousel_One alloc] initWithModel:self];
    }

}

- (CWUBCell_HorizontalScroll_TitleTop_TitleBottom_ImgRight*) func_CWUBCell_HorizontalScroll_TitleTop_TitleBottom_ImgRight:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_HorizontalScroll_TitleTop_TitleBottom_ImgRight";
        CWUBCell_HorizontalScroll_TitleTop_TitleBottom_ImgRight *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_HorizontalScroll_TitleTop_TitleBottom_ImgRight alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_HorizontalScroll_TitleTop_TitleBottom_ImgRight alloc] initWithModel:self];
    }

}

- (CWUBCell_Order_Two*) func_CWUBCell_Order_Two:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_Order_Two";
        CWUBCell_Order_Two *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_Order_Two alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_Order_Two alloc] initWithModel:self];
    }

}

- (CWUBCell_UploadImgWithTitle_S1*) func_CWUBCell_UploadImgWithTitle_S1:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_UploadImgWithTitle_S1";
        CWUBCell_UploadImgWithTitle_S1 *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_UploadImgWithTitle_S1 alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_UploadImgWithTitle_S1 alloc] initWithModel:self];
    }

}

- (CWUBCell_Person_S1*) func_CWUBCell_Person_S1:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_Person_S1";
        CWUBCell_Person_S1 *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_Person_S1 alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_Person_S1 alloc] initWithModel:self];
    }

}

- (CWUBCell_Publish_Collection*) func_CWUBCell_Publish_Collection:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_Publish_Collection";
        CWUBCell_Publish_Collection *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_Publish_Collection alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_Publish_Collection alloc] initWithModel:self];
    }

}

- (CWUBCell_TitleLeft_InputRight_TitleRightBottom_CodeRight*) func_CWUBCell_TitleLeft_InputRight_TitleRightBottom_CodeRight:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_TitleLeft_InputRight_TitleRightBottom_CodeRight";
        CWUBCell_TitleLeft_InputRight_TitleRightBottom_CodeRight *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_TitleLeft_InputRight_TitleRightBottom_CodeRight alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_TitleLeft_InputRight_TitleRightBottom_CodeRight alloc] initWithModel:self];
    }

}

- (CWUBCell_InputLeft_CodeRight*) func_CWUBCell_InputLeft_CodeRight:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_InputLeft_CodeRight";
        CWUBCell_InputLeft_CodeRight *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_InputLeft_CodeRight alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_InputLeft_CodeRight alloc] initWithModel:self];
    }

}

- (CWUBCell_TitleTopLeft_TitleBottomLeft_TitleBottomFollow*) func_CWUBCell_TitleTopLeft_TitleBottomLeft_TitleBottomFollow:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_InputLeft_CodeRight";
        CWUBCell_TitleTopLeft_TitleBottomLeft_TitleBottomFollow *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_TitleTopLeft_TitleBottomLeft_TitleBottomFollow alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_TitleTopLeft_TitleBottomLeft_TitleBottomFollow alloc] initWithModel:self];
    }

}

#pragma mark - 参数设置

- (UIColor*)m_color_backGround{

    if (!_m_color_backGround) {
        _m_color_backGround = [UIColor clearColor];
    }

    return _m_color_backGround;
}

- (CWUBBottomLineInfo*)m_bottomLineInfo{

    if (!_m_bottomLineInfo) {
        _m_bottomLineInfo = [CWUBBottomLineInfo new];
    }

    return _m_bottomLineInfo;
}

#pragma mark - 测试数据

/**
 * 测试数据
 */
+ (CWUBModelBase*)tester_data{

    return [CWUBModelBase new];
}

/**
 * 测试数据 简化声明
 */
+ (CWUBModelBase*)tester_dataWithArray:(NSMutableArray*)data{

    return [CWUBModelBase new];
}
@end
