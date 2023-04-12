//
//  ViewController.swift
//  Programmatic Weather App
//
//  Created by GO on 2/23/23.
//

import UIKit

class ViewController: UIViewController, DataDelegate {
   
    // MARK: - ScrollView
    lazy var scrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.translatesAutoresizingMaskIntoConstraints = false
        scroll.backgroundColor = AppColor.primaryBlueColor.color
        return scroll
    }()
   
    var mainImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "forest_sunny")
        
        return image
    }()
    
    var mainTempLabel = viewLabel(label: "Min", size: 60.0)
    var mainTempDiscLabel = viewLabel(label: "Temperature", size: 30.0)
    
    var minTempTitleLabel = viewLabel(label: "Min", size: 30.0)
    var minValueLabel = viewLabel(label: "label", size: 30.0)
    
    var currentTempTitleLabel = viewLabel(label: "Current", size: 30.0)
    var currentValueLabel = viewLabel(label: "label", size: 30.0)
    
    var maxTempTitleLabel = viewLabel(label: "Max", size: 30.0)
    var maxValueLabel = viewLabel(label: "label", size: 30.0)
    
    var divider: UIView = {
        var lineView = UIView()
        lineView.translatesAutoresizingMaskIntoConstraints = false
        lineView.layer.borderWidth = 2.0
        lineView.clipsToBounds = true
        lineView.layer.borderColor = UIColor.white.cgColor
       return lineView
    }()
    
    
    
    var firstDayNameLabel = viewLabel(label: "Monday", size: 25.0)
    var firstDayImgLabel = viewImage(imageName: "clear")
    var firstDayTempLabel = viewLabel(label: "label", size: 25.0)
    
    var secondDayNameLabel = viewLabel(label: "Tuesday", size: 25.0)
    var secondDayImgLabel = viewImage(imageName: "clear")
    var secondDayTempLabel = viewLabel(label: "label", size: 25.0)
    
    var thirdDayNameLabel = viewLabel(label: "Wednesday", size: 25.0)
    var thirdDayImgLabel = viewImage(imageName: "clear")
    var thirdDayTempLabel = viewLabel(label: "label", size: 25.0)
    
    var fourthDayNameLabel = viewLabel(label: "Thursday", size: 25.0)
    var fourthDayImgabel = viewImage(imageName: "clear")
    var fourthDayTempLabel = viewLabel(label: "label", size: 25.0)
    
    var fifthNameLabel = viewLabel(label: "Friday", size: 25.0)
    var fifthDayImgLabel = viewImage(imageName: "clear")
    var fifthDayTempLabel = viewLabel(label: "label", size: 25.0)
    

    private var viewModel = WeatherViewModel()
    var currentWeatherModel: CurrentWeatherModel?
    var fiveDaysForcast: FiveDaysForcastModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = AppColor.primaryBlueColor.color
        
        setupSubviews()
        setupContraints()
        
        viewModel.dataDelegate = self
        viewModel.fetchCurrentData()
        viewModel.fetchForcastData()
    }
    
    
}

