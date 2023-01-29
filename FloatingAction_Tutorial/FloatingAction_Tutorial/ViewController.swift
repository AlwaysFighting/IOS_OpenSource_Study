import UIKit
import JJFloatingActionButton

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let actionButton = JJFloatingActionButton()

        actionButton.addItem(title: "좋아요", image: UIImage(systemName: "heart")?.withRenderingMode(.alwaysTemplate)) { item in
            item.buttonColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
          // do something
        }
        
        actionButton.addItem(title: "굳!", image: UIImage(systemName: "hand.thumbsup")) { item in
          // do something
            item.buttonColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        }

        actionButton.addItem(title: "휴지동", image: UIImage(systemName: "trash")?.withRenderingMode(.alwaysTemplate)) { item in
            item.buttonColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
          // do something
        }

       
        view.addSubview(actionButton)
        actionButton.buttonColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        actionButton.buttonImageColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        actionButton.buttonImageSize = CGSize(width: 30, height: 30)
        actionButton.translatesAutoresizingMaskIntoConstraints = false
        actionButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16).isActive = true
        actionButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16).isActive = true

    }

}

