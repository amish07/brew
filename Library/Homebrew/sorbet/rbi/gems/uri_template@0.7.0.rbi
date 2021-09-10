# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `uri_template` gem.
# Please instead update this file by running `bin/tapioca sync`.

# typed: true

module URITemplate
  extend ::URITemplate::ClassMethods

  mixes_in_class_methods ::URITemplate::ClassMethods

  def +(other, *args, &block); end
  def /(other, *args, &block); end
  def ==(other, *args, &block); end
  def >>(other, *args, &block); end
  def absolute?; end
  def concat(other, *args, &block); end
  def concat_without_coercion(other); end
  def eq(other, *args, &block); end
  def eq_without_coercion(other); end
  def expand(variables = T.unsafe(nil)); end
  def expand_partial(variables = T.unsafe(nil)); end
  def host?; end
  def path_concat(other, *args, &block); end
  def path_concat_without_coercion(other); end
  def pattern; end
  def relative?; end
  def scheme?; end
  def static_characters; end
  def to_s; end
  def tokens; end
  def type; end
  def variables; end

  private

  def normalize_variables(variables); end
  def remove_double_slash(first_tokens, second_tokens); end
  def scheme_and_host; end

  class << self
    def apply(a, method, b, *args); end
    def coerce(a, b); end
    def coerce_first_arg(meth); end
    def new(*args); end
    def resolve_class(*args); end
  end
end

module URITemplate::ClassMethods
  def convert(x); end
  def included(base); end
  def try_convert(x); end
end

class URITemplate::Colon
  include ::URITemplate
  extend ::URITemplate::ClassMethods

  def initialize(pattern); end

  def extract(uri); end
  def pattern; end
  def to_r; end
  def tokens; end
  def type; end

  protected

  def tokenize!; end

  class << self
    def try_convert(x); end
  end
end

class URITemplate::Colon::InvalidValue < ::StandardError
  include ::URITemplate::InvalidValue

  def initialize(variable, value); end

  def value; end
  def variable; end

  protected

  def generate_message; end
end

class URITemplate::Colon::InvalidValue::SplatIsNotAnArray < ::URITemplate::Colon::InvalidValue; end
class URITemplate::Colon::Token; end

class URITemplate::Colon::Token::Splat < ::URITemplate::Colon::Token::Variable
  def initialize(index); end

  def expand(vars); end
  def index; end
  def to_r; end
end

URITemplate::Colon::Token::Splat::SPLAT = T.let(T.unsafe(nil), String)

class URITemplate::Colon::Token::Static < ::URITemplate::Colon::Token
  include ::URITemplate::Token
  include ::URITemplate::Literal

  def initialize(str); end

  def expand(_); end
  def to_r; end
end

class URITemplate::Colon::Token::Variable < ::URITemplate::Colon::Token
  include ::URITemplate::Token
  include ::URITemplate::Expression

  def initialize(name); end

  def expand(vars); end
  def name; end
  def to_r; end
  def to_s; end
end

URITemplate::Colon::VAR = T.let(T.unsafe(nil), Regexp)

module URITemplate::Expression
  include ::URITemplate::Token

  def expression?; end
  def literal?; end
  def variables; end
end

URITemplate::HOST_REGEX = T.let(T.unsafe(nil), Regexp)
module URITemplate::Invalid; end
module URITemplate::InvalidValue; end

module URITemplate::Literal
  include ::URITemplate::Token

  def ends_with_slash?; end
  def expand(_); end
  def expand_partial(_); end
  def expression?; end
  def literal?; end
  def size; end
  def starts_with_slash?; end
  def string; end
  def to_s; end
end

URITemplate::Literal::SLASH = T.let(T.unsafe(nil), String)

