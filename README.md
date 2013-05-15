# Ans::RegisterJson

js で使用出来る形式でデータを出力するヘルパーを追加する

## Installation

Add this line to your application's Gemfile:

    gem 'ans-register_json'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ans-register_json

## Usage

    # app/controllers/application_controller
    include Ans::RegisterJson::Controller

    # app/helpers/application_helper
    include Ans::RegisterJson::View

    # app/views/layout/application
    <%= dump_data %>

コントローラーとビューに include して、レイアウトファイルにデータを dump するコードを追加すると、以下の様に使用出来る

    # コントローラー
    def show
        @post = Post.find(1)
        data["post"] = @post
    end

    # javascript
    data.post // => @post の json データ

## Setting

可能な設定とデフォルト

    # config/initializers/ans-register_json.rb
    Ans::RegisterJson.configure do |config|

        # コントローラーで使用するデータメソッド名
        config.data_method = "data"

        # view で使用する javascript 出力ヘルパーメソッド名
        config.dump_method = "dump_data"

        # javascript に出力する際のグローバル変数の名前
        config.json_data_name = "data"

    end

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
