import UIKit

final class UserTypeSelectionViewController: UIViewController {
    // MARK: - GUI
    let visitorButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .additionalMain.withAlphaComponent(0.4)
        button.layer.cornerRadius = 20
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.widthAnchor.constraint(equalToConstant: 227),
            button.heightAnchor.constraint(equalToConstant: 130)
        ])
        
        let visitorImageView = UIImageView(image: .user)
        button.addSubview(visitorImageView)
        visitorImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            visitorImageView.heightAnchor.constraint(equalToConstant: 96),
            visitorImageView.widthAnchor.constraint(equalToConstant: 96),
            visitorImageView.centerXAnchor.constraint(equalTo: button.centerXAnchor),
            visitorImageView.topAnchor.constraint(equalTo: button.topAnchor)
        ])
        
        let visitorLabel = UILabel()
        visitorLabel.text = "Посетитель"
        visitorLabel.textColor = .additionalMain
        visitorLabel.font = UIFont.systemFont(ofSize: 20, weight: .heavy)
        
        button.addSubview(visitorLabel)
        visitorLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            visitorLabel.centerXAnchor.constraint(equalTo: button.centerXAnchor),
            visitorLabel.bottomAnchor.constraint(equalTo: button.bottomAnchor, constant: -17)
        ])
        return button
    }()
    
    let adminButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .additionalMain.withAlphaComponent(0.4)
        button.layer.cornerRadius = 20
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.widthAnchor.constraint(equalToConstant: 227),
            button.heightAnchor.constraint(equalToConstant: 130)
        ])
        
        let visitorImageView = UIImageView(image: .admin)
        button.addSubview(visitorImageView)
        visitorImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            visitorImageView.heightAnchor.constraint(equalToConstant: 96),
            visitorImageView.widthAnchor.constraint(equalToConstant: 96),
            visitorImageView.centerXAnchor.constraint(equalTo: button.centerXAnchor),
            visitorImageView.topAnchor.constraint(equalTo: button.topAnchor)
        ])
        
        let visitorLabel = UILabel()
        visitorLabel.text = "Администратор"
        visitorLabel.textColor = .additionalMain
        visitorLabel.font = UIFont.systemFont(ofSize: 20, weight: .heavy)
        
        button.addSubview(visitorLabel)
        visitorLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            visitorLabel.centerXAnchor.constraint(equalTo: button.centerXAnchor),
            visitorLabel.bottomAnchor.constraint(equalTo: button.bottomAnchor, constant: -17)
        ])
        return button
    }()
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.visitorButton.addTarget(self, action: #selector(visitorButtonAction), for: .touchUpInside)
        self.adminButton.addTarget(self, action: #selector(adminButtonAction), for: .touchUpInside)
        
        configureViewController()
        setupVisitorButton()
        setupAdminButton()
    }
    
    // MARK: - Methods
    func configureViewController() {
        self.view.backgroundColor = .white
        self.navigationItem.largeTitleDisplayMode = .always
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.title = "Кто вы?"
    }
    
    func setupVisitorButton() {
        self.view.addSubview(visitorButton)
        NSLayoutConstraint.activate([
            self.visitorButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 270),
            self.visitorButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 83)
        ])
    }
    
    func setupAdminButton() {
        self.view.addSubview(adminButton)
        NSLayoutConstraint.activate([
            self.adminButton.topAnchor.constraint(equalTo: self.visitorButton.bottomAnchor, constant: 52),
            self.adminButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 83)
        ])
    }
    
    // MARK: - OBJC Methods
    @objc private func visitorButtonAction() {
        self.navigationController?.viewControllers = [LoginViewController()]
        GeneralControlling.userTypeSelection = .user
    }
    
    @objc private func adminButtonAction() {
        self.navigationController?.viewControllers = [LoginViewController()]
        GeneralControlling.userTypeSelection = .admin
    }
}
