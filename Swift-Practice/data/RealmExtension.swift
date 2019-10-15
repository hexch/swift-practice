import Foundation
import RealmSwift

protocol RealmStore {
    associatedtype ResultType: Object
    func getRealm() -> Realm
    func allObjects() -> Results<ResultType>
    func add(object: ResultType)
    func findById(_ id: String) -> ResultType
    func deleteAll()
}

extension RealmStore {
    func getRealm() -> Realm {
        let realm = try! Realm()
        return realm
    }

    func allObjects() -> Results<ResultType> {
        return getRealm().objects(ResultType.self)
    }
    
    func add(object: ResultType) {
        let realm = getRealm()
        try! realm.write { realm.add(object) }
    }
    
    func findById(_ id: String) -> ResultType {
        let realm = getRealm()
        return realm.objects(ResultType.self).filter(NSPredicate(format: "id = %@", id)).first!
    }
    
    func deleteAll() {
        let realm = getRealm()
        try! realm.write {
            var array = [ResultType]()
            realm.objects(ResultType.self).forEach { array.append($0) }
            realm.delete(array)
        }
    }
}
