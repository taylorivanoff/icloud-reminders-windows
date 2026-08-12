# iCloud Reminders for Windows

iCloud Reminders desktop app for Windows. Loads [https://www.icloud.com/reminders](https://www.icloud.com/reminders) in a native **Tauri / WebView2** shell.

<img width="1053" height="729" alt="{E7B388EB-2D14-40A2-ABC1-0DDD6072C374}" src="https://github.com/user-attachments/assets/8d06bf46-b356-449b-af2a-efaa452d98ec" />

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
