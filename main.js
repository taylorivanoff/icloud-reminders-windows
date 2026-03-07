const path = require('path');
require('icloud-windows-base').run({
  appName: 'iCloud Reminders',
  protocol: 'icloud-reminders',
  icloudUrl: 'https://www.icloud.com/reminders',
  splashPath: path.join(__dirname, 'splash.html'),
  iconPath: path.join(__dirname, 'icon.png')
});
