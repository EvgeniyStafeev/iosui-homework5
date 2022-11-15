//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Стафеев Евгений on 01.11.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    var profileHeaderView = ProfileHeaderView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray

        viewConstraints()
    }
    
    private let profile: ProfileHeaderView = {
        let profile = ProfileHeaderView()
        profile.backgroundColor = .lightGray
        profile.translatesAutoresizingMaskIntoConstraints = false
        return profile
    }()
    
    private lazy var newButton: UIButton = {
        let newButton = UIButton()
        newButton.translatesAutoresizingMaskIntoConstraints = false
        newButton.backgroundColor = .systemRed
        newButton.setTitle("кнопка", for: .normal)
        newButton.setTitleColor(UIColor.white, for: .normal)
        newButton.addTarget(self, action: #selector(tapAction), for: .touchUpInside)
        return newButton
    }()
    
    @objc private func tapAction() {
        print("кнопка")
    }
    
    private func viewConstraints() {
        view.addSubview(profile)
        view.addSubview(newButton)
        
        NSLayoutConstraint.activate([
            
            profile.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            profile.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            profile.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            profile.heightAnchor.constraint(equalToConstant: 220),
            
            newButton.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            newButton.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            newButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    

   
}
