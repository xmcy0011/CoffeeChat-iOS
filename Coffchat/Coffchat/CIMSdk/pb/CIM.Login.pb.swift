// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: CIM.Login.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

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

/// 认证请求
struct CIM_Login_CIMAuthTokenReq {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// cmd id:		0x0101
  var userID: UInt64 = 0

  /// CoffeeChat不存储用户信息，消息推送时需要显示昵称
  /// 基于流量考虑，昵称不放在每条消息中携带
  /// 但是如果期间用户更新昵称后，消息推送显示昵称会有延迟，CoffeeChat认为是能接受的
  var nickName: String = String()

  var userToken: String = String()

  var clientType: CIM_Def_CIMClientType = .kCimClientTypeDefault

  ///optional
  var clientVersion: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct CIM_Login_CIMAuthTokenRsp {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// cmd id:		0x0102
  var serverTime: UInt32 = 0

  /// 验证结果
  var resultCode: CIM_Def_CIMErrorCode = .kCimErrUnknown

  ///optional
  var resultString: String = String()

  ///optional
  var userInfo: CIM_Def_CIMUserInfo {
    get {return _userInfo ?? CIM_Def_CIMUserInfo()}
    set {_userInfo = newValue}
  }
  /// Returns true if `userInfo` has been explicitly set.
  var hasUserInfo: Bool {return self._userInfo != nil}
  /// Clears the value of `userInfo`. Subsequent reads from it will return its default value.
  mutating func clearUserInfo() {self._userInfo = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _userInfo: CIM_Def_CIMUserInfo? = nil
}

/// 认证请求，支持用户名+密码模式，测试更方便
struct CIM_Login_CIMAuthReq {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// cmd id:		0x0107 
  var userName: String = String()

  var userPwd: String = String()

  var clientType: CIM_Def_CIMClientType = .kCimClientTypeDefault

  ///optional
  var clientVersion: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct CIM_Login_CIMAuthRsp {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// cmd id:		0x0102
  var serverTime: UInt32 = 0

  /// 验证结果
  var resultCode: CIM_Def_CIMErrorCode = .kCimErrUnknown

  ///optional
  var resultString: String = String()

  ///optional
  var userInfo: CIM_Def_CIMUserInfo {
    get {return _userInfo ?? CIM_Def_CIMUserInfo()}
    set {_userInfo = newValue}
  }
  /// Returns true if `userInfo` has been explicitly set.
  var hasUserInfo: Bool {return self._userInfo != nil}
  /// Clears the value of `userInfo`. Subsequent reads from it will return its default value.
  mutating func clearUserInfo() {self._userInfo = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _userInfo: CIM_Def_CIMUserInfo? = nil
}

/// 登出
struct CIM_Login_CIMLogoutReq {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// cmd id:		0x0103
  var userID: UInt64 = 0

  var clientType: CIM_Def_CIMClientType = .kCimClientTypeDefault

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct CIM_Login_CIMLogoutRsp {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// cmd id:		0x0104
  var resultCode: UInt32 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// 心跳
struct CIM_Login_CIMHeartBeat {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "CIM.Login"

extension CIM_Login_CIMAuthTokenReq: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".CIMAuthTokenReq"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "user_id"),
    2: .standard(proto: "nick_name"),
    3: .standard(proto: "user_token"),
    4: .standard(proto: "client_type"),
    5: .standard(proto: "client_version"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularUInt64Field(value: &self.userID)
      case 2: try decoder.decodeSingularStringField(value: &self.nickName)
      case 3: try decoder.decodeSingularStringField(value: &self.userToken)
      case 4: try decoder.decodeSingularEnumField(value: &self.clientType)
      case 5: try decoder.decodeSingularStringField(value: &self.clientVersion)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.userID != 0 {
      try visitor.visitSingularUInt64Field(value: self.userID, fieldNumber: 1)
    }
    if !self.nickName.isEmpty {
      try visitor.visitSingularStringField(value: self.nickName, fieldNumber: 2)
    }
    if !self.userToken.isEmpty {
      try visitor.visitSingularStringField(value: self.userToken, fieldNumber: 3)
    }
    if self.clientType != .kCimClientTypeDefault {
      try visitor.visitSingularEnumField(value: self.clientType, fieldNumber: 4)
    }
    if !self.clientVersion.isEmpty {
      try visitor.visitSingularStringField(value: self.clientVersion, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: CIM_Login_CIMAuthTokenReq, rhs: CIM_Login_CIMAuthTokenReq) -> Bool {
    if lhs.userID != rhs.userID {return false}
    if lhs.nickName != rhs.nickName {return false}
    if lhs.userToken != rhs.userToken {return false}
    if lhs.clientType != rhs.clientType {return false}
    if lhs.clientVersion != rhs.clientVersion {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension CIM_Login_CIMAuthTokenRsp: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".CIMAuthTokenRsp"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "server_time"),
    2: .standard(proto: "result_code"),
    3: .standard(proto: "result_string"),
    4: .standard(proto: "user_info"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularUInt32Field(value: &self.serverTime)
      case 2: try decoder.decodeSingularEnumField(value: &self.resultCode)
      case 3: try decoder.decodeSingularStringField(value: &self.resultString)
      case 4: try decoder.decodeSingularMessageField(value: &self._userInfo)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.serverTime != 0 {
      try visitor.visitSingularUInt32Field(value: self.serverTime, fieldNumber: 1)
    }
    if self.resultCode != .kCimErrUnknown {
      try visitor.visitSingularEnumField(value: self.resultCode, fieldNumber: 2)
    }
    if !self.resultString.isEmpty {
      try visitor.visitSingularStringField(value: self.resultString, fieldNumber: 3)
    }
    if let v = self._userInfo {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: CIM_Login_CIMAuthTokenRsp, rhs: CIM_Login_CIMAuthTokenRsp) -> Bool {
    if lhs.serverTime != rhs.serverTime {return false}
    if lhs.resultCode != rhs.resultCode {return false}
    if lhs.resultString != rhs.resultString {return false}
    if lhs._userInfo != rhs._userInfo {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension CIM_Login_CIMAuthReq: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".CIMAuthReq"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "user_name"),
    2: .standard(proto: "user_pwd"),
    3: .standard(proto: "client_type"),
    4: .standard(proto: "client_version"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.userName)
      case 2: try decoder.decodeSingularStringField(value: &self.userPwd)
      case 3: try decoder.decodeSingularEnumField(value: &self.clientType)
      case 4: try decoder.decodeSingularStringField(value: &self.clientVersion)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.userName.isEmpty {
      try visitor.visitSingularStringField(value: self.userName, fieldNumber: 1)
    }
    if !self.userPwd.isEmpty {
      try visitor.visitSingularStringField(value: self.userPwd, fieldNumber: 2)
    }
    if self.clientType != .kCimClientTypeDefault {
      try visitor.visitSingularEnumField(value: self.clientType, fieldNumber: 3)
    }
    if !self.clientVersion.isEmpty {
      try visitor.visitSingularStringField(value: self.clientVersion, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: CIM_Login_CIMAuthReq, rhs: CIM_Login_CIMAuthReq) -> Bool {
    if lhs.userName != rhs.userName {return false}
    if lhs.userPwd != rhs.userPwd {return false}
    if lhs.clientType != rhs.clientType {return false}
    if lhs.clientVersion != rhs.clientVersion {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension CIM_Login_CIMAuthRsp: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".CIMAuthRsp"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "server_time"),
    2: .standard(proto: "result_code"),
    3: .standard(proto: "result_string"),
    4: .standard(proto: "user_info"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularUInt32Field(value: &self.serverTime)
      case 2: try decoder.decodeSingularEnumField(value: &self.resultCode)
      case 3: try decoder.decodeSingularStringField(value: &self.resultString)
      case 4: try decoder.decodeSingularMessageField(value: &self._userInfo)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.serverTime != 0 {
      try visitor.visitSingularUInt32Field(value: self.serverTime, fieldNumber: 1)
    }
    if self.resultCode != .kCimErrUnknown {
      try visitor.visitSingularEnumField(value: self.resultCode, fieldNumber: 2)
    }
    if !self.resultString.isEmpty {
      try visitor.visitSingularStringField(value: self.resultString, fieldNumber: 3)
    }
    if let v = self._userInfo {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: CIM_Login_CIMAuthRsp, rhs: CIM_Login_CIMAuthRsp) -> Bool {
    if lhs.serverTime != rhs.serverTime {return false}
    if lhs.resultCode != rhs.resultCode {return false}
    if lhs.resultString != rhs.resultString {return false}
    if lhs._userInfo != rhs._userInfo {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension CIM_Login_CIMLogoutReq: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".CIMLogoutReq"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "user_id"),
    2: .standard(proto: "client_type"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularUInt64Field(value: &self.userID)
      case 2: try decoder.decodeSingularEnumField(value: &self.clientType)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.userID != 0 {
      try visitor.visitSingularUInt64Field(value: self.userID, fieldNumber: 1)
    }
    if self.clientType != .kCimClientTypeDefault {
      try visitor.visitSingularEnumField(value: self.clientType, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: CIM_Login_CIMLogoutReq, rhs: CIM_Login_CIMLogoutReq) -> Bool {
    if lhs.userID != rhs.userID {return false}
    if lhs.clientType != rhs.clientType {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension CIM_Login_CIMLogoutRsp: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".CIMLogoutRsp"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "result_code"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularUInt32Field(value: &self.resultCode)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.resultCode != 0 {
      try visitor.visitSingularUInt32Field(value: self.resultCode, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: CIM_Login_CIMLogoutRsp, rhs: CIM_Login_CIMLogoutRsp) -> Bool {
    if lhs.resultCode != rhs.resultCode {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension CIM_Login_CIMHeartBeat: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".CIMHeartBeat"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: CIM_Login_CIMHeartBeat, rhs: CIM_Login_CIMHeartBeat) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}