class URITemplate::RFC6570
  include ::URITemplate
  extend ::URITemplate::ClassMethods
  extend ::Forwardable
  extend ::URITemplate::RFC6570::ClassMethods

  def initialize(pattern_or_tokens, options = T.unsafe(nil)); end

  def ===(*args, &block); end
  def extract(uri_or_match, post_processing = T.unsafe(nil)); end
  def extract_simple(uri_or_match); end
  def level; end
  def match(*args, &block); end
  def options; end
  def to_r; end
  def tokens; end
  def type; end

  protected

  def extract_matchdata(matchdata, post_processing); end
  def tokenize!; end
end

URITemplate::RFC6570::CHARACTER_CLASSES = T.let(T.unsafe(nil), Hash)
URITemplate::RFC6570::CONVERT_RESULT = T.let(T.unsafe(nil), Array)
URITemplate::RFC6570::CONVERT_VALUES = T.let(T.unsafe(nil), Array)

module URITemplate::RFC6570::ClassMethods
  def try_convert(x); end
  def valid?(pattern); end
end

URITemplate::RFC6570::DEFAULT_PROCESSING = T.let(T.unsafe(nil), Array)
URITemplate::RFC6570::EXPRESSION = T.let(T.unsafe(nil), Regexp)

class URITemplate::RFC6570::Expression < ::URITemplate::RFC6570::Token
  include ::URITemplate::Token
  include ::URITemplate::Expression
  extend ::URITemplate::RFC6570::Expression::ClassMethods

  def initialize(vars); end

  def arity; end
  def expand(vars); end
  def expand_partial(vars); end
  def extract(position, matched); end
  def level; end
  def to_s; end
  def variables; end

  protected

  def cut(str, chars); end
  def decode(x, split = T.unsafe(nil)); end
  def empty_literals?(list); end
  def escape(x); end
  def pair(key, value, max_length = T.unsafe(nil), &block); end
  def regex_builder; end
  def transform_array(name, ary, expand, max_length); end
  def transform_hash(name, hsh, expand, max_length); end
  def unescape(x); end

  private

  def expand_one(name, value, expand, max_length); end
  def extracted_nil; end
  def length_limited?(max_length); end
end

URITemplate::RFC6570::Expression::BASE_LEVEL = T.let(T.unsafe(nil), Integer)
class URITemplate::RFC6570::Expression::Basic < ::URITemplate::RFC6570::Expression::Unnamed; end
URITemplate::RFC6570::Expression::Basic::BULK_FOLLOW_UP = URITemplate::RFC6570::Expression::Basic
URITemplate::RFC6570::Expression::Basic::FOLLOW_UP = URITemplate::RFC6570::Expression::Basic
URITemplate::RFC6570::Expression::CHARACTER_CLASS = T.let(T.unsafe(nil), Hash)
URITemplate::RFC6570::Expression::COMMA = T.let(T.unsafe(nil), String)

module URITemplate::RFC6570::Expression::ClassMethods
  def generate_hash_extractor(max_length); end
  def hash_extractor(max_length); end
  def hash_extractors; end
  def regex_builder; end
end

class URITemplate::RFC6570::Expression::FormQuery < ::URITemplate::RFC6570::Expression::Named; end
URITemplate::RFC6570::Expression::FormQuery::BASE_LEVEL = T.let(T.unsafe(nil), Integer)
URITemplate::RFC6570::Expression::FormQuery::BULK_FOLLOW_UP = URITemplate::RFC6570::Expression::FormQueryContinuation
URITemplate::RFC6570::Expression::FormQuery::FOLLOW_UP = URITemplate::RFC6570::Expression::Basic
URITemplate::RFC6570::Expression::FormQuery::OPERATOR = T.let(T.unsafe(nil), String)
URITemplate::RFC6570::Expression::FormQuery::PREFIX = T.let(T.unsafe(nil), String)
URITemplate::RFC6570::Expression::FormQuery::SEPARATOR = T.let(T.unsafe(nil), String)
class URITemplate::RFC6570::Expression::FormQueryContinuation < ::URITemplate::RFC6570::Expression::Named; end
URITemplate::RFC6570::Expression::FormQueryContinuation::BASE_LEVEL = T.let(T.unsafe(nil), Integer)
URITemplate::RFC6570::Expression::FormQueryContinuation::BULK_FOLLOW_UP = URITemplate::RFC6570::Expression::FormQueryContinuation
URITemplate::RFC6570::Expression::FormQueryContinuation::FOLLOW_UP = URITemplate::RFC6570::Expression::Basic
URITemplate::RFC6570::Expression::FormQueryContinuation::OPERATOR = T.let(T.unsafe(nil), String)
URITemplate::RFC6570::Expression::FormQueryContinuation::PREFIX = T.let(T.unsafe(nil), String)
URITemplate::RFC6570::Expression::FormQueryContinuation::SEPARATOR = T.let(T.unsafe(nil), String)

