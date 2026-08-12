# iCloud Reminders for Windows

iCloud Reminders desktop app for Windows. Loads [https://www.icloud.com/reminders](https://www.icloud.com/reminders) in a native **Tauri / WebView2** shell.

## Development

Requires Rust (MSVC), WebView2, and Bun. Sibling crates:

- `Projects/tauri-tray-base`
- `Projects/tauri-icloud-base`

```bash
bun install
bun run icon
bun run dev
```

## License

[MIT](LICENSE)
