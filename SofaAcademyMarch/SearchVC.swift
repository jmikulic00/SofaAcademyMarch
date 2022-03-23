import UIKit

class SearchVC: UIViewController {

    let imageView = UIImageView()
    let bottomRightImageView = UIImageView()
    let bottomLeftImageView = UIImageView()
    let topLeftImageView = UIImageView()
    let topRightImageView = UIImageView()
    
    private enum SearchVCConstants {
        static let cornerViewImage: UIImage = .add
        static let cornerViewWidth: CGFloat = 150
        static let cornerViewHeight: CGFloat = 150
        static let cornerViewVertDistance: CGFloat = 100
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        configureImageView()
    }

    func configureImageView() {
        view.addSubview(imageView)
        view.addSubview(bottomRightImageView)
        view.addSubview(bottomLeftImageView)
        view.addSubview(topLeftImageView)
        view.addSubview(topRightImageView)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = .checkmark
        bottomRightImageView.translatesAutoresizingMaskIntoConstraints = false
        bottomRightImageView.image = SearchVCConstants.cornerViewImage
        bottomLeftImageView.translatesAutoresizingMaskIntoConstraints = false
        bottomLeftImageView.image = SearchVCConstants.cornerViewImage
        topLeftImageView.translatesAutoresizingMaskIntoConstraints = false
        topLeftImageView.image = SearchVCConstants.cornerViewImage
        topRightImageView.translatesAutoresizingMaskIntoConstraints = false
        topRightImageView.image = SearchVCConstants.cornerViewImage

        NSLayoutConstraint.activate([
            imageView.widthAnchor.constraint(equalToConstant: 200),
            imageView.heightAnchor.constraint(equalToConstant: 200),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            bottomRightImageView.widthAnchor.constraint(equalToConstant: SearchVCConstants.cornerViewWidth),
            bottomRightImageView.heightAnchor.constraint(equalToConstant: SearchVCConstants.cornerViewHeight),
            bottomRightImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -SearchVCConstants.cornerViewVertDistance),
            bottomRightImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            bottomLeftImageView.widthAnchor.constraint(equalToConstant: SearchVCConstants.cornerViewWidth),
            bottomLeftImageView.heightAnchor.constraint(equalToConstant: SearchVCConstants.cornerViewHeight),
            bottomLeftImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -SearchVCConstants.cornerViewVertDistance),
            bottomLeftImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            
            topLeftImageView.widthAnchor.constraint(equalToConstant: SearchVCConstants.cornerViewWidth),
            topLeftImageView.heightAnchor.constraint(equalToConstant: SearchVCConstants.cornerViewHeight),
            topLeftImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: SearchVCConstants.cornerViewVertDistance),
            topLeftImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            
            topRightImageView.widthAnchor.constraint(equalToConstant: SearchVCConstants.cornerViewWidth),
            topRightImageView.heightAnchor.constraint(equalToConstant: SearchVCConstants.cornerViewHeight),
            topRightImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: SearchVCConstants.cornerViewVertDistance),
            topRightImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
}
