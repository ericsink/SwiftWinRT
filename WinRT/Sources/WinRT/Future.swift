
// TODO wish this were not public

public protocol Future {
  associatedtype ValueType
  func get() throws -> ValueType
}

