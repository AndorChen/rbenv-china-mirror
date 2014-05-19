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

## 工作原理

安装前，替换 Ruby 安装定义文件中 Ruby 的下载地址。安装后，再把地址改为原值。

## 作者

[Andor](http://about.ac)

## 授权协议

MIT
