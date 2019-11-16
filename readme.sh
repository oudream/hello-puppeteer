
# macos chrome
/Applications/Google Chrome.app/Contents/MacOS/Google Chrome


# api-doc
open -a "/Applications/Google Chrome.app" 'https://github.com/GoogleChrome/puppeteer/blob/master/docs/api.md'


# 官方指定的中文文档
open -a "/Applications/Google Chrome.app" 'https://zhaoqize.github.io/puppeteer-api-zh_CN/'


# tutorial
# https://github.com/zhentaoo/puppeteer-deep
open -a "/Applications/Google Chrome.app" 'https://github.com/zhentaoo/puppeteer-deep'


### install - setup
# https://juejin.im/post/5b99c9ece51d450e51625630
env PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true npm i puppeteer -D
#  Puppeteer 寻找某些环境变量来帮助其操作。 如果 puppeteer 在环境中没有找到它们，这些变量的小写变体将从 npm 配置 中使用。
#  HTTP_PROXY, HTTPS_PROXY, NO_PROXY - 定义用于下载和运行 Chromium 的 HTTP 代理设置。
#  PUPPETEER_SKIP_CHROMIUM_DOWNLOAD - 请勿在安装步骤中下载绑定的 Chromium。
#  PUPPETEER_DOWNLOAD_HOST - 覆盖用于下载 Chromium 的 URL 的主机部分。
#  PUPPETEER_CHROMIUM_REVISION - 在安装步骤中指定一个你喜欢 puppeteer 使用的特定版本的 Chromium。


### chrome download in china
open -a "/Applications/Google Chrome.app" 'https://npm.taobao.org/mirrors/chromium-browser-snapshots/'


### trace
# https://www.qikegu.com/docs/4585
  await page.tracing.start({
    path: "trace.json"
  });
  await page.goto("https://example.com/");
  await page.tracing.stop();
# 生成一个 trace.json 文件, 然后我们打开 chrome devtools -> Performance, 然后把该文件直接拖进去即可。
# 该功能便于我们对网站进行性能分析,
