# Change My IP on Dnspod

更改自身IP到DNSPOD上。

1. 获取`login_token`
![http://harchiko.qiniudn.com/Screen%20Shot%202016-04-12%20at%203.43.44%20PM.png](http://harchiko.qiniudn.com/Screen%20Shot%202016-04-12%20at%203.43.44%20PM.png)

注意 `login_token`是 id,token 的形式。
2. 获取`Domain_id`
在xxxx处填上上一步获取到的token
```bash
curl -X POST https://dnsapi.cn/Domain.List -d 'login_token=xxxx&format=json' | python -m json.tool
```
3. 获取`Record_id`

在xxxx处填上第一步获取到的token,在yyyy处填上第二步获取到的Domain_id.
```bash
curl -X POST https://dnsapi.cn/Record.List -d 'login_token=xxxx&format=json&domain_id=yyyy'|python -m json.tool
```

4. 将这几个变量值填到shell脚本中，设置定时任务，建议20分(dnspod API 有限制)

## Licence
```
The MIT License (MIT)

Copyright (c) 2016 Alex Zhao

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