class URITemplate::RFC6570::Expression::Fragment < ::URITemplate::RFC6570::Expression::Unnamed
  def escape(x); end
  def unescape(x); end
end

URITemplate::RFC6570::Expression::Fragment::BASE_LEVEL = T.let(T.unsafe(nil), Integer)
URITemplate::RFC6570::Expression::Fragment::BULK_FOLLOW_UP = URITemplate::RFC6570::Expression::Reserved
URITemplate::RFC6570::Expression::Fragment::CHARACTER_CLASS = T.let(T.unsafe(nil), Hash)
URITemplate::RFC6570::Expression::Fragment::FOLLOW_UP = URITemplate::RFC6570::Expression::Reserved
URITemplate::RFC6570::Expression::Fragment::OPERATOR = T.let(T.unsafe(nil), String)
URITemplate::RFC6570::Expression::Fragment::PREFIX = T.let(T.unsafe(nil), String)
URITemplate::RFC6570::Expression::LIST_CONNECTOR = T.let(T.unsafe(nil), String)
class URITemplate::RFC6570::Expression::Label < ::URITemplate::RFC6570::Expression::Unnamed; end
URITemplate::RFC6570::Expression::Label::BASE_LEVEL = T.let(T.unsafe(nil), Integer)
URITemplate::RFC6570::Expression::Label::BULK_FOLLOW_UP = URITemplate::RFC6570::Expression::Label
URITemplate::RFC6570::Expression::Label::FOLLOW_UP = URITemplate::RFC6570::Expression::Label
URITemplate::RFC6570::Expression::Label::OPERATOR = T.let(T.unsafe(nil), String)
URITemplate::RFC6570::Expression::Label::PREFIX = T.let(T.unsafe(nil), String)
URITemplate::RFC6570::Expression::Label::SEPARATOR = T.let(T.unsafe(nil), String)

class URITemplate::RFC6570::Expression::Named < ::URITemplate::RFC6570::Expression
  def expand_partial(vars); end
  def to_r_source; end

  protected

  def self_pair(key, value, max_length = T.unsafe(nil), &block); end

  private

  def after_expand(name, splitted); end
  def extracted_nil; end
end

URITemplate::RFC6570::Expression::OPERATOR = T.let(T.unsafe(nil), String)
URITemplate::RFC6570::Expression::PAIR_CONNECTOR = T.let(T.unsafe(nil), String)
URITemplate::RFC6570::Expression::PAIR_IF_EMPTY = T.let(T.unsafe(nil), TrueClass)
URITemplate::RFC6570::Expression::PREFIX = T.let(T.unsafe(nil), String)

class URITemplate::RFC6570::Expression::Path < ::URITemplate::RFC6570::Expression::Unnamed
  def starts_with_slash?; end
end

