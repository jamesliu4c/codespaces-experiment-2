FROM node:22
# Set the user to vscode
USER vscode

CMD ["node", "-e", "require('http').createServer((req, res) => res.end('Hello World')).listen(3000)"]
