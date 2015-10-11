# rbenv-taobao-mirror

这是一个 [rbenv](https://github.com/sstephenson/rbenv) 插件。使用淘宝镜像安装 Ruby。

## 安装方法

在命令中执行以下命令：

```sh
git clone https://github.com/andorchen/rbenv-taobao-mirror.git ~/.rbenv/plugins/rbenv-taobao-mirror
```

## 使用方法

像往常一样安装 Ruby 即可，无需额外设置。

```sh
rbenv install 2.1.2
```

**注意**：有些 Ruby 版本淘宝镜像上没有。

## 卸载方法

进入 `~/.rbenv/plugins/` 目录，把 `rbenv-taobao-mirror` 文件夹整个删除即可。

## 提醒

这个插件只在 Mac OS X 系统中测试，其他 Linux 发行版可能无法使用。这是由 sed 的差异造成的。如果你知道如何在某个 Linux 发行版中解决遇到的问题，欢迎反馈给我。

## 工作原理

安装前，替换 Ruby 安装定义文件中 Ruby 的下载地址。安装后，再把地址改为原值。

## 作者

[Andor](http://about.ac)

## 授权协议

MIT
