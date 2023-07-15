//
//  HourlyForecastCollectionViewCell.swift
//  Weather App
//
//  Created by Karolina Attekita on 15/07/23.
//

import UIKit


class HourlyForecastCollectionViewCell: UICollectionViewCell {
    
    static let indentifier: String = "HourlyForecast"
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [hourLabel,
                                                       iconImageView,
                                                       termperatureLabel])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 4
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 8,
                                                                     leading: 8,
                                                                     bottom: 8,
                                                                     trailing: 8)
        stackView.layer.borderWidth = 1
        stackView.layer.borderColor = UIColor.constrastColor?.cgColor
        stackView.layer.cornerRadius = 20
        return stackView
    }()
    
    private lazy var hourLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.constrastColor
        label.text = "13:00"
        label.font = UIFont.systemFont(ofSize: 10, weight: .semibold)
        label.textAlignment = .center
        return label
    }()
    
    private lazy var termperatureLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.constrastColor
        label.text = "25°C"
        label.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        label.textAlignment = .center
        return label
    }()
    
    private lazy var iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "sunIcon")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        setHierarchy()
        setConstraints()
    }
    
    private func setHierarchy() {
        contentView.addSubview(stackView)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            iconImageView.heightAnchor.constraint(equalToConstant: 33)
        ])
    }
}
