protocol SomeProtocol {
    associatedtype someType
    func giveMeWhatItis() -> someType?
}

class SomePresenter: SomeProtocol {
    typealias someType = Int
    func giveMeWhatItis() -> Int? {
        return 1000
    }
}

class SomeClass<T:SomeProtocol> {
    
    var presenter:T? {
        didSet {
            print("Something is set already")
        }
    }
    
    init(withPresenter: T?) {
        presenter = withPresenter
    }
}

class ViewFactory {
    static func giveMeSomeClass() -> SomeClass<SomePresenter> {
        let presenter = SomePresenter.init()
        return SomeClass.init(withPresenter: presenter)
    }
}
let someClassProvider = ViewFactory.giveMeSomeClass()
print(someClassProvider.presenter?.giveMeWhatItis()!)
