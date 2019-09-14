// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: MapHeader.proto

#ifndef PROTOBUF_MapHeader_2eproto__INCLUDED
#define PROTOBUF_MapHeader_2eproto__INCLUDED

#include <string>

#include <google/protobuf/stubs/common.h>

#if GOOGLE_PROTOBUF_VERSION < 2006000
#error This file was generated by a newer version of protoc which is
#error incompatible with your Protocol Buffer headers.  Please update
#error your headers.
#endif
#if 2006001 < GOOGLE_PROTOBUF_MIN_PROTOC_VERSION
#error This file was generated by an older version of protoc which is
#error incompatible with your Protocol Buffer headers.  Please
#error regenerate this file with a newer version of protoc.
#endif

#include <google/protobuf/generated_message_util.h>
#include <google/protobuf/message.h>
#include <google/protobuf/repeated_field.h>
#include <google/protobuf/extension_set.h>
#include <google/protobuf/unknown_field_set.h>
// @@protoc_insertion_point(includes)

namespace tsdf2 {

// Internal implementation detail -- do not call these.
void  protobuf_AddDesc_MapHeader_2eproto();
void protobuf_AssignDesc_MapHeader_2eproto();
void protobuf_ShutdownFile_MapHeader_2eproto();

class MapHeaderProto;

// ===================================================================

class MapHeaderProto : public ::google::protobuf::Message {
 public:
  MapHeaderProto();
  virtual ~MapHeaderProto();

  MapHeaderProto(const MapHeaderProto& from);

  inline MapHeaderProto& operator=(const MapHeaderProto& from) {
    CopyFrom(from);
    return *this;
  }

  inline const ::google::protobuf::UnknownFieldSet& unknown_fields() const {
    return _unknown_fields_;
  }

  inline ::google::protobuf::UnknownFieldSet* mutable_unknown_fields() {
    return &_unknown_fields_;
  }

  static const ::google::protobuf::Descriptor* descriptor();
  static const MapHeaderProto& default_instance();

  void Swap(MapHeaderProto* other);

  // implements Message ----------------------------------------------

  MapHeaderProto* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const MapHeaderProto& from);
  void MergeFrom(const MapHeaderProto& from);
  void Clear();
  bool IsInitialized() const;

  int ByteSize() const;
  bool MergePartialFromCodedStream(
      ::google::protobuf::io::CodedInputStream* input);
  void SerializeWithCachedSizes(
      ::google::protobuf::io::CodedOutputStream* output) const;
  ::google::protobuf::uint8* SerializeWithCachedSizesToArray(::google::protobuf::uint8* output) const;
  int GetCachedSize() const { return _cached_size_; }
  private:
  void SharedCtor();
  void SharedDtor();
  void SetCachedSize(int size) const;
  public:
  ::google::protobuf::Metadata GetMetadata() const;

  // nested types ----------------------------------------------------

  // accessors -------------------------------------------------------

  // optional double voxel_size = 1;
  inline bool has_voxel_size() const;
  inline void clear_voxel_size();
  static const int kVoxelSizeFieldNumber = 1;
  inline double voxel_size() const;
  inline void set_voxel_size(double value);

  // optional double voxels_per_volume_side = 2;
  inline bool has_voxels_per_volume_side() const;
  inline void clear_voxels_per_volume_side();
  static const int kVoxelsPerVolumeSideFieldNumber = 2;
  inline double voxels_per_volume_side() const;
  inline void set_voxels_per_volume_side(double value);

  // optional uint32 max_ntsdf_voxel_weight = 3;
  inline bool has_max_ntsdf_voxel_weight() const;
  inline void clear_max_ntsdf_voxel_weight();
  static const int kMaxNtsdfVoxelWeightFieldNumber = 3;
  inline ::google::protobuf::uint32 max_ntsdf_voxel_weight() const;
  inline void set_max_ntsdf_voxel_weight(::google::protobuf::uint32 value);

  // optional bool use_color = 4;
  inline bool has_use_color() const;
  inline void clear_use_color();
  static const int kUseColorFieldNumber = 4;
  inline bool use_color() const;
  inline void set_use_color(bool value);

