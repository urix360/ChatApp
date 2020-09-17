
import UIKit
import Firebase
import FirebaseAuth
class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    

    override func viewDidLoad() {
        emailTextfield.layer.cornerRadius = 10
        passwordTextfield.layer.cornerRadius = 10
    }
    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            if let e = error{
                print(e.localizedDescription)
            }
            else{
                self.performSegue(withIdentifier: K.loginSegue, sender: self)
            }
          
        }
        }
    }
    
}
