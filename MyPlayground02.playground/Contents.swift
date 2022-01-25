import UIKit
import Darwin
import Foundation
/*
 複数行コメントの記述例
 クラス名：IE3A
 氏名：長瀬愛花
 */
//以降独自のコメントを詳しく入れて下さい（コメント配点20点/100点満点）

//単一コメント：行末にセミコロン不要
var str = "Hello, playground"

//算術演算子 +,-,*,/,%
1+1
8-3
99*99
356/16
100%3

//変数は、varをつけて定義する
var score = 100
score = 200
score = 100 + 200
score = score * 2

//定数let に値を入れようとすると、Cannnot assign to value と警告が出ることを確認する
let heisei = 30
//heisei = 31 Cannot assign to value: 'heisei' is a 'let' constant

//整数型Int ※変数名:データ型 で型を明示できる
var itemCount:Int = 10
itemCount = itemCount + 20

//小数型 Double, Float
let height:Float = 1.70
let weight:Float = 64.5
let BMI:Float = weight / (height * height)

//ブール型 Bool
var isOK:Bool = false
isOK = true

//バックスラッシュは、[option]キー+¥キー を同時に押すと表示される
//文字列型 String
let helloString1 = "皆さん"
let helloString2 = helloString1 + "こんにちは"   //文字連結
let myStr = "私の体重は\(weight)kgです。"   //変数値の埋め込み

//型変換 ※型が異なる値の演算はエラーとなる
let intValue = Int(123.45)
let dollar:Double = 250
let price:Int = 100
let pay = Float(price) * 1.08
let myApple:String = "リンゴは" + String(price) + "円です。"

let priceString = "100"
let sum = Int(priceString)! * 5

//条件分岐 if文の例
var point = 100
if 85 < point {
    print("Great!")
}else if 65 < point {
    print("Good!")
}else{
    print("Bad!")
}

//↓ここに独自の条件分岐 if文を書く
var helloValue = 10
if 11 <= helloValue && helloValue < 17{
    print("こんにちは")
}else if 17 <= helloValue && helloValue <= 24 || helloValue < 5 {
    print("こんばんは")
}else if 5 <= helloValue && helloValue < 11{
    print("おはよう")
}else{
    print("今何時？")
}

//条件分岐 switch文の例
var dice = 1
switch dice {
case 1:
    print("振り出しに戻る")
case 2, 5:
    print("もう一度振る")
default:
    print("出た目の数だけ進む")
}

//↓ここに独自の条件分岐 switch文を書く
var swiValue = 3
switch swiValue {
case 0:
    print("0")
case 1:
    print("自然数")
case 2, 3, 5, 7:
    print("素数")
case 4, 8, 9:
    print("合成数")
default:
    print("10以上 もしくは 0未満")
}

//繰り返し while文の例
var d = 0
while(d < 100) {
    d += 7
}
print("答えは、\(d)")

//↓ここに独自の繰り返し while文を書く
var whileValue = 1
while(whileValue < 4) {
    print("こん〜")
    whileValue += 1
}

//繰り返し for文 <開始値>から<終了値>まで
for i in 0...3 {
    print(i)
}
//変数名を使わない場合
for _ in 0...3 {
    print("A")
}

//ここに独自の繰り返し for文を書く
for forValue in 0...4 {
    print("202\(forValue)")
}

//配列の初期化 データ型を指定しない方法
var intArray1 = [1, 2, 3]
var strArray1 = ["A", "B", "C"]
print(strArray1[0])  //最初の要素番号は0
var cnt = strArray1.count   //count は、配列の要素数を調べるプロパティ

//配列の初期化 データ型を指定する方法
var intArray2:[Int] = [1, 2, 3]
var strArray2:[String] = ["A", "B", "C"]

//配列の初期化 空の配列を定義する方法（データ型が必須）
var intArray3:[Int] = []
var strArray3 = [String]()

//配列の初期化 繰り返す値と個数を指定する方法
var intArray4 = Array(repeating:0, count:3) //0が3個
var strArray4 = Array(repeating:"A", count:3) //0が3個

for val in strArray4 {  //配列の要素をすべて表示する
    print("要素=\(val)")
}

strArray4.append("B")   //配列の最後に要素を追加する
print(strArray4)

