
# Host a Static Web Page in a Docker Container on a Virtual Private Server (VPS)

Easily deploy your static website with Docker on a VPS, fully automated with GitHub Actions.

- **Quick Setup**: Get your static web page up and running in minutes
- **Automated Deployment**: Push changes to GitHub and automatically deploy to a docker container on your VPS

## Setup Instructions

### VPS Setup
1. **Create a new VPS** running Ubuntu or use an existing one. (Recommended: [Digital Ocean Droplet](https://www.digitalocean.com/))
2. **SSH into your VPS** and [install Docker](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-22-04).

### Docker Hub Configuration
3. Sign in to [Docker Hub](https://hub.docker.com/) or sign up if you don't have an account.
4. Create a new repository in Docker Hub and copy the name into `PRJ_NAME` in the [build workflow file](.github/workflows/build.yml).
5. [Create a Docker Hub access token](https://docs.docker.com/security/for-developers/access-tokens/) and add it as a GitHub Actions Secret named `DOCKERHUB_TOKEN`.
6. Add your Docker Hub username as a GitHub Actions Secret named `DOCKERHUB_USERNAME`.

### GitHub Actions Configuration
7. Create a GitHub Actions Secret named `HOST` and paste the IP address of your VPS.
8. Add a Secret named `SSH_USER` for the SSH username (likely `root`).
9. Add a Secret named `SSH_PASSWORD` with the VPS password used during VPS setup.

### Custom Domain Setup
If you want to use a custom domain (e.g. example.com), you can easily set this up:
1. **Purchase a domain name** through a domain registrar (e.g., Cloudflare).
2. **Add a Type A DNS record** that points to the IP address of your VPS.

## Contributing

Contributions are welcome! Feel free to open issues or submit pull requests. If you find this project helpful, please give it a star! ⭐

---

*For any questions or support, open an issue or contact me directly.*
