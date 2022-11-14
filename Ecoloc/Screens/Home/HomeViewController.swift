//
//  HomeViewController.swift
//  Ecoloc
//
//  Created by Guilherme Golfetto on 14/11/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    //-----------------------------------------------------------------------
    // MARK: - Subviews
    //-----------------------------------------------------------------------
    
    private lazy var stackView: UIStackView = {
       let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 16
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.layoutMargins = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
        stackView.addArrangedSubview(logoStackView)
        return stackView
    }()
    
    private lazy var logoStackView: UIStackView = {
        let stackview = UIStackView()
        stackview.translatesAutoresizingMaskIntoConstraints = false
        stackview.axis = .horizontal
        stackview.spacing = 16
//        stackview.addArrangedSubview(logoImage)
//        stackview.addArrangedSubview(logoLabel)
        return stackview
    }()
    
    private lazy var logoImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "logo")
        imageView.tintColor = .systemGreen
        return imageView
    }()
    
    private lazy var logoLabel: UILabel = {
       let label = UILabel()
        label.text = "Ecoloc"
        return label
    }()
    
    //-----------------------------------------------------------------------
    // MARK: - View lifecycle
    //-----------------------------------------------------------------------

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(stackView)
        configure()
    }

}

//-----------------------------------------------------------------------
// MARK: - Configuration
//-----------------------------------------------------------------------

extension HomeViewController {
    
    func configure() {
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            logoImage.widthAnchor.constraint(equalToConstant: 50),
            logoImage.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
    
}

#if canImport(SwiftUI) && DEBUG
import SwiftUI

struct ContentViewControllerContainerView: UIViewControllerRepresentable {
    typealias UIViewControllerType = HomeViewController
    
    func makeUIViewController(context: Context) -> UIViewControllerType {
        return HomeViewController()
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {}
}

struct ViewController_Preview: PreviewProvider {
    static var previews: some View {
        ContentViewControllerContainerView().colorScheme(.light)
    }
}
#endif
