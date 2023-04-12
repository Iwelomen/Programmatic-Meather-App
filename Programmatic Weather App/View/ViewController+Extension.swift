//
//  ViewController+Extension.swift
//  Programmatic Weather App
//
//  Created by GO on 2/23/23.
//

import UIKit

extension ViewController {
    
    func setupSubviews() {
        [scrollView].forEach {view.addSubview($0)}
        
        let items = [mainImage, minTempTitleLabel, minValueLabel, currentTempTitleLabel, currentValueLabel, maxTempTitleLabel, maxValueLabel, divider, firstDayNameLabel, firstDayImgLabel, firstDayTempLabel, secondDayNameLabel, secondDayImgLabel, secondDayTempLabel, thirdDayNameLabel, thirdDayImgLabel, thirdDayTempLabel, fourthDayNameLabel, fourthDayImgabel, fourthDayTempLabel, fifthNameLabel, fifthDayImgLabel, fifthDayTempLabel]
        
        items.forEach {scrollView.addSubview($0)}
//        for item in items {
//            scrollView.addSubview(item)
//        }
        let item2 = [mainTempLabel, mainTempDiscLabel]
        for label in item2 {
            mainImage.addSubview(label)
        }
    }
    
    func setupContraints() {
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            mainImage.topAnchor.constraint(equalTo: scrollView.topAnchor),
            mainImage.trailingAnchor.constraint(equalTo: scrollView.safeAreaLayoutGuide.trailingAnchor),
            mainImage.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            mainImage.heightAnchor.constraint(equalToConstant: 409),
            
            mainTempLabel.topAnchor.constraint(equalTo: mainImage.topAnchor, constant: 200),
            mainTempLabel.centerXAnchor.constraint(equalTo: mainImage.centerXAnchor),
            
            mainTempDiscLabel.topAnchor.constraint(equalTo: mainTempLabel.bottomAnchor, constant: 5),
            mainTempDiscLabel.centerXAnchor.constraint(equalTo: mainImage.centerXAnchor),
            
            minTempTitleLabel.topAnchor.constraint(equalTo: mainImage.bottomAnchor, constant: 10),
            minTempTitleLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 16),
            
            minValueLabel.topAnchor.constraint(equalTo: minTempTitleLabel.bottomAnchor, constant: 10),
            minValueLabel.centerXAnchor.constraint(equalTo: minTempTitleLabel.centerXAnchor),
            
            currentTempTitleLabel.topAnchor.constraint(equalTo: mainImage.bottomAnchor, constant: 10),
            currentTempTitleLabel.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            
            currentValueLabel.topAnchor.constraint(equalTo: currentTempTitleLabel.bottomAnchor, constant: 10),
            currentValueLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            maxTempTitleLabel.topAnchor.constraint(equalTo: mainImage.bottomAnchor, constant: 10),
            maxTempTitleLabel.trailingAnchor.constraint(equalTo: scrollView.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            
            maxValueLabel.topAnchor.constraint(equalTo: maxTempTitleLabel.bottomAnchor, constant: 10),
            maxValueLabel.centerXAnchor.constraint(equalTo: maxTempTitleLabel.centerXAnchor),
            
            divider.topAnchor.constraint(equalTo: currentValueLabel.bottomAnchor, constant: 10),
            divider.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            divider.trailingAnchor.constraint(equalTo: scrollView.safeAreaLayoutGuide.trailingAnchor),
            divider.heightAnchor.constraint(equalToConstant: 1),
            
            
            firstDayNameLabel.topAnchor.constraint(equalTo: divider.bottomAnchor, constant: 20),
            firstDayNameLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 16),
            
            firstDayImgLabel.topAnchor.constraint(equalTo: divider.bottomAnchor, constant: 20),
            firstDayImgLabel.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            firstDayImgLabel.heightAnchor.constraint(equalToConstant: 40),
            firstDayImgLabel.widthAnchor.constraint(equalToConstant: 40),

            firstDayTempLabel.topAnchor.constraint(equalTo: divider.bottomAnchor, constant: 20),
            firstDayTempLabel.centerXAnchor.constraint(equalTo: maxTempTitleLabel.centerXAnchor),
            
            
            
