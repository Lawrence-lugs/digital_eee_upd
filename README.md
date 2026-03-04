# EEE Digital Website

This repository serves static files for [digital.eee.upd.edu.ph](https://digital.eee.upd.edu.ph).
Pushing to this repository will reflect changes to the main page.

## Devcontainer

To get the environment containing all the dependencies for this repo either:

### Local (VS Code Dev Container)

1. Clone the repository.  
2. Open VS Code → Command Palette (`Ctrl+Shift+P` or `Cmd+Shift+P`) → **Dev Containers: Open Folder in Container**.

> [!note]
> You **will need docker for that to work**. 
> Download and install **Docker** for your operating system:
> 
> - [All platforms (Linux)](https://docs.docker.com/engine/install/)
> - [Windows](https://desktop.docker.com/win/main/amd64/Docker%20Desktop%20Installer.exe)
> - [Mac with Intel Chip](https://desktop.docker.com/mac/main/amd64/Docker.dmg)
> - [Mac with Apple Chip](https://desktop.docker.com/mac/main/arm64/Docker.dmg)

### Codespace

From the repository page:  
**Code** → **Codespaces** → **New Codespace**.  
The environment will be set up automatically.

## Adding Pages

For those with write access to this repository:

1. Write new `.qmd` pages in `pages/`.  
2. To preview pages, run the preview server:

   ```bash
   quarto preview
   ```
   This will start a local server with auto-reload, usually at http://localhost:4200
3. To commit the changes, simply `git add`, `git commit` and `git push`. Pushes to main in this repository will reflect in the main site.

> [!note]
> You don't need to `quarto preview` to contribute pages.
> You can simply push raw qmd files without confirming what they look like.
> Of course, I won't recommend this, but if you do that you won't need the docker or Quarto.

## References on how to style/write pages

Please see [Quarto documentation](https://quarto.org/docs/output-formats/html-basics.html) for particular quarto formats. It's backwards compatible with regular markdown.

See [my website's sample notes](https://github.com/Lawrence-lugs/notes/tree/gh-pages/notes) for examples of what things are possible to write with QMD.

See [JKU's analog circuit design course](https://iic-jku.github.io/analog-circuit-design/aicd.html) and the [raw QMD files](https://github.com/iic-jku/analog-circuit-design/blob/main/aicd.qmd) for examples on an actual course that uses Quarto to make notes.

### Contact / Support

For questions or help, please open an issue.

---

