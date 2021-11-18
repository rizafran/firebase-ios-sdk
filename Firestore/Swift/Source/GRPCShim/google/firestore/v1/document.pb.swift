// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/firestore/v1/document.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2018 Google LLC.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// A Firestore document.
///
/// Must not exceed 1 MiB - 4 bytes.
public struct Google_Firestore_V1_Document {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The resource name of the document, for example
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  public var name: String = String()

  /// The document's fields.
  ///
  /// The map keys represent field names.
  ///
  /// A simple field name contains only characters `a` to `z`, `A` to `Z`,
  /// `0` to `9`, or `_`, and must not start with `0` to `9`. For example,
  /// `foo_bar_17`.
  ///
  /// Field names matching the regular expression `__.*__` are reserved. Reserved
  /// field names are forbidden except in certain documented contexts. The map
  /// keys, represented as UTF-8, must not exceed 1,500 bytes and cannot be
  /// empty.
  ///
  /// Field paths may be used in other contexts to refer to structured fields
  /// defined here. For `map_value`, the field path is represented by the simple
  /// or quoted field names of the containing fields, delimited by `.`. For
  /// example, the structured field
  /// `"foo" : { map_value: { "x&y" : { string_value: "hello" }}}` would be
  /// represented by the field path `foo.x&y`.
  ///
  /// Within a field path, a quoted field name starts and ends with `` ` `` and
  /// may contain any character. Some characters, including `` ` ``, must be
  /// escaped using a `\`. For example, `` `x&y` `` represents `x&y` and
  /// `` `bak\`tik` `` represents `` bak`tik ``.
  public var fields: Dictionary<String,Google_Firestore_V1_Value> = [:]

