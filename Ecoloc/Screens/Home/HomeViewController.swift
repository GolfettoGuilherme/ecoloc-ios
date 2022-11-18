//
//  HomeViewController.swift
//  Ecoloc
//
//  Created by Guilherme Golfetto on 14/11/22.
//

import UIKit
import SnapKit

class HomeViewController: UIViewController {
    
    //-----------------------------------------------------------------------
    // MARK: - Subviews
    //-----------------------------------------------------------------------
    
    private lazy var stackView: UIStackView = {
       let stackView = UIStackView()
        stackView.backgroundColor = .systemRed
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 16
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.layoutMargins = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
        return stackView
    }()
    
    private lazy var logoStackView: UIStackView = {
        let stackview = UIStackView()
        stackview.backgroundColor = .systemBlue
        stackview.translatesAutoresizingMaskIntoConstraints = false
        stackview.axis = .horizontal
        stackview.spacing = 16
        stackview.addArrangedSubview(logoImage)
        stackview.addArrangedSubview(logoLabel)
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
        configure()
    }

}

//-----------------------------------------------------------------------
// MARK: - Configuration
//-----------------------------------------------------------------------

extension HomeViewController {
    
    func configure() {
        view.addSubview(stackView)
        
        stackView.addArrangedSubview(logoStackView)
        
        logoImage.snp.makeConstraints {
            $0.width.equalTo(<#T##other: ConstraintRelatableTarget##ConstraintRelatableTarget#>)
        }
        
        stackView.snp.makeConstraints{
            $0.edges.equalToSuperview()
        }
        
    }
    
}

//-----------------------------------------------------------------------
// MARK: - Preview
//-----------------------------------------------------------------------

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
