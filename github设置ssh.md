# 设置ssh免密登陆

git每次登陆都要输入密码，很麻烦。可以用ssh生成公私密钥，以后就能直接免密登陆。

当然可以设置全局的git密码。不过也存在多个git账号，或者gitlab之类的不同账号的情况。总之免密登陆，很酷。

## 首先生成一对公私密钥

先cd进入`~/.ssh`，`ls`打印一下，有没有`id_rsa`和`id_rsa.pub`这两个文件。

这两个文件是我们要生成的公私密钥，`id_rsa`是私钥，`id_rsa.pub`是公钥。没有的话现在就生成一个。

[参考](https://www.cnblogs.com/ayseeing/p/3572582.html)

```shell
ssh-keygen -t rsa -C "密钥名字"
```

enter之后就会生成一对密钥。此时会要你写入文件名，建议直接摁enter，用默认的名字。

```shell
# Enter file in which to save the key (/c/Users/you/.ssh/id_rsa): [Press enter]
```

如果已经有了密钥，想再[多生成几对](https://www.awaimai.com/2200.html)，那么这里就需要手动填写保存路径，避免覆盖原有的密钥。

```shell
Enter file in which to save the key (/c/Users/Gary/.ssh/id_rsa): /c/Users/Gary/.ssh/id_rsa_github
```

接着是提示你输入密码。这是使用这对密钥的密码。

不过我们目标是免密登陆，自然不设置密码，因此只需要摁下两次enter即可。

```shell
Enter passphrase (empty for no passphrase): 
Enter same passphrase again:
```

这样就生成好了，命令行会提示如下：

```shell
Your identification has been saved in /c/Users/you/.ssh/id_rsa.
# Your public key has been saved in /c/Users/you/.ssh/id_rsa.pub.
# The key fingerprint is:
# 01:0f:f4:3b:ca:85:d6:17:a1:7d:f0:68:9d:f0:a2:db your_email@example.com
```

我们再次在`~/.ssh`下`ls`一下看看文件。

应该会发现多了`id_rsa`和 `id_rsa.pub`两个文件。这就是我们生成的公私密钥了。

## 添加到git，或其他任何地方

登陆github后，在右上角的设置里面，可以看到`ssh and gpg keys`。可以在`SSH keys`里面新建一个`SSH key`。

这里的title，是给你区分这个密钥的名字。key，就需要你把公钥贴上来了。

公钥可以在命令行里面，用`cat id_rsa.pub`打开，然后把显示的内容复制并黏贴到github即可。

## 测试一下

在命令行中输入

```shell
ssh -T git@github.com
```

这会有一段警告代码

```shell
# The authenticity of host 'github.com (207.97.227.239)' can't be established.
# RSA key fingerprint is <钥匙内容>
# Are you sure you want to continue connecting (yes/no)?
```

输入yes。如果看到了这句话，就说明成功设置了SSH

```shell
Hi <用户名>! You've successfully authenticated, but GitHub does not
# provide shell access.
```

## 那如果有不止一对密钥呢？

可以配置一个`config`文件，登陆不同的地方，用不同的公钥。

[参考](https://www.mtyun.com/library/how-to-use-ssh-client-connection-config-file)

[参考1](https://blog.csdn.net/xpylq/article/details/52780755)

`vim`修改`~/.ssh/config`文件。如果没有就`touch`新建一个。

配置文件的样例如下：

```shell
Host ops
HostName 0.0.0.0
Port 2333
User name
PreferredAuthentications publickey
IdentityFile ~/.ssh/id_rsa
```

- 第一行是别名，不分大小写。
- 第二行是ip
- 端口号
- 登陆名
- 认证方法：公私密钥
- 认证的密钥，这里是私钥。

这个例子里，就可以用`ssh ops`来开启服务。ssh客户端，会找到别名里面的配置信息。