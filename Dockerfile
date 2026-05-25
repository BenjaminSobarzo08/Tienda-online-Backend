# 1. Elegimos una imagen oficial de Node.js estable como base
FROM node:22-alpine

# 2. Creamos y definimos el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# 3. Copiamos el package.json y package-lock.json para instalar las dependencias
COPY package*.json ./

# 4. Instalamos las dependencias del proyecto
RUN npm install

# 5. Copiamos el resto del código fuente de tu backend
COPY . .

# 6. Exponemos el puerto en el que corre tu app (generalmente el 8080 o el que use tu variable de entorno)
EXPOSE 8080

# 7. Comando para arrancar tu servidor Express
CMD ["npm", "start"]