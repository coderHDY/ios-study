import UIKit
import CoreGraphics

protocol T
{
    associatedtype T
    func test(p: T)
}
    
class Test: T
{
    func test(p: String)
    {
        print(p);
    }
}

let t = Test()
t.test(p: "你好"); // 你好
