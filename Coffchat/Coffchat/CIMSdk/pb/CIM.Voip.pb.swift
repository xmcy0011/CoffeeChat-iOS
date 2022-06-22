// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: CIM.Voip.proto
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

/// 音视频呼叫邀请
struct CIM_Voip_CIMVoipInviteReq {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// cmd id:		0x0401
  var creatorUserID: UInt64 = 0

  /// 被邀请方列表，如果是一对一，无需设置
  var inviteUserList: [UInt64] = []

  /// 通话类型
  var inviteType: CIM_Def_CIMVoipInviteType = .kCimVoipInviteTypeUnknown

  /// 频道信息，由服务端分配
  var channelInfo: CIM_Def_CIMChannelInfo {
    get {return _channelInfo ?? CIM_Def_CIMChannelInfo()}
    set {_channelInfo = newValue}
  }
  /// Returns true if `channelInfo` has been explicitly set.
  var hasChannelInfo: Bool {return self._channelInfo != nil}
  /// Clears the value of `channelInfo`. Subsequent reads from it will return its default value.
  mutating func clearChannelInfo() {self._channelInfo = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _channelInfo: CIM_Def_CIMChannelInfo? = nil
}

/// 音视频呼叫应答状态
struct CIM_Voip_CIMVoipInviteReply {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// cmd id:		0x0402
  var userID: UInt64 = 0

  /// 当前状态
  var rspCode: CIM_Def_CIMInviteRspCode = .kCimVoipInviteCodeUnknown

  /// 频道信息，由服务端分配
  var channelInfo: CIM_Def_CIMChannelInfo {
    get {return _channelInfo ?? CIM_Def_CIMChannelInfo()}
    set {_channelInfo = newValue}
  }
  /// Returns true if `channelInfo` has been explicitly set.
  var hasChannelInfo: Bool {return self._channelInfo != nil}
  /// Clears the value of `channelInfo`. Subsequent reads from it will return its default value.
  mutating func clearChannelInfo() {self._channelInfo = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _channelInfo: CIM_Def_CIMChannelInfo? = nil
}

/// 音视频呼叫ACK
/// 100 Trying->180 Ringing->200 Ok->ACK(this message)
struct CIM_Voip_CIMVoipInviteReplyAck {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// 频道信息，由服务端分配
  var channelInfo: CIM_Def_CIMChannelInfo {
    get {return _channelInfo ?? CIM_Def_CIMChannelInfo()}
    set {_channelInfo = newValue}
  }
  /// Returns true if `channelInfo` has been explicitly set.
  var hasChannelInfo: Bool {return self._channelInfo != nil}
  /// Clears the value of `channelInfo`. Subsequent reads from it will return its default value.
  mutating func clearChannelInfo() {self._channelInfo = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _channelInfo: CIM_Def_CIMChannelInfo? = nil
}

/// 心跳
struct CIM_Voip_CIMVoipHeartbeat {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// 挂断请求
struct CIM_Voip_CIMVoipByeReq {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// 本地通话时长计数
  var localCallTimeLen: UInt64 = 0

  /// 挂断方用户ID
  var userID: UInt64 = 0

  /// 频道信息
  var channelInfo: CIM_Def_CIMChannelInfo {
    get {return _channelInfo ?? CIM_Def_CIMChannelInfo()}
    set {_channelInfo = newValue}
  }
  /// Returns true if `channelInfo` has been explicitly set.
  var hasChannelInfo: Bool {return self._channelInfo != nil}
  /// Clears the value of `channelInfo`. Subsequent reads from it will return its default value.
  mutating func clearChannelInfo() {self._channelInfo = nil}

  /// 挂断原因
  var byeReason: CIM_Def_CIMVoipByeReason = .kCimVoipByeReasonUnknown

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _channelInfo: CIM_Def_CIMChannelInfo? = nil
}

/// 挂断响应
struct CIM_Voip_CIMVoipByeRsp {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// 结果
  var errorCode: CIM_Def_CIMErrorCode = .kCimErrUnknown

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// 挂断通知
struct CIM_Voip_CIMVoipByeNotify {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// 挂断方用户ID
  var userID: UInt64 = 0

  /// 频道信息
  var channelInfo: CIM_Def_CIMChannelInfo {
    get {return _channelInfo ?? CIM_Def_CIMChannelInfo()}
    set {_channelInfo = newValue}
  }
  /// Returns true if `channelInfo` has been explicitly set.
  var hasChannelInfo: Bool {return self._channelInfo != nil}
  /// Clears the value of `channelInfo`. Subsequent reads from it will return its default value.
  mutating func clearChannelInfo() {self._channelInfo = nil}

