# EEE Digital Website

This repository serves static files for [digital.eee.upd.edu.ph](https://digital.eee.upd.edu.ph).

## Devcontainer

To get the environment containing all the dependencies for this repo either:

### Local (VS Code Dev Container)

1. Clone the repository.  
2. Open VS Code → Command Palette (`Ctrl+Shift+P` or `Cmd+Shift+P`) → **Dev Containers: Open Folder in Container**.

### Codespace

From the repository page:  
**Code** → **Codespaces** → **New Codespace**.  
The environment will be set up automatically.

## Requirements

- [Quarto](https://quarto.org/)  
- Python 3.9.10 <
- Plotly

## Adding Pages

For those with write access to this repository:

1. Write new `.qmd` pages in `pages/`.  
2. Run the preview server:

   ```bash
   quarto preview
   ```
   This will start a local server with auto-reload, usually at http://localhost:4200

<!-- 3. To build the production site: ```bash quarto render ``` The output will be in `_site/`. --> <!-- ## Deployment (Describe how the site is deployed — GitHub Actions, Netlify, manual upload, etc.) --> <!-- ## License (Add license info if applicable) -->

### Contact / Support

For questions or help, please open an issue or contact the maintainers.

<!-- Or provide a department email address here -->

---

<!-- Do you want me to also **insert placeholders for minimum Quarto version and other dependencies** (like `v1.4+`) so contributors don’t miss installing them, or would you rather keep that blank until you verify? -->

