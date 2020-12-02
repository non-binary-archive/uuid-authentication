//
//  WelcomeViewController.swift
//  Example
//
//  Created by Luna Graysen on 2020-12-02.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    // MARK: View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createUI()
    }
    
    private func createUI() {
        view.backgroundColor = .systemBackground
        
        let titleLabel = UILabel(frame: .zero)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.font = UIFont.boldSystemFont(ofSize: UIFont.preferredFont(forTextStyle: .largeTitle).pointSize)
        titleLabel.text = "Welcome to Example"
        
        let subtitleLabel = UILabel(frame: .zero)
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel.font = UIFont.preferredFont(forTextStyle: .body)
        subtitleLabel.text = "Example is the best app for accessing customer information at Company."
        
        let instructionLabel = UILabel(frame: .zero)
        instructionLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionLabel.font = UIFont.preferredFont(forTextStyle: .body)
        instructionLabel.text = "You have not been invited. Please provide your device ID in your #access-control request."
        
        let deviceIdLabel = UILabel(frame: .zero)
        deviceIdLabel.translatesAutoresizingMaskIntoConstraints = false
        deviceIdLabel.font = UIFont.boldSystemFont(ofSize: UIFont.preferredFont(forTextStyle: .body).pointSize)
        deviceIdLabel.text = AuthenticationService.getDeviceId()
        
        let copyDeviceIdButton = UIButton(type: .system)
        copyDeviceIdButton.translatesAutoresizingMaskIntoConstraints = false
        copyDeviceIdButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: UIFont.preferredFont(forTextStyle: .body).pointSize)
        copyDeviceIdButton.setTitle("Copy Device ID", for: .normal)
        copyDeviceIdButton.setTitleColor(.purple, for: .normal)
        copyDeviceIdButton.addTarget(self, action: #selector(handleCopyDeviceIdButtonPressed(sender:)), for: .touchUpInside)
        
        view.addSubview(titleLabel)
        view.addSubview(subtitleLabel)
        view.addSubview(instructionLabel)
        view.addSubview(deviceIdLabel)
        view.addSubview(copyDeviceIdButton)
        
        NSLayoutConstraint.activate([
            instructionLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            instructionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            subtitleLabel.bottomAnchor.constraint(equalTo: instructionLabel.topAnchor, constant: -10),
            subtitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: subtitleLabel.topAnchor, constant: -10),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            deviceIdLabel.topAnchor.constraint(equalTo: instructionLabel.bottomAnchor, constant: 10),
            deviceIdLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            copyDeviceIdButton.topAnchor.constraint(equalTo: deviceIdLabel.bottomAnchor, constant: 10),
            copyDeviceIdButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    // MARK: Actions
    @objc private func handleCopyDeviceIdButtonPressed(sender: UIButton) {
        UIPasteboard.general.string = AuthenticationService.getDeviceId()
    }
}
