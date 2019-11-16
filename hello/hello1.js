const puppeteer = require('puppeteer');


(async () => {
    const browser = await puppeteer.launch({
        executablePath: '/Applications/Google Chrome.app/Contents/MacOS/Google Chrome',
        dumpio: true
    });
    const page = await browser.newPage();
    await page.tracing.start({path: '/tmp/hello-puppeteer1-trace.json'});
    await page.goto('https://www.google.com');
    await page.tracing.stop();
    await page.screenshot({path: '/tmp/hello-puppeteer1.png'});
    browser.close();
})();