URITemplate::RFC6570::Expression::Path::BASE_LEVEL = T.let(T.unsafe(nil), Integer)
URITemplate::RFC6570::Expression::Path::BULK_FOLLOW_UP = URITemplate::RFC6570::Expression::Path
URITemplate::RFC6570::Expression::Path::FOLLOW_UP = URITemplate::RFC6570::Expression::Path
URITemplate::RFC6570::Expression::Path::OPERATOR = T.let(T.unsafe(nil), String)
URITemplate::RFC6570::Expression::Path::PREFIX = T.let(T.unsafe(nil), String)
URITemplate::RFC6570::Expression::Path::SEPARATOR = T.let(T.unsafe(nil), String)
class URITemplate::RFC6570::Expression::PathParameters < ::URITemplate::RFC6570::Expression::Named; end
URITemplate::RFC6570::Expression::PathParameters::BASE_LEVEL = T.let(T.unsafe(nil), Integer)
URITemplate::RFC6570::Expression::PathParameters::BULK_FOLLOW_UP = URITemplate::RFC6570::Expression::PathParameters
URITemplate::RFC6570::Expression::PathParameters::FOLLOW_UP = URITemplate::RFC6570::Expression::PathParameters
URITemplate::RFC6570::Expression::PathParameters::OPERATOR = T.let(T.unsafe(nil), String)
URITemplate::RFC6570::Expression::PathParameters::PREFIX = T.let(T.unsafe(nil), String)
URITemplate::RFC6570::Expression::PathParameters::SEPARATOR = T.let(T.unsafe(nil), String)

class URITemplate::RFC6570::Expression::Reserved < ::URITemplate::RFC6570::Expression::Unnamed
  def escape(x); end
  def host?; end
  def scheme?; end
  def unescape(x); end
end

URITemplate::RFC6570::Expression::Reserved::BASE_LEVEL = T.let(T.unsafe(nil), Integer)
URITemplate::RFC6570::Expression::Reserved::BULK_FOLLOW_UP = URITemplate::RFC6570::Expression::Reserved
URITemplate::RFC6570::Expression::Reserved::CHARACTER_CLASS = T.let(T.unsafe(nil), Hash)
URITemplate::RFC6570::Expression::Reserved::FOLLOW_UP = URITemplate::RFC6570::Expression::Reserved
URITemplate::RFC6570::Expression::Reserved::OPERATOR = T.let(T.unsafe(nil), String)
URITemplate::RFC6570::Expression::SEPARATOR = T.let(T.unsafe(nil), String)
URITemplate::RFC6570::Expression::SPLITTER = T.let(T.unsafe(nil), Regexp)

class URITemplate::RFC6570::Expression::Unnamed < ::URITemplate::RFC6570::Expression
  def self_pair(_, value, max_length = T.unsafe(nil), &block); end
  def to_r_source; end

  private

  def after_expand(name, splitted); end
  def transform_array(name, ary, expand, max_length); end
  def transform_hash(name, hsh, expand, max_length); end
end

class URITemplate::RFC6570::Invalid < ::StandardError
  include ::URITemplate::Invalid

  def initialize(source, position); end

  def pattern; end
  def position; end
end

URITemplate::RFC6570::LITERAL = T.let(T.unsafe(nil), Regexp)

class URITemplate::RFC6570::Literal < ::URITemplate::RFC6570::Token
  include ::URITemplate::Token
  include ::URITemplate::Literal

  def initialize(string); end

  def level; end
  def to_r_source(*_); end
  def to_s; end
end

URITemplate::RFC6570::NO_PROCESSING = T.let(T.unsafe(nil), Array)
URITemplate::RFC6570::OPERATORS = T.let(T.unsafe(nil), Hash)

class URITemplate::RFC6570::RegexBuilder
  def initialize(expression_class); end

  def <<(arg); end
  def capture(&block); end
  def character_class(max_length = T.unsafe(nil), min = T.unsafe(nil)); end
  def character_class_with_comma(max_length = T.unsafe(nil), min = T.unsafe(nil)); end
  def escaped_pair_connector; end
  def escaped_prefix; end
  def escaped_separator; end
  def group(capture = T.unsafe(nil)); end
  def join; end
  def length(*args); end
  def lookahead; end
  def negative_lookahead; end
  def push(*args); end
  def reluctant; end
  def separated_list(first = T.unsafe(nil), length = T.unsafe(nil), min = T.unsafe(nil), &block); end

  private

  def format_length(len, min = T.unsafe(nil)); end
