# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from voxblox_msgs/MeshBlock.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import voxblox_msgs.msg

class MeshBlock(genpy.Message):
  _md5sum = "6d5a456d47efe5b8b0afaf3286c9b421"
  _type = "voxblox_msgs/MeshBlock"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# Index of meshed points in block map
int64[3] index

voxblox_msgs/Triangle[] triangles

================================================================================
MSG: voxblox_msgs/Triangle
# Colored triangle used in meshing

# Position
float32[3] x
float32[3] y
float32[3] z

# Color
uint8[3] r
uint8[3] g
uint8[3] b
uint8[3] a
"""
  __slots__ = ['index','triangles']
  _slot_types = ['int64[3]','voxblox_msgs/Triangle[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       index,triangles

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MeshBlock, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.index is None:
        self.index = [0] * 3
      if self.triangles is None:
        self.triangles = []
    else:
      self.index = [0] * 3
      self.triangles = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      buff.write(_get_struct_3q().pack(*self.index))
      length = len(self.triangles)
      buff.write(_struct_I.pack(length))
      for val1 in self.triangles:
        buff.write(_get_struct_3f().pack(*val1.x))
        buff.write(_get_struct_3f().pack(*val1.y))
        buff.write(_get_struct_3f().pack(*val1.z))
        _x = val1.r
        # - if encoded as a list instead, serialize as bytes instead of string
        if type(_x) in [list, tuple]:
          buff.write(_get_struct_3B().pack(*_x))
        else:
          buff.write(_get_struct_3s().pack(_x))
        _x = val1.g
        # - if encoded as a list instead, serialize as bytes instead of string
        if type(_x) in [list, tuple]:
          buff.write(_get_struct_3B().pack(*_x))
        else:
          buff.write(_get_struct_3s().pack(_x))
        _x = val1.b
        # - if encoded as a list instead, serialize as bytes instead of string
        if type(_x) in [list, tuple]:
          buff.write(_get_struct_3B().pack(*_x))
        else:
          buff.write(_get_struct_3s().pack(_x))
        _x = val1.a
        # - if encoded as a list instead, serialize as bytes instead of string
        if type(_x) in [list, tuple]:
          buff.write(_get_struct_3B().pack(*_x))
        else:
          buff.write(_get_struct_3s().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.triangles is None:
        self.triangles = None
      end = 0
      start = end
      end += 24
      self.index = _get_struct_3q().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.triangles = []
      for i in range(0, length):
        val1 = voxblox_msgs.msg.Triangle()
        start = end
        end += 12
        val1.x = _get_struct_3f().unpack(str[start:end])
        start = end
        end += 12
        val1.y = _get_struct_3f().unpack(str[start:end])
        start = end
        end += 12
        val1.z = _get_struct_3f().unpack(str[start:end])
        start = end
        end += 3
        val1.r = str[start:end]
        start = end
        end += 3
        val1.g = str[start:end]
        start = end
        end += 3
        val1.b = str[start:end]
        start = end
        end += 3
        val1.a = str[start:end]
        self.triangles.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      buff.write(self.index.tostring())
      length = len(self.triangles)
      buff.write(_struct_I.pack(length))
      for val1 in self.triangles:
        buff.write(val1.x.tostring())
        buff.write(val1.y.tostring())
        buff.write(val1.z.tostring())
        _x = val1.r
        # - if encoded as a list instead, serialize as bytes instead of string
        if type(_x) in [list, tuple]:
          buff.write(_get_struct_3B().pack(*_x))
        else:
          buff.write(_get_struct_3s().pack(_x))
        _x = val1.g
        # - if encoded as a list instead, serialize as bytes instead of string
        if type(_x) in [list, tuple]:
          buff.write(_get_struct_3B().pack(*_x))
        else:
          buff.write(_get_struct_3s().pack(_x))
        _x = val1.b
        # - if encoded as a list instead, serialize as bytes instead of string
        if type(_x) in [list, tuple]:
          buff.write(_get_struct_3B().pack(*_x))
        else:
          buff.write(_get_struct_3s().pack(_x))
        _x = val1.a
        # - if encoded as a list instead, serialize as bytes instead of string
        if type(_x) in [list, tuple]:
          buff.write(_get_struct_3B().pack(*_x))
        else:
          buff.write(_get_struct_3s().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.triangles is None:
        self.triangles = None
      end = 0
      start = end
      end += 24
      self.index = numpy.frombuffer(str[start:end], dtype=numpy.int64, count=3)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.triangles = []
      for i in range(0, length):
        val1 = voxblox_msgs.msg.Triangle()
        start = end
        end += 12
        val1.x = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=3)
        start = end
        end += 12
        val1.y = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=3)
        start = end
        end += 12
        val1.z = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=3)
        start = end
        end += 3
        val1.r = str[start:end]
        start = end
        end += 3
        val1.g = str[start:end]
        start = end
        end += 3
        val1.b = str[start:end]
        start = end
        end += 3
        val1.a = str[start:end]
        self.triangles.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3s = None
def _get_struct_3s():
    global _struct_3s
    if _struct_3s is None:
        _struct_3s = struct.Struct("<3s")
    return _struct_3s
_struct_3B = None
def _get_struct_3B():
    global _struct_3B
    if _struct_3B is None:
        _struct_3B = struct.Struct("<3B")
    return _struct_3B
_struct_3q = None
def _get_struct_3q():
    global _struct_3q
    if _struct_3q is None:
        _struct_3q = struct.Struct("<3q")
    return _struct_3q
_struct_3f = None
def _get_struct_3f():
    global _struct_3f
    if _struct_3f is None:
        _struct_3f = struct.Struct("<3f")
    return _struct_3f