  /// Output only. The time at which the document was created.
  ///
  /// This value increases monotonically when a document is deleted then
  /// recreated. It can also be compared to values from other documents and
  /// the `read_time` of a query.
  public var createTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _createTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_createTime = newValue}
  }
  /// Returns true if `createTime` has been explicitly set.
  public var hasCreateTime: Bool {return self._createTime != nil}
  /// Clears the value of `createTime`. Subsequent reads from it will return its default value.
  public mutating func clearCreateTime() {self._createTime = nil}

  /// Output only. The time at which the document was last changed.
  ///
  /// This value is initially set to the `create_time` then increases
  /// monotonically with each change to the document. It can also be
  /// compared to values from other documents and the `read_time` of a query.
  public var updateTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _updateTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_updateTime = newValue}
  }
  /// Returns true if `updateTime` has been explicitly set.
  public var hasUpdateTime: Bool {return self._updateTime != nil}
  /// Clears the value of `updateTime`. Subsequent reads from it will return its default value.
  public mutating func clearUpdateTime() {self._updateTime = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _createTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _updateTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

/// A message that can hold any of the supported value types.
public struct Google_Firestore_V1_Value {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Must have a value set.
  public var valueType: Google_Firestore_V1_Value.OneOf_ValueType? = nil

  /// A null value.
  public var nullValue: SwiftProtobuf.Google_Protobuf_NullValue {
    get {
      if case .nullValue(let v)? = valueType {return v}
      return .nullValue
    }
    set {valueType = .nullValue(newValue)}
  }

  /// A boolean value.
  public var booleanValue: Bool {
    get {
      if case .booleanValue(let v)? = valueType {return v}
      return false
    }
    set {valueType = .booleanValue(newValue)}
  }

  /// An integer value.
  public var integerValue: Int64 {
    get {
      if case .integerValue(let v)? = valueType {return v}
      return 0
    }
    set {valueType = .integerValue(newValue)}
  }

  /// A double value.
  public var doubleValue: Double {
    get {
      if case .doubleValue(let v)? = valueType {return v}
      return 0
    }
    set {valueType = .doubleValue(newValue)}
  }

  /// A timestamp value.
  ///
  /// Precise only to microseconds. When stored, any additional precision is
  /// rounded down.
  public var timestampValue: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {
      if case .timestampValue(let v)? = valueType {return v}
      return SwiftProtobuf.Google_Protobuf_Timestamp()
    }
    set {valueType = .timestampValue(newValue)}
  }

  /// A string value.
  ///
  /// The string, represented as UTF-8, must not exceed 1 MiB - 89 bytes.
  /// Only the first 1,500 bytes of the UTF-8 representation are considered by
  /// queries.
  public var stringValue: String {
    get {
      if case .stringValue(let v)? = valueType {return v}
      return String()
    }
    set {valueType = .stringValue(newValue)}
  }

  /// A bytes value.
  ///
  /// Must not exceed 1 MiB - 89 bytes.
  /// Only the first 1,500 bytes are considered by queries.
  public var bytesValue: Data {
    get {
      if case .bytesValue(let v)? = valueType {return v}
      return Data()
    }
    set {valueType = .bytesValue(newValue)}
  }

  /// A reference to a document. For example:
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  public var referenceValue: String {
    get {
      if case .referenceValue(let v)? = valueType {return v}
      return String()
    }
    set {valueType = .referenceValue(newValue)}
  }

  /// A geo point value representing a point on the surface of Earth.
  public var geoPointValue: Google_Type_LatLng {
    get {
      if case .geoPointValue(let v)? = valueType {return v}
      return Google_Type_LatLng()
    }
    set {valueType = .geoPointValue(newValue)}
  }

  /// An array value.
  ///
  /// Cannot directly contain another array value, though can contain an
  /// map which contains another array.
  public var arrayValue: Google_Firestore_V1_ArrayValue {
    get {
      if case .arrayValue(let v)? = valueType {return v}
      return Google_Firestore_V1_ArrayValue()
    }
    set {valueType = .arrayValue(newValue)}
  }

  /// A map value.
  public var mapValue: Google_Firestore_V1_MapValue {
    get {
      if case .mapValue(let v)? = valueType {return v}
      return Google_Firestore_V1_MapValue()
    }
    set {valueType = .mapValue(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Must have a value set.
  public enum OneOf_ValueType: Equatable {
    /// A null value.
    case nullValue(SwiftProtobuf.Google_Protobuf_NullValue)
    /// A boolean value.
    case booleanValue(Bool)
    /// An integer value.
    case integerValue(Int64)
    /// A double value.
    case doubleValue(Double)
    /// A timestamp value.
    ///
    /// Precise only to microseconds. When stored, any additional precision is
    /// rounded down.
    case timestampValue(SwiftProtobuf.Google_Protobuf_Timestamp)
    /// A string value.
    ///
    /// The string, represented as UTF-8, must not exceed 1 MiB - 89 bytes.
    /// Only the first 1,500 bytes of the UTF-8 representation are considered by
    /// queries.
    case stringValue(String)
    /// A bytes value.
    ///
    /// Must not exceed 1 MiB - 89 bytes.
    /// Only the first 1,500 bytes are considered by queries.
    case bytesValue(Data)
    /// A reference to a document. For example:
    /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
    case referenceValue(String)
    /// A geo point value representing a point on the surface of Earth.
    case geoPointValue(Google_Type_LatLng)
    /// An array value.
    ///
    /// Cannot directly contain another array value, though can contain an
    /// map which contains another array.
    case arrayValue(Google_Firestore_V1_ArrayValue)
    /// A map value.
    case mapValue(Google_Firestore_V1_MapValue)

  #if !swift(>=4.1)
    public static func ==(lhs: Google_Firestore_V1_Value.OneOf_ValueType, rhs: Google_Firestore_V1_Value.OneOf_ValueType) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.nullValue, .nullValue): return {
        guard case .nullValue(let l) = lhs, case .nullValue(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.booleanValue, .booleanValue): return {
        guard case .booleanValue(let l) = lhs, case .booleanValue(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.integerValue, .integerValue): return {
        guard case .integerValue(let l) = lhs, case .integerValue(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.doubleValue, .doubleValue): return {
        guard case .doubleValue(let l) = lhs, case .doubleValue(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.timestampValue, .timestampValue): return {
        guard case .timestampValue(let l) = lhs, case .timestampValue(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.stringValue, .stringValue): return {
        guard case .stringValue(let l) = lhs, case .stringValue(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.bytesValue, .bytesValue): return {
        guard case .bytesValue(let l) = lhs, case .bytesValue(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.referenceValue, .referenceValue): return {
        guard case .referenceValue(let l) = lhs, case .referenceValue(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.geoPointValue, .geoPointValue): return {
        guard case .geoPointValue(let l) = lhs, case .geoPointValue(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.arrayValue, .arrayValue): return {
        guard case .arrayValue(let l) = lhs, case .arrayValue(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.mapValue, .mapValue): return {
        guard case .mapValue(let l) = lhs, case .mapValue(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}
}

/// An array value.
public struct Google_Firestore_V1_ArrayValue {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Values in the array.
  public var values: [Google_Firestore_V1_Value] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// A map value.
public struct Google_Firestore_V1_MapValue {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The map's fields.
  ///
  /// The map keys represent field names. Field names matching the regular
  /// expression `__.*__` are reserved. Reserved field names are forbidden except
  /// in certain documented contexts. The map keys, represented as UTF-8, must
  /// not exceed 1,500 bytes and cannot be empty.
  public var fields: Dictionary<String,Google_Firestore_V1_Value> = [:]

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.firestore.v1"

extension Google_Firestore_V1_Document: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Document"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "fields"),
    3: .standard(proto: "create_time"),
    4: .standard(proto: "update_time"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Google_Firestore_V1_Value>.self, value: &self.fields) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._createTime) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._updateTime) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if !self.fields.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Google_Firestore_V1_Value>.self, value: self.fields, fieldNumber: 2)
    }
    try { if let v = self._createTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    } }()
    try { if let v = self._updateTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Firestore_V1_Document, rhs: Google_Firestore_V1_Document) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.fields != rhs.fields {return false}
    if lhs._createTime != rhs._createTime {return false}
    if lhs._updateTime != rhs._updateTime {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Firestore_V1_Value: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Value"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    11: .standard(proto: "null_value"),
    1: .standard(proto: "boolean_value"),
    2: .standard(proto: "integer_value"),
    3: .standard(proto: "double_value"),
    10: .standard(proto: "timestamp_value"),
    17: .standard(proto: "string_value"),
    18: .standard(proto: "bytes_value"),
    5: .standard(proto: "reference_value"),
    8: .standard(proto: "geo_point_value"),
    9: .standard(proto: "array_value"),
    6: .standard(proto: "map_value"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: Bool?
        try decoder.decodeSingularBoolField(value: &v)
        if let v = v {
          if self.valueType != nil {try decoder.handleConflictingOneOf()}
          self.valueType = .booleanValue(v)
        }
      }()
      case 2: try {
        var v: Int64?
        try decoder.decodeSingularInt64Field(value: &v)
        if let v = v {
          if self.valueType != nil {try decoder.handleConflictingOneOf()}
          self.valueType = .integerValue(v)
        }
      }()
      case 3: try {
        var v: Double?
        try decoder.decodeSingularDoubleField(value: &v)
        if let v = v {
          if self.valueType != nil {try decoder.handleConflictingOneOf()}
          self.valueType = .doubleValue(v)
        }
      }()
      case 5: try {
        var v: String?
        try decoder.decodeSingularStringField(value: &v)
        if let v = v {
          if self.valueType != nil {try decoder.handleConflictingOneOf()}
          self.valueType = .referenceValue(v)
        }
      }()
      case 6: try {
        var v: Google_Firestore_V1_MapValue?
        var hadOneofValue = false
        if let current = self.valueType {
          hadOneofValue = true
          if case .mapValue(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.valueType = .mapValue(v)
        }
      }()
      case 8: try {
        var v: Google_Type_LatLng?
        var hadOneofValue = false
        if let current = self.valueType {
          hadOneofValue = true
          if case .geoPointValue(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.valueType = .geoPointValue(v)
        }
      }()
      case 9: try {
        var v: Google_Firestore_V1_ArrayValue?
        var hadOneofValue = false
        if let current = self.valueType {
          hadOneofValue = true
          if case .arrayValue(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.valueType = .arrayValue(v)
        }
      }()
      case 10: try {
        var v: SwiftProtobuf.Google_Protobuf_Timestamp?
        var hadOneofValue = false
        if let current = self.valueType {
          hadOneofValue = true
          if case .timestampValue(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.valueType = .timestampValue(v)
        }
      }()
      case 11: try {
        var v: SwiftProtobuf.Google_Protobuf_NullValue?
        try decoder.decodeSingularEnumField(value: &v)
        if let v = v {
          if self.valueType != nil {try decoder.handleConflictingOneOf()}
          self.valueType = .nullValue(v)
        }
      }()
      case 17: try {
        var v: String?
        try decoder.decodeSingularStringField(value: &v)
        if let v = v {
          if self.valueType != nil {try decoder.handleConflictingOneOf()}
          self.valueType = .stringValue(v)
        }
      }()
      case 18: try {
        var v: Data?
        try decoder.decodeSingularBytesField(value: &v)
        if let v = v {
          if self.valueType != nil {try decoder.handleConflictingOneOf()}
          self.valueType = .bytesValue(v)
        }
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    switch self.valueType {
    case .booleanValue?: try {
      guard case .booleanValue(let v)? = self.valueType else { preconditionFailure() }
      try visitor.visitSingularBoolField(value: v, fieldNumber: 1)
    }()
    case .integerValue?: try {
      guard case .integerValue(let v)? = self.valueType else { preconditionFailure() }
      try visitor.visitSingularInt64Field(value: v, fieldNumber: 2)
    }()
    case .doubleValue?: try {
      guard case .doubleValue(let v)? = self.valueType else { preconditionFailure() }
      try visitor.visitSingularDoubleField(value: v, fieldNumber: 3)
    }()
    case .referenceValue?: try {
      guard case .referenceValue(let v)? = self.valueType else { preconditionFailure() }
      try visitor.visitSingularStringField(value: v, fieldNumber: 5)
    }()
    case .mapValue?: try {
      guard case .mapValue(let v)? = self.valueType else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    }()
    case .geoPointValue?: try {
      guard case .geoPointValue(let v)? = self.valueType else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
    }()
    case .arrayValue?: try {
      guard case .arrayValue(let v)? = self.valueType else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 9)
    }()
    case .timestampValue?: try {
      guard case .timestampValue(let v)? = self.valueType else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 10)
    }()
    case .nullValue?: try {
      guard case .nullValue(let v)? = self.valueType else { preconditionFailure() }
      try visitor.visitSingularEnumField(value: v, fieldNumber: 11)
    }()
    case .stringValue?: try {
      guard case .stringValue(let v)? = self.valueType else { preconditionFailure() }
      try visitor.visitSingularStringField(value: v, fieldNumber: 17)
    }()
    case .bytesValue?: try {
      guard case .bytesValue(let v)? = self.valueType else { preconditionFailure() }
      try visitor.visitSingularBytesField(value: v, fieldNumber: 18)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Firestore_V1_Value, rhs: Google_Firestore_V1_Value) -> Bool {
    if lhs.valueType != rhs.valueType {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Firestore_V1_ArrayValue: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ArrayValue"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "values"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.values) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.values.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.values, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Firestore_V1_ArrayValue, rhs: Google_Firestore_V1_ArrayValue) -> Bool {
    if lhs.values != rhs.values {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Firestore_V1_MapValue: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MapValue"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "fields"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Google_Firestore_V1_Value>.self, value: &self.fields) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.fields.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Google_Firestore_V1_Value>.self, value: self.fields, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Firestore_V1_MapValue, rhs: Google_Firestore_V1_MapValue) -> Bool {
    if lhs.fields != rhs.fields {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
