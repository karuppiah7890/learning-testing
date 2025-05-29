# Selenium

https://www.selenium.dev/

I'm exploring what Selenium is and what capabilities it has

Selenium WebDriver
Selenium IDE
Selenium Grid

https://www.selenium.dev/downloads/

https://www.selenium.dev/ecosystem/

https://www.selenium.dev/projects/

https://www.selenium.dev/blog

Golang Selenium - https://github.com/tebeka/selenium

https://github.com/SeleniumHQ/selenium

https://www.youtube.com/channel/UCbDlgX_613xNMrDqCe3QNEw

Docs - https://www.selenium.dev/documentation/en/

https://seleniumconf.com/

https://www.selenium.dev/documentation/en/webdriver/

I'm going to choose Ruby as my language as the implementation looks too small
and simple :P

```ruby
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox
wait = Selenium::WebDriver::Wait.new(timeout: 10)

begin
  driver.get 'https://google.com/ncr'
  driver.find_element(name: 'q').send_keys 'cheese', :return
  first_result = wait.until { driver.find_element(css: 'h3>div') }
  puts first_result.attribute('textContent')
ensure
  driver.quit
end
```

https://www.selenium.dev/documentation/en/getting_started/quick/

https://www.selenium.dev/selenium-ide/

https://www.selenium.dev/documentation/en/grid/

---

https://www.selenium.dev/documentation/en/introduction/

https://www.selenium.dev/documentation/en/introduction/the_selenium_project_and_tools/

https://www.selenium.dev/documentation/en/introduction/on_test_automation/

https://www.selenium.dev/documentation/en/guidelines_and_recommendations/page_object_models/

---

Ecosystem projects

https://github.com/search?utf8=%E2%9C%93&q=selenium%20grid

https://github.com/zalando/zalenium

https://github.com/RetailMeNot/SeleniumGridScaler

https://github.com/seleniumkit/gridrouter

https://github.com/seleniumkit

https://github.com/groupon/Selenium-Grid-Extras

https://github.com/SeleniumHQ/docker-selenium

https://github.com/aerokube/selenoid

https://github.com/search?q=selenium

---

https://www.selenium.dev/documentation/en/introduction/types_of_testing/

https://www.selenium.dev/documentation/en/introduction/about_this_documentation/

https://www.selenium.dev/documentation/en/selenium_installation/

https://www.selenium.dev/documentation/en/selenium_installation/installing_selenium_libraries/

https://www.selenium.dev/documentation/en/selenium_installation/installing_webdriver_binaries/

https://www.selenium.dev/documentation/en/webdriver/driver_requirements/

Chrome
https://chromedriver.storage.googleapis.com/index.html
https://chromedriver.chromium.org/downloads

Firefox
https://github.com/mozilla/geckodriver/releases

https://github.com/mozilla/geckodriver

Edge
https://developer.microsoft.com/en-us/microsoft-edge/tools/webdriver/

Opera
https://github.com/operasoftware/operachromiumdriver/releases

IE
https://selenium-release.storage.googleapis.com/index.html

---

https://wiki.mozilla.org/Project_Fission

---

```ruby
# Convenient way
driver.get 'https://selenium.dev'

# Longer Way
driver.navigate.to 'https://selenium.dev'

driver.current_url

driver.navigate.back

driver.navigate.forward

driver.navigate.refresh

driver.title

driver.window_handle
```

---

Just now tried a Selenium program