strArray4.insert("C", at: 1)    //指定位置（例：２番目）の位置に要素を追加する
print(strArray4)

strArray4.remove(at: 4) //指定位置（例：５番目）の位置の要素を削除する
print(strArray4)

strArray4.removeAll()   //配列の要素をすべて削除する
print(strArray4)

var intArray5 = [4, 3, 1, 5, 2]
var intArray6 = intArray5.sorted()  //昇順にソートするメソッド
print(intArray6)

var intArray7 = intArray5.sorted(by: {$0 > $1}) //降順にソートする
print(intArray7)

//辞書データ（Dictionary） キー名と値の組みを持つデータ形式
var intDic1 = ["a":1, "b":2, "c":3]
var strDic1 = ["a":"い", "b":"ろ", "c":"は"]
var emptyDict1:[String:Int] = [:]   //空の辞書データの定義方法1
var emptyDict2 = [String:Int]() //空の辞書データの定義方法2

print(strDic1)  //辞書データは順番に並んでいるわけではない
print(strDic1["b"]!)    //! は、オプショナル型（nil許容型）の指定
print(strDic1.count) //count は、辞書のデータの要素数を調べるプロパティ

for(key, value) in strDic1 {    //辞書データのすべての要素を表示する例
    print("strDic1[\(key)]\(value)")
}

strDic1["d"] = "に"  //辞書データに要素を追加する
strDic1.removeValue(forKey: "d")    //辞書データの要素を削除する
print(strDic1)  //辞書データは順番に並んでいるわけではない

/*  タプル
 異なるデータが他の複数のデータを受け渡すことができる
 関数の戻り値をタプルで複数返すことができる
 */
let tuple1 = (1, 2, 3)
let tuple2 = (1000, "こんにちは")
print(tuple2.0) //タプル要素データの呼び出しには添字を使う
print(tuple2.1)

let(no, msg) = tuple2   //それぞれの変数にタプル要素データを取り出すことができる
print(no)
print(msg)

let tuple3 = (no:2000, msg:"さようなら") //タプル要素に名前をつけることができる
print(tuple3.no)
print(tuple3.msg)


//関数 func で定義する
func showHello1(){
    print("こんにちは")
}
showHello1()

func calcBMI(cm:Float, kg:Float){   //名前付き引数のある関数例
    let m = cm / 100.0
    let BMI = kg / ( m * m )
    print("BMI=\(BMI)")
}
calcBMI(cm:170.0, kg:70.0)

func returnHello(name:String) -> String{    //戻り値のある関数例
    let msg = "\(name)さんこんにちは"
    return msg
}
let hello = returnHello(name: "山田太郎")

func calcTax(price:Double) -> (Double, Double){ //複数の戻り値がある関数にタプルを使う例
    let tax = price * 0.08
    let taxprice = price * 1.08
    return (tax, taxprice)
}
let(tax, taxprice) = calcTax(price: 1000)
print(tax)
print(taxprice)

//↓ここに独自の関数を書く（複数の戻り値があり、タプルを使う例）
func calcDps(dps:Double, element:Double, fd:Double) -> (Double, Double){
    let stagedps = dps * element
    let fddps = dps * element * fd
    return (stagedps, fddps)
}
let(stagedps, fddps) = calcDps(dps: 2700000, element: 156.5, fd: 103.0)
print("込火力：\(stagedps)")
print("FD込火力\(fddps)")

//sin 関数グラフの表示
for x in 0...255 {
    let t = Double(x) * sin(Double(x) * Double.pi/16)
    print(t)
}

//ラベルやボタンを表示する
var myLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 300, height: 32))
myLabel.backgroundColor = UIColor.cyan
myLabel.text = "こんにちは長瀬愛花さん"    //ここには自分の名前を入れる
myLabel.font = UIFont.systemFont(ofSize: 20)
myLabel.textColor = UIColor.red

//変数に nil（一般的な言語の null に相当）を入れるとエラーが出ることを確認する。
var testInt1:Int = 100
//testInt1 = nil

//Optional型（一般的な言語の null許容型 に相当）の変数を作るとき
//var testInt2:Int = nil
var testInt2:Int? = nil
//nil が入るかも？という意味の?をつける