end

URITemplate::RFC6570::TYPE = T.let(T.unsafe(nil), Symbol)
class URITemplate::RFC6570::Token; end

class URITemplate::RFC6570::Tokenizer
  include ::Enumerable

  def initialize(source, ops); end

  def each; end
  def source; end
end

URITemplate::RFC6570::URI = T.let(T.unsafe(nil), Regexp)

module URITemplate::RFC6570::Utils
  include ::URITemplate::Utils::StringEncoding::Encode
  include ::URITemplate::Utils::StringEncoding
  include ::URITemplate::Utils::Escaping::Pure
  include ::URITemplate::Utils
  extend ::URITemplate::Utils::StringEncoding::Encode
  extend ::URITemplate::Utils::StringEncoding
  extend ::URITemplate::Utils::Escaping::Pure
  extend ::URITemplate::Utils
  extend ::URITemplate::RFC6570::Utils

  def def?(value); end
end

URITemplate::RFC6570::VAR = T.let(T.unsafe(nil), Regexp)

class URITemplate::RegexpEnumerator
  include ::Enumerable

  def initialize(regexp, options = T.unsafe(nil)); end

  def each(str); end
end

URITemplate::SCHEME_REGEX = T.let(T.unsafe(nil), Regexp)

module URITemplate::Token
  def ends_with_slash?; end
  def expand(variables); end
  def expand_partial(variables); end
  def host?; end
  def scheme?; end
  def size; end
  def starts_with_slash?; end
  def to_s; end
  def variables; end
end

URITemplate::Token::EMPTY_ARRAY = T.let(T.unsafe(nil), Array)
URITemplate::URI_SPLIT = T.let(T.unsafe(nil), Regexp)

class URITemplate::Unconvertable < ::StandardError
  def initialize(object); end

  def object; end
end

module URITemplate::Utils
  include ::URITemplate::Utils::StringEncoding::Encode
  include ::URITemplate::Utils::StringEncoding
  include ::URITemplate::Utils::Escaping::Pure
  extend ::URITemplate::Utils::StringEncoding::Encode
  extend ::URITemplate::Utils::StringEncoding
  extend ::URITemplate::Utils::Escaping::Pure
  extend ::URITemplate::Utils

  def compact_regexp(rx); end
  def object_to_param(object); end
  def pair_array?(a); end
  def pair_array_to_hash(x, careful = T.unsafe(nil)); end
  def pair_array_to_hash2(x); end
  def use_unicode?; end
end

module URITemplate::Utils::Escaping; end

module URITemplate::Utils::Escaping::Pure
  def escape_uri(s); end
  def escape_url(s); end
  def unescape_uri(s); end
  def unescape_url(s); end
  def using_escape_utils?; end
end

URITemplate::Utils::Escaping::Pure::PCT = T.let(T.unsafe(nil), Regexp)
URITemplate::Utils::Escaping::Pure::URI_ESCAPED = T.let(T.unsafe(nil), Regexp)
URITemplate::Utils::Escaping::Pure::URL_ESCAPED = T.let(T.unsafe(nil), Regexp)
URITemplate::Utils::KCODE_UTF8 = T.let(T.unsafe(nil), Integer)

module URITemplate::Utils::StringEncoding
  include ::URITemplate::Utils::StringEncoding::Encode
end

module URITemplate::Utils::StringEncoding::Encode
  def force_utf8(str); end
  def to_ascii(str); end
  def to_utf8(str); end
end

module URITemplate::Utils::StringEncoding::Fallback
  def force_utf8(str); end
  def to_ascii(str); end
  def to_utf8(str); end
end

URITemplate::VERSIONS = T.let(T.unsafe(nil), Hash)
