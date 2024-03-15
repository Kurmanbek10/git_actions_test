FROM nginx:1.21.0
EXPOSE  80
EXPOSE 8080
CMD ["nginx", "-g", "daemon off";]