  /// 挂断原因
  var byeReason: CIM_Def_CIMVoipByeReason = .kCimVoipByeReasonUnknown

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _channelInfo: CIM_Def_CIMChannelInfo? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "CIM.Voip"

extension CIM_Voip_CIMVoipInviteReq: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".CIMVoipInviteReq"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "creator_user_id"),
    2: .standard(proto: "invite_user_list"),
    3: .standard(proto: "invite_type"),
    4: .standard(proto: "channel_info"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularUInt64Field(value: &self.creatorUserID)
      case 2: try decoder.decodeRepeatedUInt64Field(value: &self.inviteUserList)
      case 3: try decoder.decodeSingularEnumField(value: &self.inviteType)
      case 4: try decoder.decodeSingularMessageField(value: &self._channelInfo)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.creatorUserID != 0 {
      try visitor.visitSingularUInt64Field(value: self.creatorUserID, fieldNumber: 1)
    }
    if !self.inviteUserList.isEmpty {
      try visitor.visitPackedUInt64Field(value: self.inviteUserList, fieldNumber: 2)
    }
    if self.inviteType != .kCimVoipInviteTypeUnknown {
      try visitor.visitSingularEnumField(value: self.inviteType, fieldNumber: 3)
    }
    if let v = self._channelInfo {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: CIM_Voip_CIMVoipInviteReq, rhs: CIM_Voip_CIMVoipInviteReq) -> Bool {
    if lhs.creatorUserID != rhs.creatorUserID {return false}
    if lhs.inviteUserList != rhs.inviteUserList {return false}
    if lhs.inviteType != rhs.inviteType {return false}
    if lhs._channelInfo != rhs._channelInfo {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension CIM_Voip_CIMVoipInviteReply: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".CIMVoipInviteReply"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "user_id"),
    2: .standard(proto: "rsp_code"),
    3: .standard(proto: "channel_info"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularUInt64Field(value: &self.userID)
      case 2: try decoder.decodeSingularEnumField(value: &self.rspCode)
      case 3: try decoder.decodeSingularMessageField(value: &self._channelInfo)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.userID != 0 {
      try visitor.visitSingularUInt64Field(value: self.userID, fieldNumber: 1)
    }
    if self.rspCode != .kCimVoipInviteCodeUnknown {
      try visitor.visitSingularEnumField(value: self.rspCode, fieldNumber: 2)
    }
    if let v = self._channelInfo {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: CIM_Voip_CIMVoipInviteReply, rhs: CIM_Voip_CIMVoipInviteReply) -> Bool {
    if lhs.userID != rhs.userID {return false}
    if lhs.rspCode != rhs.rspCode {return false}
    if lhs._channelInfo != rhs._channelInfo {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension CIM_Voip_CIMVoipInviteReplyAck: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".CIMVoipInviteReplyAck"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "channel_info"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._channelInfo)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._channelInfo {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: CIM_Voip_CIMVoipInviteReplyAck, rhs: CIM_Voip_CIMVoipInviteReplyAck) -> Bool {
    if lhs._channelInfo != rhs._channelInfo {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension CIM_Voip_CIMVoipHeartbeat: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".CIMVoipHeartbeat"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: CIM_Voip_CIMVoipHeartbeat, rhs: CIM_Voip_CIMVoipHeartbeat) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension CIM_Voip_CIMVoipByeReq: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".CIMVoipByeReq"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "local_call_time_len"),
    2: .standard(proto: "user_id"),
    3: .standard(proto: "channel_info"),
    4: .standard(proto: "bye_reason"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularUInt64Field(value: &self.localCallTimeLen)
      case 2: try decoder.decodeSingularUInt64Field(value: &self.userID)
      case 3: try decoder.decodeSingularMessageField(value: &self._channelInfo)
      case 4: try decoder.decodeSingularEnumField(value: &self.byeReason)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.localCallTimeLen != 0 {
      try visitor.visitSingularUInt64Field(value: self.localCallTimeLen, fieldNumber: 1)
    }
    if self.userID != 0 {
      try visitor.visitSingularUInt64Field(value: self.userID, fieldNumber: 2)
    }
    if let v = self._channelInfo {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if self.byeReason != .kCimVoipByeReasonUnknown {
      try visitor.visitSingularEnumField(value: self.byeReason, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: CIM_Voip_CIMVoipByeReq, rhs: CIM_Voip_CIMVoipByeReq) -> Bool {
    if lhs.localCallTimeLen != rhs.localCallTimeLen {return false}
    if lhs.userID != rhs.userID {return false}
    if lhs._channelInfo != rhs._channelInfo {return false}
    if lhs.byeReason != rhs.byeReason {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension CIM_Voip_CIMVoipByeRsp: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".CIMVoipByeRsp"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "error_code"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularEnumField(value: &self.errorCode)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.errorCode != .kCimErrUnknown {
      try visitor.visitSingularEnumField(value: self.errorCode, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: CIM_Voip_CIMVoipByeRsp, rhs: CIM_Voip_CIMVoipByeRsp) -> Bool {
    if lhs.errorCode != rhs.errorCode {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension CIM_Voip_CIMVoipByeNotify: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".CIMVoipByeNotify"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "user_id"),
    2: .standard(proto: "channel_info"),
    3: .same(proto: "byeReason"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularUInt64Field(value: &self.userID)
      case 2: try decoder.decodeSingularMessageField(value: &self._channelInfo)
      case 3: try decoder.decodeSingularEnumField(value: &self.byeReason)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.userID != 0 {
      try visitor.visitSingularUInt64Field(value: self.userID, fieldNumber: 1)
    }
    if let v = self._channelInfo {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if self.byeReason != .kCimVoipByeReasonUnknown {
      try visitor.visitSingularEnumField(value: self.byeReason, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: CIM_Voip_CIMVoipByeNotify, rhs: CIM_Voip_CIMVoipByeNotify) -> Bool {
    if lhs.userID != rhs.userID {return false}
    if lhs._channelInfo != rhs._channelInfo {return false}
    if lhs.byeReason != rhs.byeReason {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}