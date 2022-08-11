//
//  ColorViewController.swift
//  ColorizedApp 2.0
//
//  Created by Aleksandr F. on 19.03.2022.
//

import UIKit

protocol SettingViewControllerDelegate {
    func setColor(_ color: UIColor)
}

class ColorViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingVC = segue.destination as? SettingViewController else { return }
        settingVC.delegate = self
        settingVC.viewColor = view.backgroundColor
    }
}

// MARK: - ColorDelegate
extension ColorViewController: SettingViewControllerDelegate {
    func setColor(_ color: UIColor) {
        view.backgroundColor = color
    }
}

