<p align="center">
  <a href="https://github.com/nicholasxdavis/jemini-json">
    <img src="https://github.com/nicholasxdavis/jemini-json/blob/main/updated-jemini-logo.png?raw=true" alt="Logo">
  </a>
</p>

<p align="center">
  A lightweight JSON materializer built with LÖVE2D
</p>

<br />

<p align="center">
  <a href="https://github.com/nicholasxdavis/jemini-json">
    <img src="https://github.com/nicholasxdavis/jemini-json/blob/main/screenshot-preview.png?raw=true" alt="Preview">
  </a>
</p>

### How to use it
- [YouTube](https://www.youtube.com/watch?v=EjossbQ1puw/)
## Features

 - **JSON to Project**: Instantly convert a flat JSON structure into a fully materialized file system hierarchy.
 - **In-App Editor**: Preview and edit file contents with built-in syntax highlighting (Lua, Python, JS keywords supported) before exporting.
 - **File Explorer**: Navigate through multiple files defined within a single JSON package using the sidebar explorer.
 - **One-Click Export**: Automatically generate directories and files on your local disk with a single click.
 - **Clipboard Integration**: Quickly copy code snippets or the required JSON template format to your clipboard.
 - **Integrated Console**: Monitor application logs and export status via the built-in terminal window.

## Getting Started

### Prerequisites

 - [LÖVE 2D](https://love2d.org/) (Version 11.0 or newer) installed on your machine.
 - [Git](https://git-scm.com/) (optional, for cloning).

### Running (from source only, public release very soon.)

 1. Clone this repository:
    ```bash
    git clone [https://github.com/nicholasxdavis/jemini-json.git](https://github.com/nicholasxdavis/jemini-json.git)
    ```
 2. Navigate to the project directory:
    ```bash
    cd jemini-json
    ```
 3. Run the application using LÖVE:
    ```bash
    love .
    ```
    *(Note: On Windows, you can typically drag the project folder onto `love.exe`)*
## Electron Installer
- **Source**: https://github.com/nicholasxdavis/jemini-installer
  
  Jemini-Json is built using LÖVE2D (Lua) for the core application, UI rendering, and filesystem logic.
The installation and distribution process is handled through Electron, which wraps the app in a standard desktop installer and manages setup, file placement, and system integration during install.
## Usage 

 - **Import**: Drag and drop a valid JSON file (formatted with `project_name` and `files` array) into the Jemini window.
 - **Edit**: Click on files in the "Explorer" sidebar to view or modify their code. Text editing supports standard navigation and selection.
 - **Export**: Click the "EXPORT FILES" button in the top right to save the project to your computer's `SaveDirectory/Exports` folder.
 - **Console**: Toggle the console log with the "SHOW CONSOLE" button to view internal system messages.
 - **Templates**: Click "LOAD EXAMPLE" on the main menu to see a demo project, or "COPY FORMAT" to get the JSON structure template.

## Credits and tools used

 - [LÖVE 2D](https://love2d.org/)
 - [Electron](https://www.electronjs.org/)
 - [Minecraftia Font](https://www.dafont.com/minecraftia.font)
 - [GPL-3.0 License](LICENSE) — Copyright (c) 2026 Nicholas Davis
