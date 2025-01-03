import UIKit

final class LoginViewController: UIViewController {
    // MARK: - GUI
    let emailTitle: UILabel = {
        let title = UILabel()
        title.text = "Электронная почта:"
        title.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        title.textColor = .black
        
        title.translatesAutoresizingMaskIntoConstraints = false
        
        return title
    }()
    
    let emailTextField: UITextField = {
        let textField = UITextField()
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.darkGray.cgColor
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            textField.widthAnchor.constraint(equalToConstant: 301),
            textField.heightAnchor.constraint(equalToConstant: 35)
        ])
        
        return textField
    }()
    let passwordTitle: UILabel = {
        let title = UILabel()
        title.text = "Пароль:"
        title.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        title.textColor = .black
        
        title.translatesAutoresizingMaskIntoConstraints = false
        
        return title
    }()
    
    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.darkGray.cgColor
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            textField.widthAnchor.constraint(equalToConstant: 301),
            textField.heightAnchor.constraint(equalToConstant: 35)
        ])
        
        return textField
    }()
    
    let loginButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .additionalMain
        button.layer.cornerRadius = 15
        button.setTitle("Войти", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        button.setTitleColor(.white, for: .normal)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.heightAnchor.constraint(equalToConstant: 42),
            button.widthAnchor.constraint(equalToConstant: 301)
        ])
        
        return button
    }()
    
    let transferTitle: UILabel = {
        let title = UILabel()
        title.text = "У вас нет аккаунта?"
        title.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        title.textColor = .black
        
        title.translatesAutoresizingMaskIntoConstraints = false
        
        return title
    }()
    
    let transferButton: UIButton = {
        let button = UIButton()
        button.setTitle("Зарегистрироваться", for: .normal)
        button.setTitleColor(.additionalMain, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.addTarget(self, action: #selector(loginButtonAction), for: .touchUpInside)
        emailTextField.delegate = self
        passwordTextField.delegate = self
        
        transferButton.addTarget(self, action: #selector(transferButtonAction), for: .touchUpInside)
        
        configureViewController()
        setupEmail()
        setupPassword()
        setupLoginButton()
        setupTransferTitle()
        setupTransferButton()
    }
    
    // MARK: - Methods
    func configureViewController() {
        self.view.backgroundColor = .white
        self.navigationItem.largeTitleDisplayMode = .always
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.title = "Авторизация"
    }
    
    func setupEmail() {
        self.view.addSubview(emailTitle)
        NSLayoutConstraint.activate([
            self.emailTitle.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 316),
            self.emailTitle.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 46)
        ])
        
        self.view.addSubview(emailTextField)
        NSLayoutConstraint.activate([
            self.emailTextField.topAnchor.constraint(equalTo: self.emailTitle.bottomAnchor, constant: 4),
            self.emailTextField.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 46)
        ])
    }
    
    func setupPassword() {
        self.view.addSubview(passwordTitle)
        NSLayoutConstraint.activate([
            self.passwordTitle.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 396),
            self.passwordTitle.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 46)
        ])
        
        self.view.addSubview(passwordTextField)
        NSLayoutConstraint.activate([
            self.passwordTextField.topAnchor.constraint(equalTo: self.passwordTitle.bottomAnchor, constant: 4),
            self.passwordTextField.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 46)
        ])
    }
    
    func setupLoginButton() {
        self.view.addSubview(loginButton)
        NSLayoutConstraint.activate([
            self.loginButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.loginButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -75)
        ])
    }
    
    func setupTransferTitle() {
        self.view.addSubview(transferTitle)
        NSLayoutConstraint.activate([
            transferTitle.topAnchor.constraint(equalTo: self.loginButton.bottomAnchor, constant: 12),
            transferTitle.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 42)
        ])
    }
    
    func setupTransferButton() {
        self.view.addSubview(transferButton)
        NSLayoutConstraint.activate([
            transferButton.topAnchor.constraint(equalTo: self.loginButton.bottomAnchor, constant: 6),
            transferButton.leadingAnchor.constraint(equalTo: self.transferTitle.trailingAnchor, constant: 4)
        ])
    }
    
    // MARK: - OBJC Methods
    @objc private func loginButtonAction() {
        guard let emailUnwrapped = emailTextField.text else { return }
        guard let passwordUnwrapped = passwordTextField.text else { return }
        // TODO: ADD FETCHING USERS
    }
    
    @objc private func transferButtonAction() {
        self.navigationController?.pushViewController(RegisterViewController(), animated: true)
    }
}


extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case emailTextField:
            self.view.endEditing(true)
            self.passwordTextField.becomeFirstResponder()
        default:
            self.view.endEditing(true)
        }
        return true
    }
}