```bash
$ ruby demo-1.rb
/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0/universal-darwin19/rbconfig.rb:229: warning: Insecure world writable dir /usr/local/share in PATH, mode 040777
Traceback (most recent call last):
        33: from demo-1.rb:3:in `<main>'
        32: from /Library/Ruby/Gems/2.6.0/gems/selenium-webdriver-3.142.7/lib/selenium/webdriver.rb:88:in `for'
        31: from /Library/Ruby/Gems/2.6.0/gems/selenium-webdriver-3.142.7/lib/selenium/webdriver/common/driver.rb:46:in `for'
        30: from /Library/Ruby/Gems/2.6.0/gems/selenium-webdriver-3.142.7/lib/selenium/webdriver/common/driver.rb:46:in `new'
        29: from /Library/Ruby/Gems/2.6.0/gems/selenium-webdriver-3.142.7/lib/selenium/webdriver/chrome/driver.rb:43:in `initialize'
        28: from /Library/Ruby/Gems/2.6.0/gems/selenium-webdriver-3.142.7/lib/selenium/webdriver/remote/bridge.rb:56:in `handshake'
        27: from /Library/Ruby/Gems/2.6.0/gems/selenium-webdriver-3.142.7/lib/selenium/webdriver/remote/bridge.rb:102:in `create_session'
        26: from /Library/Ruby/Gems/2.6.0/gems/selenium-webdriver-3.142.7/lib/selenium/webdriver/remote/bridge.rb:167:in `execute'
        25: from /Library/Ruby/Gems/2.6.0/gems/selenium-webdriver-3.142.7/lib/selenium/webdriver/remote/http/common.rb:64:in `call'
        24: from /Library/Ruby/Gems/2.6.0/gems/selenium-webdriver-3.142.7/lib/selenium/webdriver/remote/http/default.rb:114:in `request'
        23: from /Library/Ruby/Gems/2.6.0/gems/selenium-webdriver-3.142.7/lib/selenium/webdriver/remote/http/common.rb:88:in `create_response'
        22: from /Library/Ruby/Gems/2.6.0/gems/selenium-webdriver-3.142.7/lib/selenium/webdriver/remote/http/common.rb:88:in `new'
        21: from /Library/Ruby/Gems/2.6.0/gems/selenium-webdriver-3.142.7/lib/selenium/webdriver/remote/response.rb:34:in `initialize'
        20: from /Library/Ruby/Gems/2.6.0/gems/selenium-webdriver-3.142.7/lib/selenium/webdriver/remote/response.rb:72:in `assert_ok'
        19: from 19  libsystem_pthread.dylib             0x00007fff6a19bb8b thread_start + 15
        18: from 18  libsystem_pthread.dylib             0x00007fff6a1a0109 _pthread_start + 148
        17: from 17  chromedriver                        0x0000000103e7d3b3 chromedriver + 2532275
        16: from 16  chromedriver                        0x0000000103e6bf89 chromedriver + 2461577
        15: from 15  chromedriver                        0x0000000103e3e4f9 chromedriver + 2274553
        14: from 14  chromedriver                        0x0000000103e55a91 chromedriver + 2370193
        13: from 13  chromedriver                        0x0000000103e3023b chromedriver + 2216507
        12: from 12  chromedriver                        0x0000000103e55150 chromedriver + 2367824
        11: from 11  chromedriver                        0x0000000103e5553f chromedriver + 2368831
        10: from 10  chromedriver                        0x0000000103e49429 chromedriver + 2319401
         9: from 9   chromedriver                        0x0000000103c2efc7 chromedriver + 114631
         8: from 8   chromedriver                        0x0000000103c2e00a chromedriver + 110602
         7: from 7   chromedriver                        0x0000000103c54923 chromedriver + 268579
         6: from 6   chromedriver                        0x0000000103c59b44 chromedriver + 289604
         5: from 5   chromedriver                        0x0000000103c24f8f chromedriver + 73615
         4: from 4   chromedriver                        0x0000000103c27d87 chromedriver + 85383
         3: from 3   chromedriver                        0x0000000103c2bbd7 chromedriver + 101335
         2: from 2   chromedriver                        0x0000000103cb2623 chromedriver + 652835
         1: from 1   chromedriver                        0x00000001044e4743 chromedriver + 9246531
0   chromedriver                        0x0000000103e77d79 chromedriver + 2510201: session not created: This version of ChromeDriver only supports Chrome version 87 (Selenium::WebDriver::Error::SessionNotCreatedError)
Current browser version is 89.0.4389.82 with binary path /Applications/Google Chrome.app/Contents/MacOS/Google Chrome
 ✘  demos  main ✘  $ chromedriver
Starting ChromeDriver 87.0.4280.88 (89e2380a3e36c3464b5dd1302349b1382549290d-refs/branch-heads/4280@{#1761}) on port 9515
Only local connections are allowed.
Please see https://chromedriver.chromium.org/security-considerations for suggestions on keeping ChromeDriver safe.
ChromeDriver was started successfully.
```

I'm getting the latest chrome version and also the latest chrome driver

---

Some error

