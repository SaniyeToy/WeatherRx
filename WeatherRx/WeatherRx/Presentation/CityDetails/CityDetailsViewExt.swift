//
//  CityDetailsViewExt.swift
//  WeatherRx
//
//  Created by MacOS on 1.03.2022.
//


import Foundation
import UIKit
extension CityDetailsView {
    
    func setUpCityDetailsContentView()  {
        view.backgroundColor = UIColor(rgb: 0xF5F5F5)
        addSubview(cityDetailsContentView)
        if #available(iOS 11.0, *) {
        cityDetailsContentView.setTop(equalTo: safeAreaLayoutGuide.topAnchor)
        }
        cityDetailsContentView.setLeft(equalTo: leftAnchor)
        cityDetailsContentView.setRight(equalTo: rightAnchor)
        cityDetailsContentView.setBottom(equalTo: bottomAnchor)
        
        setUpDetailsToolBarView()
        setCollectionView()        
    }
    
    func setUpDetailsToolBarView() {
        cityDetailsContentView.addSubview(toolBarView)
        toolBarView.setTop(equalTo: cityDetailsContentView.topAnchor)
        toolBarView.setLeft(equalTo: cityDetailsContentView.leftAnchor)
        toolBarView.setRight(equalTo: cityDetailsContentView.rightAnchor)
        setUpDetailsImageView()
        setUpDetailsTitleLabel()
        setUpDetailsTempetureLabel()
        setUpDetailsDateLabel()
        setUpDetailsWeekDayLabel()
        setUpDetailsHumidityImageView()
        setUpDetailsHumidityLabel()
        setUpDetailsWindImageView()
        setUpDetailsWindLabel()
    }

    func setUpDetailsImageView(){
        toolBarView.addSubview(cityDetailsImageView)
        cityDetailsImageView.setTop(equalTo: toolBarView.topAnchor)
        cityDetailsImageView.setLeft(equalTo: toolBarView.leftAnchor)
        cityDetailsImageView.setRight(equalTo: toolBarView.rightAnchor)
        cityDetailsImageView.setBottom(equalTo: toolBarView.bottomAnchor)
    }
    
    func setUpDetailsTitleLabel(){
        toolBarView.addSubview(cityDetailsTitleLabel)
        cityDetailsTitleLabel.setTop(equalTo: toolBarView.topAnchor , constant: 30)
        cityDetailsTitleLabel.setLeft(equalTo: toolBarView.leftAnchor)
        cityDetailsTitleLabel.setRight(equalTo: toolBarView.rightAnchor)
        cityDetailsTitleLabel.setHeight(height: 45)
    
    }
    
    func setUpDetailsTempetureLabel(){
        toolBarView.addSubview(cityDetailsTempetureLabel)
        cityDetailsTempetureLabel.setTop(equalTo: cityDetailsTitleLabel.bottomAnchor , constant: 50)
        cityDetailsTempetureLabel.setLeft(equalTo: toolBarView.leftAnchor)
        cityDetailsTempetureLabel.setRight(equalTo: toolBarView.rightAnchor)
        cityDetailsTempetureLabel.setHeight(height: 50)
    
    }
    
    func setUpDetailsDateLabel(){
        toolBarView.addSubview(cityDetailsDateLabel)
        cityDetailsDateLabel.setTop(equalTo: cityDetailsTempetureLabel.bottomAnchor , constant: 50)
        cityDetailsDateLabel.setLeft(equalTo: toolBarView.leftAnchor)
        cityDetailsDateLabel.setRight(equalTo: toolBarView.rightAnchor)
        cityDetailsDateLabel.setHeight(height: 50)
    
    }
    
    func setUpDetailsWeekDayLabel(){
        toolBarView.addSubview(cityDetailsWeekDayLabel)
        cityDetailsWeekDayLabel.setTop(equalTo: cityDetailsDateLabel.bottomAnchor , constant: 50)
        cityDetailsWeekDayLabel.setLeft(equalTo: toolBarView.leftAnchor)
        cityDetailsWeekDayLabel.setRight(equalTo: toolBarView.rightAnchor)
        cityDetailsWeekDayLabel.setHeight(height: 50)
    
    }
    
    func setUpDetailsHumidityImageView(){
        toolBarView.addSubview(cityDetailsHumidityImageView)
        cityDetailsHumidityImageView.setTop(equalTo: cityDetailsWeekDayLabel.bottomAnchor , constant: 50)
        cityDetailsHumidityImageView.setLeft(equalTo: toolBarView.leftAnchor)
        cityDetailsHumidityImageView.setHeight(height: 50)
        cityDetailsHumidityImageView.setWidth(width: 50)
    }
    
    func setUpDetailsHumidityLabel(){
        toolBarView.addSubview(cityDetailsHumidityLabel)
        cityDetailsHumidityLabel.setTop(equalTo: cityDetailsWeekDayLabel.bottomAnchor , constant: 50)
        cityDetailsHumidityLabel.setLeft(equalTo: cityDetailsHumidityImageView.leftAnchor , constant: 10)
        cityDetailsHumidityLabel.setHeight(height: 50)
    
    }
    
    func setUpDetailsWindImageView(){
        toolBarView.addSubview(cityDetailsWindImageView)
        cityDetailsWindImageView.setTop(equalTo: cityDetailsWeekDayLabel.bottomAnchor , constant: 50)
        cityDetailsWindImageView.setLeft(equalTo: cityDetailsHumidityLabel.rightAnchor , constant: 120)
        cityDetailsWindImageView.setWidth(width: 50)
        cityDetailsWindImageView.setHeight(height: 50)
    }
    
    func setUpDetailsWindLabel(){
        toolBarView.addSubview(cityDetailsWindLabel)
        cityDetailsWindLabel.setTop(equalTo: cityDetailsWeekDayLabel.bottomAnchor , constant: 50)
        cityDetailsWindLabel.setLeft(equalTo: cityDetailsWindImageView.rightAnchor , constant: 10)
        cityDetailsWindLabel.setRight(equalTo: toolBarView.rightAnchor)
        cityDetailsWindLabel.setHeight(height: 50)
    
    }
    
    func setCollectionView()  {
        cityDetailsContentView.addSubview(cityDetailsCollectionView)
        cityDetailsCollectionView.setTop(equalTo: toolBarView.bottomAnchor, constant: 0)
        cityDetailsCollectionView.setLeft(equalTo: cityDetailsContentView.leftAnchor)
        cityDetailsCollectionView.setRight(equalTo: cityDetailsContentView.rightAnchor)
        cityDetailsCollectionView.setBottom(equalTo: cityDetailsContentView.bottomAnchor)
        cityDetailsCollectionView.setHeight(height: 270)
        
    }
}
