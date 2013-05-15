# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ans-register_json/version'

Gem::Specification.new do |gem|
  gem.name          = "ans-register_json"
  gem.version       = Ans::RegisterJson::VERSION
  gem.authors       = ["sakai shunsuke"]
  gem.email         = ["sakai@ans-web.co.jp"]
  gem.description   = %q{データを json 形式で js で使用出来る形で受け渡すメソッドを追加する}
  gem.summary       = %q{コントローラーからデータを js で使用出来る形で受け渡すメソッドを追加する}
  gem.homepage      = "https://github.com/answer/ans-register_json"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
