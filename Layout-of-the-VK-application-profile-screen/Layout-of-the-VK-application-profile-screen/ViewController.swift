//
//  ViewController.swift
//  Layout-of-the-VK-application-profile-screen
//
//  Created by Georgiy on 19.05.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupHierarchy()
        setupLayout()
        setupView()
    }
    

    // MARK: - Settings
    private func setupHierarchy() {
    
    }
    
    private func setupLayout() {
    
    }
    
    private func setupView() {
        view.backgroundColor = UIColor.black
    }
    
    // MARK: - Private functions
    private func addButtonPageTitle(with title: String,
                                    titleLabel: Int,
                                    backgroundColor: UIColor,
                                    setTitleColor: UIColor,
                                    cornerRadius: CGFloat) -> UIButton {
        let myButton = UIButton()
        
        myButton.setTitle(title, for: .normal)
        myButton.titleLabel?.font = UIFont.systemFont(ofSize: CGFloat(titleLabel), weight: .light)
        myButton.backgroundColor = backgroundColor
        myButton.setTitleColor(setTitleColor, for: .normal)
        myButton.layer.cornerRadius = cornerRadius
        
        return myButton
    }
    
    
    private func addMainFiveButtons(with title: String,
                                baseForegroundColor: UIColor,
                                image: String) -> UIButton {
        
        let myButton = UIButton()
        myButton.configuration = .plain()
        myButton.configuration?.title = title
        myButton.configuration?.baseForegroundColor = baseForegroundColor
        myButton.configuration?.image = UIImage(systemName: image)
        myButton.configuration?.imagePadding = Metric.imagePaddingSecond
        
        return myButton
    }
    
    
    private func addFourCentralButtons(with title: String, font: CGFloat, image: String) -> UIButton {
        let myButton = UIButton()
        myButton.configuration = .tinted()
        myButton.configuration?.title = title
        myButton.configuration?.attributedTitle?.font = .systemFont(ofSize: font)
        myButton.configuration?.baseForegroundColor = UIColor.secondColor
        myButton.configuration?.baseBackgroundColor = .black
        myButton.configuration?.image = UIImage(systemName: image)
        myButton.configuration?.imagePadding = CGFloat(Metric.imagePadding)
        myButton.configuration?.imagePlacement = .top
        return myButton
    }
    
}

extension ViewController {
    enum Metric {
        static let firstFont = 14
        static let secondCornerRadius: CGFloat = 8
        static let thirdCornerRadius: CGFloat = 0
        static let imagePadding: CGFloat = 10
        static let imagePaddingSecond: CGFloat = 5
        static let secondFont: CGFloat = 15
        
    }
    
    enum Title: String {
        case buttonEdit = "Редактировать"
        case buttonStatus = "Установить статус"
        case buttonInfo = "Подробная информация"
        case buttonGiff = "Получить подарок >"
        case buttonWork = "Указать место работы"
        case buttonSubscriber = "35 подписчиков"
        case buttonCity = "Город: Москва"
        case buttonClip = "Клип"
        case buttonPhoto = "Фото"
        case buttonRecord = "Запись"
        case buttonHistory = "История"
    }
    
    enum Image: String {
        case buttonInfoImage = "info.circle.fill"
        case buttonGiff = "snowflake"
        case buttonWork = "bag"
        case buttonSubscriber = "dot.radiowaves.up.forward"
        case buttonCity = "house"
        case buttonClip = "video.bubble.left"
        case buttonPhoto = "photo"
        case buttonRecord = "square.and.pencil"
        case buttonHistory = "camera"
    }
}

extension UIColor {
    static var firstColor: UIColor  { return UIColor(red: 41/255, green: 45/255, blue: 46/255, alpha: 1.00) }
    static var secondColor: UIColor { return UIColor(red: 121/255, green: 164/255, blue: 221/255, alpha: 1.00) }
    static var thirdColor: UIColor { return UIColor(red: 92/255, green: 79/255, blue: 162/255, alpha: 1.00) }
}

