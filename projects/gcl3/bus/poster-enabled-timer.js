const puppeteer = require('puppeteer');

function delay(time) {
    return new Promise(function(resolve) {
        setTimeout(resolve, time)
    });
}

(async () => {
    // const browser = await puppeteer.launch({
    //     executablePath: '/Applications/Google Chrome.app/Contents/MacOS/Google Chrome',
    //     dumpio: true
    // });
    // const browser = await puppeteer.launch({
    //     headless: true,
    //     args: ['--no-sandbox', '--headless', '--disable-gpu', '--disable-dev-shm-usage']
    // });
    // const browser = await puppeteer.launch()
    const browser = await puppeteer.launch({
        headless: true,
        executablePath: '/usr/bin/chromium-browser',
        args: ['--no-sandbox', '--headless', '--disable-gpu', '--disable-dev-shm-usage']
    })
    const page = await browser.newPage()

    const navigationPromise = page.waitForNavigation()

    await page.goto('http://122.51.12.151:2281/bus/poster.html')

    await page.setViewport({width: 1280, height: 698})

    await navigationPromise

    await page.waitForSelector('body #uiMidScopeAddBn')
    await page.click('body #uiMidScopeAddBn')

    await page.waitForSelector('body #uiTimeOutEnabled')
    await page.click('body #uiTimeOutEnabled')

    console.log('before waiting');
    await delay(1000 * 60 * 60);
    console.log('after waiting');

    await browser.close()
})();
