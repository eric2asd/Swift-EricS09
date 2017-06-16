//
//  MyEric.swift
//  EricS09
//
//  Created by 陳信毅 on 2017/6/16.
//  Copyright © 2017年 陳信毅. All rights reserved.
//

import Foundation

class Eric01{
    var x = 10  //物件屬性
}
class Eric02 {
    static var x1 = 12 //類別的屬性
    static var x2:Int?
    static var x3:Int{
        return x1 * 100
    }
    var x4 = 123
    var x1 = 321
    init(){
        print(x4)
        print(Eric02.x1)
        print(x1)
    }
}
class Eric03{
    var x = 100
    static var y = 200
    func f1(){
        x += 1
        Eric03.f2()
        print("Eric03:f1()")
    }
    static func f1(){
        print("Eric03:static:f1()")
    }
    static func f2(){
        //x += 1
        y += 1
        f1()
    }
}

class Bike{
    var speed = 0
    private static var count = 0
    init(){
        Bike.count += 1
    }
    static func countBikes(){
        print(count)
    }
}
//-------------------
class Super1 {
    init() {
        
        print("Super:init()")
        
    }
}
class Sub11: Super1 {
    //沒有定義任何init,呼叫Super1.init
}
class Sub12: Super1 {
    override init(){
        print("Sub12:init()")
    }
}
class Sub13: Super1 {
    init(_ : Int) {}
}
//----------------------
class Super2{
    init(){print("Super2:init()")}
    init(_ :Int){print("Super2:init(Int)")}
    init(_ :Double){print("Super2:init(Double)")}

}
class Sub21: Super2 {
}
class Sub22: Super2 {
    override init(){
        super.init()
        print("Sub22:init()")
    }
    override init(_ : Int) {
        super.init()
    }
    init(_ : String){
        super.init()
    }
}
//------------------
class Super3 {
    init(){print("Super3:init()")}
}
class Sub31 : Super3{
    override init(){
        print("doSomething")
    }
    convenience init(_ : Int){
        print("Sub31:init(Int)")
        self.init()
    }
}
class TwID{
    var id:String
    convenience init(){
        self.init(gender: true)
    }
    convenience init(gender:Bool){
        self.init(gender: gender, area: 10)
    }
    convenience init(area:Int){
        self.init(gender: true, area: area)
    }
    init(gender:Bool,area:Int){
        self.id = "A123456789"
    }
    init?(_ id:String){
        let a = Int(arc4random_uniform(2))
        if a == 0 {
            return nil
        }else{
        self.id = id
        }
    }
}
//-----------------------
class Super4 {
    init(){print("Super4:init()")}
    required init(x:Int){print("Super4:init(Int)")}
}
class Sub41: Super4 {
    init(x:Double){
        super.init()
    }
    required init(x:Int){
        super.init(x: x)
    }
}
class Sub42: Super4{
    
}
class Sub411 : Sub41{
    init(){
        super.init(x: 2.0)
    }
    required init(x:Int){
        super.init(x: 2)
    }
}
