//
//  TestProtocol.h
//  iphoneCom
//
//  Created by gaoyuan on 2018/7/13.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TestProtocol <NSObject>

- (void)protocolTest;

@end


@protocol TestProtocol2 <TestProtocol>

- (void)protocolTest2;

@end
