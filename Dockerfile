# Use Nginx as the base image
FROM nginx:latest

# Copy the game files into Nginx's web root
COPY mario-game /usr/share/nginx/html

# Document that the container listens on port 80
EXPOSE 80

# Start Nginx in the foreground (daemon off keeps container alive)
CMD ["nginx", "-g", "daemon off;"]
