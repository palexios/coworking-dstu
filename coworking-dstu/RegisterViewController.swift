import UIKit

final class RegisterViewController: UIViewController {
    // MARK: - Properties
    var isMale: Bool?
    
    // MARK: - GUI
    let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        return scrollView
    }()
    let fullnameTitle: UILabel = {
        let title = UILabel()
        title.text = "ФИО:"
        title.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        title.textColor = .black
        
        title.translatesAutoresizingMaskIntoConstraints = false
        
        return title
    }()
    
    let fullnameTextField: UITextField = {
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
    
    let dateOfBirthTitle: UILabel = {
        let title = UILabel()
        title.text = "Дата рождения:"
        title.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        title.textColor = .black
        
        title.translatesAutoresizingMaskIntoConstraints = false
        
        return title
    }()
    
    let dateOfBirthTextField: UITextField = {
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
    
    let genderTitle: UILabel = {
        let title = UILabel()
        title.text = "Пол:"
        title.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        title.textColor = .black
        
        title.translatesAutoresizingMaskIntoConstraints = false
        
        return title
    }()
    
    let genderMaleTitle: UILabel = {
        let title = UILabel()
        title.text = "мужской"
        title.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        title.textColor = .black
        
        title.translatesAutoresizingMaskIntoConstraints = false
        
        return title
    }()
    
    let genderFemaleTitle: UILabel = {
        let title = UILabel()
        title.text = "женский"
        title.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        title.textColor = .black
        
        title.translatesAutoresizingMaskIntoConstraints = false
        
        return title
    }()
    
    let genderMaleButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .white
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor
        
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.heightAnchor.constraint(equalToConstant: 20),
            button.widthAnchor.constraint(equalToConstant: 20)
        ])
        
        return button
    }()
    
    let genderFemaleButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .white
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor
        
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.heightAnchor.constraint(equalToConstant: 20),
            button.widthAnchor.constraint(equalToConstant: 20)
        ])
        
        return button
    }()
    
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
    
    let phoneTitle: UILabel = {
        let title = UILabel()
        title.text = "Номер телефона:"
        title.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        title.textColor = .black
        
        title.translatesAutoresizingMaskIntoConstraints = false
        
        return title
    }()
    
    let phoneTextField: UITextField = {
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
    
    let repeatPasswordTitle: UILabel = {
        let title = UILabel()
        title.text = "Повторите пароль:"
        title.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        title.textColor = .black
        
        title.translatesAutoresizingMaskIntoConstraints = false
        
        return title
    }()
    
    let repeatPasswordTextField: UITextField = {
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
    
    let registerButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .additionalMain
        button.layer.cornerRadius = 15
        button.setTitle("Зарегистрироваться", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        button.setTitleColor(.white, for: .normal)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.heightAnchor.constraint(equalToConstant: 42),
            button.widthAnchor.constraint(equalToConstant: 301)
        ])
        
        return button
    }()
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTextField.delegate = self
        fullnameTextField.delegate = self
        phoneTextField.delegate = self
        passwordTextField.delegate = self
        repeatPasswordTextField.delegate = self
        dateOfBirthTextField.delegate = self
        
        registerButton.addTarget(self, action: #selector(registerButtonAction), for: .touchUpInside)
        genderMaleButton.addTarget(self, action: #selector(maleButtonAction), for: .touchUpInside)
        genderFemaleButton.addTarget(self, action: #selector(femaleButtonAction), for: .touchUpInside)
        
        configureViewController()
        configureScrollView()
        setupFullName()
        setupDateOfBirth()
        setupGender()
        setupEmail()
        setupPhone()
        setupPassword()
        setupRepeatPassword()
        setupRegisterButton()
    }
    
    // MARK: - Methods
    func configureScrollView() {
        self.view.addSubview(scrollView)
        NSLayoutConstraint.activate([
            self.scrollView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            self.scrollView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            self.scrollView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            self.scrollView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
        ])
    }
    func configureViewController() {
        self.view.backgroundColor = .white
        self.navigationItem.largeTitleDisplayMode = .always
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.title = "Регистрация"
    }
    
    func setupFullName() {
        self.scrollView.addSubview(fullnameTitle)
        NSLayoutConstraint.activate([
            self.fullnameTitle.topAnchor.constraint(equalTo: self.scrollView.topAnchor),
            self.fullnameTitle.leadingAnchor.constraint(equalTo: self.scrollView.leadingAnchor, constant: 47),
        ])
        self.scrollView.addSubview(fullnameTextField)
        NSLayoutConstraint.activate([
            self.fullnameTextField.topAnchor.constraint(equalTo: self.fullnameTitle.bottomAnchor, constant: 4),
            self.fullnameTextField.leadingAnchor.constraint(equalTo: self.scrollView.leadingAnchor, constant: 46)
        ])
    }
    func setupDateOfBirth() {
        self.scrollView.addSubview(dateOfBirthTitle)
        NSLayoutConstraint.activate([
            self.dateOfBirthTitle.topAnchor.constraint(equalTo: self.fullnameTextField.bottomAnchor, constant: 20),
            self.dateOfBirthTitle.leadingAnchor.constraint(equalTo: self.scrollView.leadingAnchor, constant: 47),
        ])
        self.scrollView.addSubview(dateOfBirthTextField)
        NSLayoutConstraint.activate([
            self.dateOfBirthTextField.topAnchor.constraint(equalTo: self.dateOfBirthTitle.bottomAnchor, constant: 4),
            self.dateOfBirthTextField.leadingAnchor.constraint(equalTo: self.scrollView.leadingAnchor, constant: 46)
        ])
    }
    
    func setupGender() {
        self.scrollView.addSubview(genderTitle)
        NSLayoutConstraint.activate([
            self.genderTitle.topAnchor.constraint(equalTo: self.dateOfBirthTextField.bottomAnchor, constant: 20),
            self.genderTitle.leadingAnchor.constraint(equalTo: self.scrollView.leadingAnchor, constant: 47)
        ])
        
        self.scrollView.addSubview(genderMaleButton)
        NSLayoutConstraint.activate([
            self.genderMaleButton.leadingAnchor.constraint(equalTo: self.scrollView.leadingAnchor, constant: 47),
            self.genderMaleButton.topAnchor.constraint(equalTo: self.genderTitle.bottomAnchor, constant: 14)
        ])
        
        self.scrollView.addSubview(genderMaleTitle)
        NSLayoutConstraint.activate([
            self.genderMaleTitle.leadingAnchor.constraint(equalTo: self.genderMaleButton.trailingAnchor, constant: 6),
            self.genderMaleTitle.topAnchor.constraint(equalTo: self.genderTitle.bottomAnchor, constant: 13)
        ])
        
        self.scrollView.addSubview(genderFemaleButton)
        NSLayoutConstraint.activate([
            self.genderFemaleButton.leadingAnchor.constraint(equalTo: self.scrollView.leadingAnchor, constant: 250),
            self.genderFemaleButton.topAnchor.constraint(equalTo: self.genderTitle.bottomAnchor, constant: 14)
        ])
        
        self.scrollView.addSubview(genderFemaleTitle)
        NSLayoutConstraint.activate([
            self.genderFemaleTitle.leadingAnchor.constraint(equalTo: self.genderFemaleButton.trailingAnchor, constant: 6),
            self.genderFemaleTitle.topAnchor.constraint(equalTo: self.genderTitle.bottomAnchor, constant: 13)
        ])
    }
    
    func setupEmail() {
        self.scrollView.addSubview(emailTitle)
        NSLayoutConstraint.activate([
            self.emailTitle.topAnchor.constraint(equalTo: self.genderMaleButton.bottomAnchor, constant: 20),
            self.emailTitle.leadingAnchor.constraint(equalTo: self.scrollView.leadingAnchor, constant: 47),
        ])
        self.scrollView.addSubview(emailTextField)
        NSLayoutConstraint.activate([
            self.emailTextField.topAnchor.constraint(equalTo: self.emailTitle.bottomAnchor, constant: 4),
            self.emailTextField.leadingAnchor.constraint(equalTo: self.scrollView.leadingAnchor, constant: 46)
        ])
    }
    
    func setupPhone() {
        self.scrollView.addSubview(phoneTitle)
        NSLayoutConstraint.activate([
            self.phoneTitle.topAnchor.constraint(equalTo: self.emailTextField.bottomAnchor, constant: 20),
            self.phoneTitle.leadingAnchor.constraint(equalTo: self.scrollView.leadingAnchor, constant: 47),
        ])
        self.scrollView.addSubview(phoneTextField)
        NSLayoutConstraint.activate([
            self.phoneTextField.topAnchor.constraint(equalTo: self.phoneTitle.bottomAnchor, constant: 4),
            self.phoneTextField.leadingAnchor.constraint(equalTo: self.scrollView.leadingAnchor, constant: 46)
        ])
    }
    
    func setupPassword() {
        self.scrollView.addSubview(passwordTitle)
        NSLayoutConstraint.activate([
            self.passwordTitle.topAnchor.constraint(equalTo: self.phoneTextField.bottomAnchor, constant: 20),
            self.passwordTitle.leadingAnchor.constraint(equalTo: self.scrollView.leadingAnchor, constant: 47),
        ])
        self.scrollView.addSubview(passwordTextField)
        NSLayoutConstraint.activate([
            self.passwordTextField.topAnchor.constraint(equalTo: self.passwordTitle.bottomAnchor, constant: 4),
            self.passwordTextField.leadingAnchor.constraint(equalTo: self.scrollView.leadingAnchor, constant: 46)
        ])
    }
    
    func setupRepeatPassword() {
        self.scrollView.addSubview(repeatPasswordTitle)
        NSLayoutConstraint.activate([
            self.repeatPasswordTitle.topAnchor.constraint(equalTo: self.passwordTextField.bottomAnchor, constant: 20),
            self.repeatPasswordTitle.leadingAnchor.constraint(equalTo: self.scrollView.leadingAnchor, constant: 47),
        ])
        self.scrollView.addSubview(repeatPasswordTextField)
        NSLayoutConstraint.activate([
            self.repeatPasswordTextField.topAnchor.constraint(equalTo: self.repeatPasswordTitle.bottomAnchor, constant: 4),
            self.repeatPasswordTextField.leadingAnchor.constraint(equalTo: self.scrollView.leadingAnchor, constant: 46),
        ])
    }
    
    func setupRegisterButton() {
        self.scrollView.addSubview(registerButton)
        NSLayoutConstraint.activate([
            self.registerButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.registerButton.topAnchor.constraint(equalTo: repeatPasswordTextField.bottomAnchor, constant: 50),
            self.registerButton.bottomAnchor.constraint(equalTo: self.scrollView.bottomAnchor)
        ])
    }
    
    // MARK: - OBJC Methods
    @objc private func maleButtonAction() {
        self.isMale = true
        self.genderMaleButton.backgroundColor = .darkGray
        self.genderFemaleButton.backgroundColor = .white
    }
    @objc private func femaleButtonAction() {
        self.isMale = false
        self.genderFemaleButton.backgroundColor = .darkGray
        self.genderMaleButton.backgroundColor = .white
    }
    @objc private func registerButtonAction() {
        let fullName = self.fullnameTextField.text
        let dateOfBirth = self.dateOfBirthTextField.text
        let email = self.emailTextField.text
        let phone = self.phoneTextField.text
        let password = self.passwordTextField.text
        let replyPassword = self.repeatPasswordTextField.text
        
        guard let fullNameUnwrapped = fullName else { return }
        guard let dateOfBirthUnwrapped = dateOfBirth else { return }
        guard let emailUnwrapped = email else { return }
        guard let phoneUnwrapped = phone else { return }
        guard let passwordUnwrapped = password else { return }
        guard let replyPasswordUnwrapped = replyPassword else { return }
        guard let genderUnwrapped = isMale else { return }
        
        guard passwordUnwrapped == replyPasswordUnwrapped else { return }
        
        // TODO: ADD INSERT USER
        
        self.navigationController?.popViewController(animated: true)
    }
}

extension RegisterViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case fullnameTextField:
            self.view.endEditing(true)
            self.dateOfBirthTextField.becomeFirstResponder()
        case dateOfBirthTextField:
            self.view.endEditing(true)
            self.emailTextField.becomeFirstResponder()
        case emailTextField:
            self.view.endEditing(true)
            self.phoneTextField.becomeFirstResponder()
        case phoneTextField:
            self.view.endEditing(true)
            self.passwordTextField.becomeFirstResponder()
        case passwordTextField:
            self.view.endEditing(true)
            self.repeatPasswordTextField.becomeFirstResponder()
        default:
            self.view.endEditing(true)
        }
        
        return true
    }
}

