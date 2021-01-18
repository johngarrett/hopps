import UIKit

class AppListViewController: UIViewController {
    @IBOutlet var collectionView: UICollectionView?
    var userApplications = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        let list = SparkAppList()
        list.getAppList { appList in
            print(appList)
        }
        userApplications = ["hey", "sample", "data"].map { $0 }
    }
}

extension AppListViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        userApplications.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
}
