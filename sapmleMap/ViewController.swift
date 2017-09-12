//
//  ViewController.swift
//  sapmleMap
//
//  Created by 加藤諒 on 2017/09/12.
//  Copyright © 2017年 mirai. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

  //Mapはつけたらすぐにエラーが出る。インポートをすることによって、エラーがなくなる。
 
  @IBOutlet weak var myTapView: MKMapView!
  override func viewDidLoad() {
    
    //アヤラモールを中心とした地図を表示
    //アヤラを中心とした座標を作成
    
    
    //1.中心となる場所の座標オブジェクトを作成
    let coodinate = CLLocationCoordinate2DMake(10.317347,123.905759)
    
    let maze = CLLocationCoordinate2DMake(10.295987, 123.898502)
    
    let abcde = CLLocationCoordinate2DMake(10.311801, 123.895862)
    
    //2.縮尺を決定
    let span = MKCoordinateSpanMake(0.1,0.1)
    
    //3.範囲オブジェクトを作成
    let region = MKCoordinateRegionMake(coodinate, span)
    
    //4.MapViewに範囲オブジェクトを設定
    myTapView.setRegion(region, animated: true)
    
    //アヤラにピンを立てる
    //pinオブジェクトを作成
    let myPin = MKPointAnnotation()
    let myMyPin = MKPointAnnotation()
    let myMyMyPin = MKPointAnnotation()
 
    //pinの座標を設定
    //①書き方
    //let coodinate = CLLocationCoordinate2DMake(10.317347,123.905759)
    //②書き方
    myPin.coordinate = coodinate
    myMyPin.coordinate = maze
    myMyMyPin.coordinate = abcde
    
    
    //タイトル、サブタイトルを設定（吹き出し）
    myPin.title = "アヤラ"
    myPin.subtitle = "おすすめ"
    
    
    myMyPin.title = "マゼランクロス"
    myMyPin.subtitle = "スペイン植民地時代の名残が残っている"
    
    
    myMyMyPin.title = "出入禁止区域"
    
    //mapViewにPinを追加する
    myTapView.addAnnotation(myPin)
    myTapView.addAnnotation(myMyPin)
    myTapView.addAnnotation(myMyMyPin)
    
    
    super.viewDidLoad()
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    }

}