            secondDayNameLabel.topAnchor.constraint(equalTo: firstDayImgLabel.bottomAnchor, constant: 10),
            secondDayNameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
            secondDayImgLabel.topAnchor.constraint(equalTo: firstDayImgLabel.bottomAnchor, constant: 10),
            secondDayImgLabel.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            secondDayImgLabel.heightAnchor.constraint(equalToConstant: 40),
            secondDayImgLabel.widthAnchor.constraint(equalToConstant: 40),

            secondDayTempLabel.topAnchor.constraint(equalTo: firstDayImgLabel.bottomAnchor, constant: 10),
            secondDayTempLabel.centerXAnchor.constraint(equalTo: maxTempTitleLabel.centerXAnchor),
            
            
            thirdDayNameLabel.topAnchor.constraint(equalTo: secondDayImgLabel.bottomAnchor, constant: 10),
            thirdDayNameLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 16),
            
            thirdDayImgLabel.topAnchor.constraint(equalTo: secondDayImgLabel.bottomAnchor, constant: 10),
            thirdDayImgLabel.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            thirdDayImgLabel.heightAnchor.constraint(equalToConstant: 40),
            thirdDayImgLabel.widthAnchor.constraint(equalToConstant: 40),

            thirdDayTempLabel.topAnchor.constraint(equalTo: secondDayImgLabel.bottomAnchor, constant: 10),
            thirdDayTempLabel.centerXAnchor.constraint(equalTo: maxTempTitleLabel.centerXAnchor),
            
            
            fourthDayNameLabel.topAnchor.constraint(equalTo: thirdDayImgLabel.bottomAnchor, constant: 10),
            fourthDayNameLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 16),
            
            fourthDayImgabel.topAnchor.constraint(equalTo: thirdDayImgLabel.bottomAnchor, constant: 10),
            fourthDayImgabel.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            fourthDayImgabel.heightAnchor.constraint(equalToConstant: 40),
            fourthDayImgabel.widthAnchor.constraint(equalToConstant: 40),

            fourthDayTempLabel.topAnchor.constraint(equalTo: thirdDayImgLabel.bottomAnchor, constant: 10),
            fourthDayTempLabel.centerXAnchor.constraint(equalTo: maxTempTitleLabel.centerXAnchor),
            
            
            
            fifthNameLabel.topAnchor.constraint(equalTo: fourthDayImgabel.bottomAnchor, constant: 10),
            fifthNameLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 16),
            
            fifthDayImgLabel.topAnchor.constraint(equalTo: fourthDayImgabel.bottomAnchor, constant: 10),
            fifthDayImgLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            fifthDayImgLabel.heightAnchor.constraint(equalToConstant: 40),
            fifthDayImgLabel.widthAnchor.constraint(equalToConstant: 40),
            fifthDayImgLabel.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),

            fifthDayTempLabel.topAnchor.constraint(equalTo: fourthDayImgabel.bottomAnchor, constant: 10),
            fifthDayTempLabel.centerXAnchor.constraint(equalTo: maxTempTitleLabel.centerXAnchor),
            
            
        ])
    }
    // Date formatting
    private func covertDate(_ date: String?) -> String {
        var fixDate = ""
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        if let originalDate = date {
            if let newDate = dateFormatter.date(from: originalDate) {
                dateFormatter.dateFormat = "EEEE"
                fixDate = dateFormatter.string(from: newDate)
            }
        }
        return fixDate
    }
    
    func fetchCurrentWeatherData(_ data: CurrentWeatherModel) {
        self.currentWeatherModel = data
        minValueLabel.text = "\(Int((currentWeatherModel?.main.tempMin) ?? 0.00))˚"
        maxValueLabel.text = "\(Int((currentWeatherModel?.main.tempMax) ?? 0.00))˚"
        currentValueLabel.text = "\(Int((currentWeatherModel?.main.temp) ?? 0))˚"
        mainTempLabel.text = "\(Int((currentWeatherModel?.main.temp) ?? 0))˚"
        mainTempDiscLabel.text = currentWeatherModel?.weather[0].main
    
        
        if (currentWeatherModel?.weather[0].main == "Clouds") {
            mainImage.image = Styling.cloudy.weatherImage
    
        } else if (currentWeatherModel?.weather[0].main == "Rain") {
            mainImage.image = Styling.rainy.weatherImage
            
        } else if (currentWeatherModel?.weather[0].main == "Clear") {
            mainImage.image = Styling.sunny.weatherImage
        }
    }
    
    
    
    func fetchFiveDaysForcastWeatherData(_ data: FiveDaysForcastModel) {
        self.fiveDaysForcast = data
        
        firstDayNameLabel.text = covertDate(fiveDaysForcast?.list[0].date)
        secondDayNameLabel.text = covertDate(fiveDaysForcast?.list[8].date)
        thirdDayNameLabel.text = covertDate(fiveDaysForcast?.list[17].date)
        fourthDayNameLabel.text = covertDate(fiveDaysForcast?.list[25].date)
        fifthNameLabel.text = covertDate(fiveDaysForcast?.list[37].date)
        
        
        
        firstDayTempLabel.text = "\(Int((fiveDaysForcast?.list[0].main.temp) ?? 0))˚"
        secondDayTempLabel.text = "\(Int((fiveDaysForcast?.list[8].main.temp) ?? 0))˚"
        thirdDayTempLabel.text = "\(Int((fiveDaysForcast?.list[17].main.temp) ?? 0))˚"
        fourthDayTempLabel.text = "\(Int((fiveDaysForcast?.list[25].main.temp) ?? 0))˚"
        fifthDayTempLabel.text = "\(Int((fiveDaysForcast?.list[37].main.temp) ?? 0))˚"
        
        
        if (fiveDaysForcast?.list[0].weather[0].main == "Clouds") {
            firstDayImgLabel.image = Styling.cloudy.weatherIcon
    
        } else if (fiveDaysForcast?.list[0].weather[0].main == "Rain") {
            firstDayImgLabel.image = Styling.rainy.weatherIcon
            
        } else if (fiveDaysForcast?.list[0].weather[0].main == "Clear") {
            firstDayImgLabel.image = Styling.sunny.weatherIcon
        }
        
        
        
        if (fiveDaysForcast?.list[8].weather[0].main == "Clouds") {
            secondDayImgLabel.image = Styling.cloudy.weatherIcon
    
        } else if (fiveDaysForcast?.list[8].weather[0].main == "Rain") {
            secondDayImgLabel.image = Styling.rainy.weatherIcon
            
        } else if (fiveDaysForcast?.list[8].weather[0].main == "Clear") {
            secondDayImgLabel.image = Styling.sunny.weatherIcon
        }
        
        
        
        if (fiveDaysForcast?.list[17].weather[0].main == "Clouds") {
            thirdDayImgLabel.image = Styling.cloudy.weatherIcon
    
        } else if (fiveDaysForcast?.list[17].weather[0].main == "Rain") {
            thirdDayImgLabel.image = Styling.rainy.weatherIcon
            
        } else if (fiveDaysForcast?.list[17].weather[0].main == "Clear") {
            thirdDayImgLabel.image = Styling.sunny.weatherIcon
        }
        
        
        
        if (fiveDaysForcast?.list[25].weather[0].main == "Clouds") {
            fourthDayImgabel.image = Styling.cloudy.weatherIcon
    
        } else if (fiveDaysForcast?.list[25].weather[0].main == "Rain") {
            fourthDayImgabel.image = Styling.rainy.weatherIcon
            
        } else if (fiveDaysForcast?.list[25].weather[0].main == "Clear") {
            fourthDayImgabel.image = Styling.sunny.weatherIcon
        }
        
        
        
        if (fiveDaysForcast?.list[37].weather[0].main == "Clouds") {
            fifthDayImgLabel.image = Styling.cloudy.weatherIcon
    
        } else if (fiveDaysForcast?.list[37].weather[0].main == "Rain") {
            fifthDayImgLabel.image = Styling.rainy.weatherIcon
            
        } else if (fiveDaysForcast?.list[37].weather[0].main == "Clear") {
            fifthDayImgLabel.image = Styling.sunny.weatherIcon
        }
    }
}