  // optional double meters_to_ntsdf = 5;
  inline bool has_meters_to_ntsdf() const;
  inline void clear_meters_to_ntsdf();
  static const int kMetersToNtsdfFieldNumber = 5;
  inline double meters_to_ntsdf() const;
  inline void set_meters_to_ntsdf(double value);

  // optional uint32 num_volumes = 6;
  inline bool has_num_volumes() const;
  inline void clear_num_volumes();
  static const int kNumVolumesFieldNumber = 6;
  inline ::google::protobuf::uint32 num_volumes() const;
  inline void set_num_volumes(::google::protobuf::uint32 value);

  // @@protoc_insertion_point(class_scope:tsdf2.MapHeaderProto)
 private:
  inline void set_has_voxel_size();
  inline void clear_has_voxel_size();
  inline void set_has_voxels_per_volume_side();
  inline void clear_has_voxels_per_volume_side();
  inline void set_has_max_ntsdf_voxel_weight();
  inline void clear_has_max_ntsdf_voxel_weight();
  inline void set_has_use_color();
  inline void clear_has_use_color();
  inline void set_has_meters_to_ntsdf();
  inline void clear_has_meters_to_ntsdf();
  inline void set_has_num_volumes();
  inline void clear_has_num_volumes();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::uint32 _has_bits_[1];
  mutable int _cached_size_;
  double voxel_size_;
  double voxels_per_volume_side_;
  ::google::protobuf::uint32 max_ntsdf_voxel_weight_;
  bool use_color_;
  double meters_to_ntsdf_;
  ::google::protobuf::uint32 num_volumes_;
  friend void  protobuf_AddDesc_MapHeader_2eproto();
  friend void protobuf_AssignDesc_MapHeader_2eproto();
  friend void protobuf_ShutdownFile_MapHeader_2eproto();

  void InitAsDefaultInstance();
  static MapHeaderProto* default_instance_;
};
// ===================================================================


// ===================================================================

// MapHeaderProto

// optional double voxel_size = 1;
inline bool MapHeaderProto::has_voxel_size() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void MapHeaderProto::set_has_voxel_size() {
  _has_bits_[0] |= 0x00000001u;
}
inline void MapHeaderProto::clear_has_voxel_size() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void MapHeaderProto::clear_voxel_size() {
  voxel_size_ = 0;
  clear_has_voxel_size();
}
inline double MapHeaderProto::voxel_size() const {
  // @@protoc_insertion_point(field_get:tsdf2.MapHeaderProto.voxel_size)
  return voxel_size_;
}
inline void MapHeaderProto::set_voxel_size(double value) {
  set_has_voxel_size();
  voxel_size_ = value;
  // @@protoc_insertion_point(field_set:tsdf2.MapHeaderProto.voxel_size)
}

// optional double voxels_per_volume_side = 2;
inline bool MapHeaderProto::has_voxels_per_volume_side() const {
  return (_has_bits_[0] & 0x00000002u) != 0;
}
inline void MapHeaderProto::set_has_voxels_per_volume_side() {
  _has_bits_[0] |= 0x00000002u;
}
inline void MapHeaderProto::clear_has_voxels_per_volume_side() {
  _has_bits_[0] &= ~0x00000002u;
}
inline void MapHeaderProto::clear_voxels_per_volume_side() {
  voxels_per_volume_side_ = 0;
  clear_has_voxels_per_volume_side();
}
inline double MapHeaderProto::voxels_per_volume_side() const {
  // @@protoc_insertion_point(field_get:tsdf2.MapHeaderProto.voxels_per_volume_side)
  return voxels_per_volume_side_;
}
inline void MapHeaderProto::set_voxels_per_volume_side(double value) {
  set_has_voxels_per_volume_side();
  voxels_per_volume_side_ = value;
  // @@protoc_insertion_point(field_set:tsdf2.MapHeaderProto.voxels_per_volume_side)
}

