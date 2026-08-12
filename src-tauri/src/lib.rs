#[cfg_attr(mobile, tauri::mobile_entry_point)]
pub fn run() {
    tauri_icloud_base::run(
        tauri_icloud_base::IcloudAppConfig {
            app_name: "iCloud Reminders",
            url: "https://www.icloud.com/reminders",
            remove_toolbar: true,
        },
        tauri::generate_context!(),
    );
}
