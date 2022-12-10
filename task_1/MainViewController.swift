//
//  MainViewController.swift
//  task_1
//
//  Created by Artem Sulzhenko on 06.12.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    private let logoImage = UIImage(named:"logo")
    let greetingLabel = UILabel()
    private let languageSelectionPicker = UIPickerView()
    let autoThemeButton = UIButton()
    let lightThemeButton = UIButton()
    let darkThemeButton = UIButton()
    private let stackView = UIStackView()
    
    let languageData = LanguageData.shared.data
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGray4
        
        setSettingLogo()
        setSettingLabel()
        setSettingPicker()
        setSettingStackView()
        setSettingButton(button: autoThemeButton)
        setSettingButton(button: lightThemeButton)
        setSettingButton(button: darkThemeButton)
        
        buttonTapped(sender: autoThemeButton)
    }
    
    private func setSettingLogo() {
        let imageView = UIImageView(image: logoImage)
        imageView.tintColor = UIColor(named: "elementColor")
        
        stackView.addArrangedSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageView.widthAnchor.constraint(equalToConstant: 90),
            imageView.heightAnchor.constraint(equalToConstant: 90)
        ])
    }
    
    private func setSettingLabel() {
        greetingLabel.textColor = UIColor(named: "elementColor")
        greetingLabel.font = greetingLabel.font.withSize(40)
        
        stackView.addArrangedSubview(greetingLabel)
    }
    
    private func setSettingPicker() {
        languageSelectionPicker.delegate = self
        languageSelectionPicker.dataSource = self
        
        stackView.addArrangedSubview(languageSelectionPicker)
    }
    
    private func setSettingStackView() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 16
        stackView.alignment = .center
        
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    private func setSettingButton(button: UIButton) {
        button.setTitleColor(.systemGray4, for: .normal)
        button.backgroundColor = UIColor(named: "elementColor")
        
        button.layer.cornerRadius = 10
        button.addTarget(
            self, action: #selector(buttonTapped), for: .touchUpInside)
        
        stackView.addArrangedSubview(button)
        
        NSLayoutConstraint.activate([
            button.widthAnchor.constraint(equalToConstant: 250),
            button.heightAnchor.constraint(equalToConstant: 45)
        ])
    }
    
    @objc func buttonTapped(sender: UIButton) {
        switch sender {
        case autoThemeButton:
            overrideUserInterfaceStyle = .unspecified
        case lightThemeButton:
            overrideUserInterfaceStyle = .light
        case darkThemeButton:
            overrideUserInterfaceStyle = .dark
        default:
            break
        }
        
        setNeedsStatusBarAppearanceUpdate()
        
        autoThemeButton.backgroundColor = UIColor(named: "elementColor")
        lightThemeButton.backgroundColor = UIColor(named: "elementColor")
        darkThemeButton.backgroundColor = UIColor(named: "elementColor")
        sender.backgroundColor = UIColor(named: "selectedButton")
    }
    
}