```bash
$ ruby demo-1.rb
/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0/universal-darwin19/rbconfig.rb:229: warning: Insecure world writable dir /usr/local/share in PATH, mode 040777
Traceback (most recent call last):
        38: from demo-1.rb:8:in `<main>'
        37: from /Library/Ruby/Gems/2.6.0/gems/selenium-webdriver-3.142.7/lib/selenium/webdriver/common/driver.rb:130:in `get'
        36: from /Library/Ruby/Gems/2.6.0/gems/selenium-webdriver-3.142.7/lib/selenium/webdriver/common/navigation.rb:32:in `to'
        35: from /Library/Ruby/Gems/2.6.0/gems/selenium-webdriver-3.142.7/lib/selenium/webdriver/remote/w3c/bridge.rb:59:in `get'
        34: from /Library/Ruby/Gems/2.6.0/gems/selenium-webdriver-3.142.7/lib/selenium/webdriver/remote/w3c/bridge.rb:567:in `execute'
        33: from /Library/Ruby/Gems/2.6.0/gems/selenium-webdriver-3.142.7/lib/selenium/webdriver/remote/bridge.rb:167:in `execute'
        32: from /Library/Ruby/Gems/2.6.0/gems/selenium-webdriver-3.142.7/lib/selenium/webdriver/remote/http/common.rb:64:in `call'
        31: from /Library/Ruby/Gems/2.6.0/gems/selenium-webdriver-3.142.7/lib/selenium/webdriver/remote/http/default.rb:114:in `request'
        30: from /Library/Ruby/Gems/2.6.0/gems/selenium-webdriver-3.142.7/lib/selenium/webdriver/remote/http/common.rb:88:in `create_response'
        29: from /Library/Ruby/Gems/2.6.0/gems/selenium-webdriver-3.142.7/lib/selenium/webdriver/remote/http/common.rb:88:in `new'
        28: from /Library/Ruby/Gems/2.6.0/gems/selenium-webdriver-3.142.7/lib/selenium/webdriver/remote/response.rb:34:in `initialize'
        27: from /Library/Ruby/Gems/2.6.0/gems/selenium-webdriver-3.142.7/lib/selenium/webdriver/remote/response.rb:72:in `assert_ok'
        26: from 26  libsystem_pthread.dylib             0x00007fff6a19bb8b thread_start + 15
        25: from 25  libsystem_pthread.dylib             0x00007fff6a1a0109 _pthread_start + 148
        24: from 24  chromedriver                        0x000000010199c008 chromedriver + 2617352
        23: from 23  chromedriver                        0x00000001019898b9 chromedriver + 2541753
        22: from 22  chromedriver                        0x000000010195a299 chromedriver + 2347673
        21: from 21  chromedriver                        0x000000010197263f chromedriver + 2446911
        20: from 20  chromedriver                        0x000000010194b832 chromedriver + 2287666
        19: from 19  chromedriver                        0x00000001019716ee chromedriver + 2442990
        18: from 18  chromedriver                        0x0000000101971bcc chromedriver + 2444236
        17: from 17  chromedriver                        0x0000000101964b09 chromedriver + 2390793
        16: from 16  chromedriver                        0x000000010176dba7 chromedriver + 330663
        15: from 15  chromedriver                        0x000000010176ccd6 chromedriver + 326870
        14: from 14  chromedriver                        0x00000001017929f3 chromedriver + 481779
        13: from 13  chromedriver                        0x00000001017a1c46 chromedriver + 543814
        12: from 12  chromedriver                        0x00000001017926e2 chromedriver + 480994
        11: from 11  chromedriver                        0x00000001017a2161 chromedriver + 545121
        10: from 10  chromedriver                        0x00000001017482d0 chromedriver + 176848
         9: from 9   chromedriver                        0x00000001017333b3 chromedriver + 91059
         8: from 8   chromedriver                        0x00000001017330c5 chromedriver + 90309
         7: from 7   chromedriver                        0x0000000101733ec8 chromedriver + 93896
         6: from 6   chromedriver                        0x0000000101734775 chromedriver + 96117
         5: from 5   chromedriver                        0x0000000101735196 chromedriver + 98710
         4: from 4   chromedriver                        0x00000001017344fd chromedriver + 95485
         3: from 3   chromedriver                        0x0000000101740870 chromedriver + 145520
         2: from 2   chromedriver                        0x0000000101746773 chromedriver + 169843
         1: from 1   chromedriver                        0x000000010204ab33 chromedriver + 9624371
0   chromedriver                        0x0000000101996b59 chromedriver + 2595673: unknown error: net::ERR_CONNECTION_REFUSED (Selenium::WebDriver::Error::UnknownError)
  (Session info: chrome=89.0.4389.90)
```

Connection refused, hmm

I changed the URL to `https://www.google.com/ncr` and it worked! :) :D

---

https://www.selenium.dev/documentation/en/remote_webdriver/

https://www.selenium.dev/documentation/en/selenium_installation/installing_standalone_server/

https://selenium-release.storage.googleapis.com/3.141/selenium-server-standalone-3.141.59.jar

