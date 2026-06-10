# 🎮 Mario Game Deployment on Docker

A classic Super Mario browser game containerized with Docker and served using Nginx.
This project demonstrates how to write a Dockerfile from scratch, build a custom image,
and serve a static web application inside a container.

---

## 🛠️ Tech Stack

- **Docker** — containerization
- **Nginx** — web server serving the static game files
- **HTML / JavaScript / CSS** — the Mario game (client-side only)

---

## 📁 Project Structure
mario-game-docker/
├── mario-game/        # Game files (HTML, JS, CSS, assets)
├── Dockerfile         # Container build instructions
└── README.md
---

## 🐳 Dockerfile Explained

```dockerfile
FROM nginx:latest                          # Base image: official Nginx
COPY mario-game /usr/share/nginx/html      # Copy game files to Nginx web root
EXPOSE 80                                  # Document that container listens on port 80
CMD ["nginx", "-g", "daemon off;"]         # Start Nginx in foreground
```

> `daemon off;` keeps Nginx running in the foreground so the container stays alive.

---

## 🚀 How to Run

**1. Clone the repository**
```bash
git clone https://github.com/haseebspaniard/mario-game-docker.git
cd mario-game-docker
```

**2. Build the Docker image**
```bash
docker build -t mario-game-nginx .
```

**3. Run the container**
```bash
docker run -d -p 8888:80 --name mario-game mario-game-nginx
```

**4. Open the game**

Visit `http://localhost:8888` in your browser.

---

## 🧠 Key Concepts Practiced

- Writing a Dockerfile from scratch using `FROM`, `COPY`, `EXPOSE`, and `CMD`
- Understanding how Docker layers work during `docker build`
- Serving static files with Nginx inside a container
- Port mapping with `-p hostPort:containerPort`

---

## 👤 Author

**Abdul Haseeb**
- GitHub: [haseebspaniard](https://github.com/haseebspaniard)
- LinkedIn: [abdulhaseebas](https://www.linkedin.com/in/abdulhaseebas)
- Medium: [@haseebabdul480](https://medium.com/@haseebabdul480)
