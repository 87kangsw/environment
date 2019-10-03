//___FILEHEADER___

import UIKit

import ReactorKit
import RxCocoa
import RxSwift

final class ___FILEBASENAMEASIDENTIFIER___: BaseTableViewCell, View, CellType {

    // MARK: - Reactor
    typealias Reactor = <#ReactorName#>
    
    // MARK: - UI
    
    // MARK: - Initializing
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureUI()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        disposeBag = DisposeBag()
    }
        
    // MARK: - UI Setup
    fileprivate func configureUI() {
        
    }
    
    // MARK: - Binding
    func bind(reactor: Reactor) {
        
    }
}