```bash
$ java -jar selenium-server-standalone-3.141.59.jar

22:42:40.976 INFO [GridLauncherV3.parse] - Selenium server version: 3.141.59, revision: e82be7d358
22:42:41.130 INFO [GridLauncherV3.lambda$buildLaunchers$3] - Launching a standalone Selenium Server on port 4444
2021-03-14 22:42:41.344:INFO::main: Logging initialized @1132ms to org.seleniumhq.jetty9.util.log.StdErrLog
22:42:41.736 INFO [WebDriverServlet.<init>] - Initialising WebDriverServlet
22:42:42.003 INFO [SeleniumServer.boot] - Selenium Server is up and running on port 4444

```

https://www.selenium.dev/documentation/en/remote_webdriver/remote_webdriver_client/

http://localhost:4444/

```bash
$ ruby demo-1.rb
/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0/universal-darwin19/rbconfig.rb:229: warning: Insecure world writable dir /usr/local/share in PATH, mode 040777
Traceback (most recent call last):
        10: from demo-1.rb:6:in `<main>'
         9: from /Library/Ruby/Gems/2.6.0/gems/selenium-webdriver-3.142.7/lib/selenium/webdriver.rb:88:in `for'
         8: from /Library/Ruby/Gems/2.6.0/gems/selenium-webdriver-3.142.7/lib/selenium/webdriver/common/driver.rb:58:in `for'
         7: from /Library/Ruby/Gems/2.6.0/gems/selenium-webdriver-3.142.7/lib/selenium/webdriver/common/driver.rb:58:in `new'
         6: from /Library/Ruby/Gems/2.6.0/gems/selenium-webdriver-3.142.7/lib/selenium/webdriver/remote/driver.rb:39:in `initialize'
         5: from /Library/Ruby/Gems/2.6.0/gems/selenium-webdriver-3.142.7/lib/selenium/webdriver/remote/bridge.rb:56:in `handshake'
         4: from /Library/Ruby/Gems/2.6.0/gems/selenium-webdriver-3.142.7/lib/selenium/webdriver/remote/bridge.rb:102:in `create_session'
         3: from /Library/Ruby/Gems/2.6.0/gems/selenium-webdriver-3.142.7/lib/selenium/webdriver/remote/bridge.rb:167:in `execute'
         2: from /Library/Ruby/Gems/2.6.0/gems/selenium-webdriver-3.142.7/lib/selenium/webdriver/remote/http/common.rb:64:in `call'
         1: from /Library/Ruby/Gems/2.6.0/gems/selenium-webdriver-3.142.7/lib/selenium/webdriver/remote/http/default.rb:114:in `request'
/Library/Ruby/Gems/2.6.0/gems/selenium-webdriver-3.142.7/lib/selenium/webdriver/remote/http/common.rb:98:in `create_response': unexpected response, code=404, content-type="text/html" (Selenium::WebDriver::Error::WebDriverError)
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" type="text/css" href="/assets/displayhelpservlet.css" media="all"/>
  <link href="/assets/favicon.ico" rel="icon" type="image/x-icon" />
  <script src="/assets/jquery-3.1.1.min.js" type="text/javascript"></script>
  <script src="/assets/displayhelpservlet.js" type="text/javascript"></script>
  <script type="text/javascript">
    var json = Object.freeze('{"consoleLink": "\u002fwd\u002fhub","type": "Standalone","class": "org.openqa.grid.web.servlet.DisplayHelpHandler$DisplayHelpServletConfig","version": "3.141.59"}');
  </script>
</head>
<body>

<div id="content">
  <div id="help-heading">
    <h1><span id="logo"></span></h1>
    <h2>Selenium <span class="se-type"></span>&nbsp;v.<span class="se-version"></span></h2>
  </div>

  <div id="content-body">
    <p>
      Whoops! The URL specified routes to this help page.
    </p>
    <p>
      For more information about Selenium <span class="se-type"></span> please see the
      <a class="se-docs">docs</a> and/or visit the <a class="se-wiki">wiki</a>.
      <span id="console-item">
        Or perhaps you are looking for the Selenium <span class="se-type"></span> <a class="se-console">console</a>.
      </span>
    </p>
    <p>
      Happy Testing!
    </p>
  </div>

  <div>
    <footer id="help-footer">
      Selenium is made possible through the efforts of our open source community, contributions from
      these <a href="https://github.com/SeleniumHQ/selenium/blob/master/AUTHORS">people</a>, and our
      <a href="http://www.seleniumhq.org/sponsors/">sponsors</a>.
   </footer>
  </div>
 </div>

</body>
</html>
```
