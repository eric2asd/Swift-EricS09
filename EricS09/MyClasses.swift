//
//  MyClasses.swift
//  EricS09
//
//  Created by 陳信毅 on 2017/6/16.
//  Copyright © 2017年 陳信毅. All rights reserved.
//

import Foundation

class MyClass01{}
class MyClass02{
    var x:Int
    init(x:Int){self.x = x}
}
class MyClass03{
    var x = 123
    init() {}
}
class MyClass04{
    var x:Int?
}
//---------------------------
class MyClass05 {
    var x: Int{
        //一定要有getter
        get{
            return 1
        }
        //可以不要setter
        set{
            //newValue
        }
    }
}
class MyClass06{
    var y = 123
    var x:Int{
        return y * y
    }
}
//-----------------------------
class MyClass07 {
    var x = 0 {
        willSet{
            //newValue
        }
        didSet{
            
        }
    }
}

