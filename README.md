用来同步常用工具的配置

新机器配置:
1. start Automator.app
2. select Application
3. click Show library in the toolbar (if hidden)
4. add Run shell script (from the Actions/Utilities)
5. copy & paste script the window
```bash
cd /Users/calvin/etc/
. .sync.sh
```
6. save somewhere (for example you can make an Applications folder in your HOME, you will get an your_name.app)
7. go to System Preferences -> Accounts -> Login items
8. add this app