//Optional型の変数の使用例
var testInt3:Int = 10
//var testInt4:Int? = testInt3
var testInt5:Int? = 10
var testInt6:Int? = testInt5

//Optional型の変数から値を取り出す例
var testInt7:Int? = 10
//var answer7 = testInt7 + 20

//Optional型の変数をアンラップして取り出す例
var testInt8:Int? = 10
var answer8 = testInt8! + 20

//暗黙的なアンラップ型の変数に入れて使う例
var testInt9:Int? = 10
var testInt10:Int! = testInt9
var answer9 = testInt10 + 20

//if let によるオプショナルバインディングの記述例1
var testInt11:Int? = 10
if let temp = testInt11 {
    print(temp)
}

//Optional Bindingの記述例2
var ansInt:Int = 0
var opInt:Int? = nil

//Optional Bindingの記述例3
if let tmpInt = opInt {
    ansInt = opInt!
    print(tmpInt)
}else{
    ansInt = -1
}

//??演算子でOptional Binding記述を簡略化できる
var opInt2:Int? = nil
var ansInt2:Int = opInt2 ?? -1

//classの使用例
class calcPrice {
    var price:Double = 0
    
    func getTax() -> Double {
        return price * 0.08
    }
    func getIncludingTax() -> Double {
        return price * 1.08
    }
}
let apple = calcPrice()
apple.price = 300

print("消費税額は\(apple.getTax())")
print("税込価格は\(apple.getIncludingTax())")

//↓ここに独自のclassの使用例を書く
class calcdpsclass {
    var dps:Double = 0
    var element:Double = 0
    var fd:Double = 0
    
    func stagedps() -> Double {
        return dps * element
    }
    func fddps() -> Double {
        return dps * element * fd
    }
}
let banana = calcdpsclass()
banana.dps = 2800000
banana.element = 165.0
banana.fd = 108.0

print("込火力：\(banana.stagedps())")
print("FD込火力\(banana.fddps())")


//関数の外部名と、引数のデフォルト値の使用例
func say(message msg:String, person p:String, prefix:String = "さん") -> String {
    return msg + "、" + p + prefix
}
say(message: "こんにちは", person: "田中")
say(message: "おはよう", person: "佐藤", prefix: "くん")

//↓ここに独自の関数の外部名と、引数のデフォルト値の使用例を書く
func school(name s:String, msg:String = "大学",cource c:String) -> String{
    return s + msg + "の" + c + "学科です"
}
school(name: "ECCコンピュータ", msg: "専門学校", cource: "高度情報処理専門")
school(name: "甲南", cource: "文学部人間科")

//可変長引数の使用例
func sum(num:Int...) -> Int {
    var sum = 0
    for n in num{
        sum = sum + n
    }
    return sum
}
sum(num:1, 2, 3)
sum(num:1, 2, 3, 4, 5)

//↓ここに独自の可変長引数の使用例を書く
func calcsome(num:Double...) -> Double {
    var calcsome:Double = 0
    for n in num {
        calcsome += n * 1.08
    }
    return calcsome
}
calcsome(num:1000, 2000)
calcsome(num:100, 500)

//クラス、構造体、列挙型の使用例
//クラス
class Store{
    //プロパティ
    var location:Location
    var kind:Kind
    //イニシャライザ
    init(位置 location:Location, 種類 kind:Kind){
        self.location = location
        self.kind = kind
    }
}

//構造体
struct Location{
    var latitude:Float
    var longitude:Float
}

//列挙型
enum Kind{
    case コンビニ
    case ステーショナリ
    case ドラッグストア
}

var loc:Location = Location(latitude: 138.0, longitude: 35.0)
var myStore:Store = Store(位置: loc, 種類: Kind.ドラッグストア)

//↓ここに独自のクラス、構造体、列挙型の使用例を書く

//クラス
class Gaming{
    var cls:Cls
    var job:Job
    
    init(クラス cls:Cls, ジョブ job:Job){
        self.cls = cls
        self.job = job
    }
}

//構造体
struct Cls{
    var gameitude:String
    var classitude:String
}

//列挙型
enum Job{
    case 聖
    case 薬
    case 白
}

var cls:Cls = Cls(gameitude: "FF14", classitude: "ヒーラー")
var myClass:Gaming = Gaming(クラス: cls, ジョブ: Job.白)
