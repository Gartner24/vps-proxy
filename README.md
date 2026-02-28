# VPS Reverse Proxy Setup Documentation

This VPS hosts multiple projects behind a single Nginx reverse proxy (Docker) with Certbot for TLS.


Documentation and diagrams are stored in this GitHub repository:

- https://github.com/Gartner24/vps-setup/blob/main/vps-setup.md

Quick locations on this VPS:
- Proxy stack: `/opt/projects/proxy`
- Proxy routing rules: `/opt/projects/proxy/conf.d`
- Projects root: `/opt/projects/<project-name>/`

Operational reminder:
- Only the proxy binds ports 80/443.
- All project containers must attach to the external Docker network: `web`.