// optional uint32 max_ntsdf_voxel_weight = 3;
inline bool MapHeaderProto::has_max_ntsdf_voxel_weight() const {
  return (_has_bits_[0] & 0x00000004u) != 0;
}
inline void MapHeaderProto::set_has_max_ntsdf_voxel_weight() {
  _has_bits_[0] |= 0x00000004u;
}
inline void MapHeaderProto::clear_has_max_ntsdf_voxel_weight() {
  _has_bits_[0] &= ~0x00000004u;
}
inline void MapHeaderProto::clear_max_ntsdf_voxel_weight() {
  max_ntsdf_voxel_weight_ = 0u;
  clear_has_max_ntsdf_voxel_weight();
}
inline ::google::protobuf::uint32 MapHeaderProto::max_ntsdf_voxel_weight() const {
  // @@protoc_insertion_point(field_get:tsdf2.MapHeaderProto.max_ntsdf_voxel_weight)
  return max_ntsdf_voxel_weight_;
}
inline void MapHeaderProto::set_max_ntsdf_voxel_weight(::google::protobuf::uint32 value) {
  set_has_max_ntsdf_voxel_weight();
  max_ntsdf_voxel_weight_ = value;
  // @@protoc_insertion_point(field_set:tsdf2.MapHeaderProto.max_ntsdf_voxel_weight)
}

// optional bool use_color = 4;
inline bool MapHeaderProto::has_use_color() const {
  return (_has_bits_[0] & 0x00000008u) != 0;
}
inline void MapHeaderProto::set_has_use_color() {
  _has_bits_[0] |= 0x00000008u;
}
inline void MapHeaderProto::clear_has_use_color() {
  _has_bits_[0] &= ~0x00000008u;
}
inline void MapHeaderProto::clear_use_color() {
  use_color_ = false;
  clear_has_use_color();
}
inline bool MapHeaderProto::use_color() const {
  // @@protoc_insertion_point(field_get:tsdf2.MapHeaderProto.use_color)
  return use_color_;
}
inline void MapHeaderProto::set_use_color(bool value) {
  set_has_use_color();
  use_color_ = value;
  // @@protoc_insertion_point(field_set:tsdf2.MapHeaderProto.use_color)
}

// optional double meters_to_ntsdf = 5;
inline bool MapHeaderProto::has_meters_to_ntsdf() const {
  return (_has_bits_[0] & 0x00000010u) != 0;
}
inline void MapHeaderProto::set_has_meters_to_ntsdf() {
  _has_bits_[0] |= 0x00000010u;
}
inline void MapHeaderProto::clear_has_meters_to_ntsdf() {
  _has_bits_[0] &= ~0x00000010u;
}
inline void MapHeaderProto::clear_meters_to_ntsdf() {
  meters_to_ntsdf_ = 0;
  clear_has_meters_to_ntsdf();
}
inline double MapHeaderProto::meters_to_ntsdf() const {
  // @@protoc_insertion_point(field_get:tsdf2.MapHeaderProto.meters_to_ntsdf)
  return meters_to_ntsdf_;
}
inline void MapHeaderProto::set_meters_to_ntsdf(double value) {
  set_has_meters_to_ntsdf();
  meters_to_ntsdf_ = value;
  // @@protoc_insertion_point(field_set:tsdf2.MapHeaderProto.meters_to_ntsdf)
}

// optional uint32 num_volumes = 6;
inline bool MapHeaderProto::has_num_volumes() const {
  return (_has_bits_[0] & 0x00000020u) != 0;
}
inline void MapHeaderProto::set_has_num_volumes() {
  _has_bits_[0] |= 0x00000020u;
}
inline void MapHeaderProto::clear_has_num_volumes() {
  _has_bits_[0] &= ~0x00000020u;
}
inline void MapHeaderProto::clear_num_volumes() {
  num_volumes_ = 0u;
  clear_has_num_volumes();
}
inline ::google::protobuf::uint32 MapHeaderProto::num_volumes() const {
  // @@protoc_insertion_point(field_get:tsdf2.MapHeaderProto.num_volumes)
  return num_volumes_;
}
inline void MapHeaderProto::set_num_volumes(::google::protobuf::uint32 value) {
  set_has_num_volumes();
  num_volumes_ = value;
  // @@protoc_insertion_point(field_set:tsdf2.MapHeaderProto.num_volumes)
}


// @@protoc_insertion_point(namespace_scope)

}  // namespace tsdf2

#ifndef SWIG
namespace google {
namespace protobuf {


}  // namespace google
}  // namespace protobuf
#endif  // SWIG

// @@protoc_insertion_point(global_scope)

#endif  // PROTOBUF_MapHeader_2eproto__INCLUDED
