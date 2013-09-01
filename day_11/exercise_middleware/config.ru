require './my_middl'
use ErrorThrow::Throw
run ->(env) do
  [200, {}, "HEllo"]
end
