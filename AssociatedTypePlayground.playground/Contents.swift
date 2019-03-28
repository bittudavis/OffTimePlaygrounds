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

let presenter = SomePresenter.init()
let someClassInstance: SomeClass = SomeClass.init(withPresenter: presenter)
