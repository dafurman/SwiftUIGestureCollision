import Foundation
import UIKit

class InteractableUIKitView: UIView {

    private lazy var gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(onTap))

    init() {
        super.init(frame: .zero)

        setupViews()
    }

    required init?(coder: NSCoder) { nil }

    private func setupViews() {
        addLabel()

        backgroundColor = .purple
        addGestureRecognizer(gestureRecognizer)
        alpha = 0.7
    }

    private func addLabel() {
        let label = UILabel()
        label.text = "UIKit"
        label.textColor = .black
        
        addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: centerXAnchor),
            label.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }

    @objc private func onTap() {
        print("UIKit")
    }
}
