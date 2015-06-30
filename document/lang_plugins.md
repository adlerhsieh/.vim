# 2. 各語言外掛

以下是針對各個語言的外掛，基本上以Ruby為主，如果你不是Ruby開發者，這部份可以直接略過。

## [Bundler] (https://github.com/tpope/vim-bundler)

從名字就可以知道這個是幹嘛用的，主要是可以在Vim當中直接使用`bundle`指令。

##### 熱鍵 & 特色

`:Bundle` 等於執行 `bundle install`

`:Bopen` 會打開專案內的`Gemfile`

另外他也協助highlight在Gemfile當中的關鍵字，其他設定可直接至官方repo查看。

## [Coffee Script](https://github.com/kchmck/vim-coffee-script)

主要協助coffee script的Syntax highlight和自動補字，假如你是Rails開發者，就不需要用到compile功能，也就是說不需要設定也可以正常使用。

## Ruby自動結尾 [endwise](https://github.com/tpope/vim-endwise)

在輸入`if`、`do`等關鍵字後，按下`Enter`，會自動補上`end`關鍵字。

## [Vim-Rails](https://github.com/tpope/vim-rails)、[Vim-Ruby](https://github.com/vim-ruby/vim-ruby)、[Vim-RSpec](https://github.com/thoughtbot/vim-rspec)、[Vim-rvm](https://github.com/tpope/vim-rvm)

各種套件，主要用於syntax highlight和直接從vim內部下terminal指令，可參考各官方repo的使用方法。

## [Vim-Go](https://github.com/fatih/vim-go)

Go語言套件，可參考[hSATAC前輩的配置說明](http://blog.hsatac.net/2013/08/my-vimrc-for-golang/)。
