# rbenv-china-mirror

这是一个 [rbenv](https://github.com/sstephenson/rbenv) 插件，作用是使用 [Ruby China 的镜像](https://cache.ruby-china.org/)安装 Ruby。

## 安装方法

在命令行中执行下述命令：

```sh
$ git clone https://github.com/andorchen/rbenv-china-mirror.git ~/.rbenv/plugins/rbenv-china-mirror
```

## 使用方法

像往常一样安装 Ruby 即可，无需额外设置。

```sh
$ rbenv install 2.4.0
```

## 升级方法

进入 `rbenv-china-mirror` 插件所在的目录，拉取这个仓库里的最新代码：

```
$ cd ~/.rbenv/plugins/rbenv-china-mirror
$ git pull
```

## 卸载方法

进入 `~/.rbenv/plugins/` 目录，把 `rbenv-china-mirror` 文件夹整个删除即可。

## 工作原理

安装前，替换 Ruby 安装定义文件中 Ruby 的下载地址。安装后，再把地址改为原值。

## 作者

[Andor](http://about.ac)

## 许可证

MIT
