const path = require('path');
const { app } = require('electron');

if (!app.isPackaged) {
  try {
    require('electron-reloader')(module, {
      watchRenderer: true,
      ignore: ['**/node_modules/**', '**/dist/**', '**/.git/**', '**/bun.lock', '**/package-lock.json']
    });
  } catch (_) {
    // electron-reloader is a devDependency; ignore if missing.
  }
}
function loadIcloudWindowsBase() {
  if (!app.isPackaged) {
    const localBase = path.join(__dirname, '..', 'icloud-windows-base');
    try {
      const resolved = require.resolve(localBase);
      delete require.cache[resolved];
      return require(localBase);
    } catch (err) {
      console.warn('[dev] local icloud-windows-base failed, using installed package:', err.message);
    }
  }
  return require('icloud-windows-base');
}

loadIcloudWindowsBase().run({
  appName: 'iCloud Reminders',
  protocol: 'icloud-reminders',
  icloudUrl: 'https://www.icloud.com/reminders',
  splashPath: path.join(__dirname, 'splash.html'),
  iconPath: path.join(__dirname, 'icon.png'),
  removeToolbar: true
});
