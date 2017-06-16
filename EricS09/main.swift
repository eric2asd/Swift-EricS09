//
//  main.swift
//  EricS09
//
//  Created by 陳信毅 on 2017/6/16.
//  Copyright © 2017年 陳信毅. All rights reserved.
//

import Foundation

var obj1 = Eric01()
print(obj1.x)

print(Eric02.x1)
var obj2 = Eric02()

Eric03.f2()
Bike.countBikes()
var bike1 = Bike()
Bike.countBikes()
var bike2 = Bike()
Bike.countBikes()

var obj3 = Super1()
var obj4 = Sub11()
var obj5 = Sub12()
var obj6 = Sub13(1)
print("------")
var obj7 = Sub21()
var obj8 = Sub22()
print("------")
var obj9 = Sub31(1)
var obja = Sub41(x:2)
var objb = Sub41(x:2)
var objc = Sub42()
var objd = Sub42(x:1)
var myid = TwID("A123456789")
if myid == nil{
    print("xx")
}else{
    print("OK")
}





