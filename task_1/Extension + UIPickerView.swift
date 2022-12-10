//
//  Extension + UIPickerView.swift
//  task_1
//
//  Created by Artem Sulzhenko on 08.12.2022.
//

import UIKit

extension MainViewController : UIPickerViewDelegate, UIPickerViewDataSource{
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView,
                    numberOfRowsInComponent component: Int) -> Int {
        return languageData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int,
                    forComponent component: Int) -> String? {
        if greetingLabel.text == nil {
            greetingLabel.text = languageData[row].greeting
            autoThemeButton.setTitle(languageData[row].theme.auto, for: .normal)
            lightThemeButton.setTitle(languageData[row].theme.light, for: .normal)
            darkThemeButton.setTitle(languageData[row].theme.dark, for: .normal)
        }
        return languageData[row].language
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int,
                    inComponent component: Int) {
        greetingLabel.text = languageData[row].greeting
        autoThemeButton.setTitle(languageData[row].theme.auto, for: .normal)
        lightThemeButton.setTitle(languageData[row].theme.light, for: .normal)
        darkThemeButton.setTitle(languageData[row].theme.dark, for: .normal)
    }
    
}
