//
//  ColorViewController.swift
//  ColorizedApp 2.0
//
//  Created by Aleksandr F. on 19.03.2022.
//

import UIKit

protocol SettingViewControllerDelegate {
    func setColorView(for colorValue: UIColor)
}

class ColorViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingVC = segue.destination as? SettingViewController else { return }
        settingVC.viewColor = view.backgroundColor
        settingVC.delegate = self
    }
}

extension ColorViewController: SettingViewControllerDelegate {
    func setColorView(for colorValue: UIColor) {
        view.backgroundColor = colorValue
    }
    
}

