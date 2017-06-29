
# Create parameter parser for MessagePack
msgpack_parser = -> (raw_post) { MessagePack.unpack(raw_post) || {} }
ActionDispatch::Request.parameter_parsers.merge! msgpack: msgpack_parser
