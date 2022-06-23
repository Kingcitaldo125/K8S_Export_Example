import http.server
import socketserver

from os import getenv

PORT = int(getenv('PORT', '8000'))

Handler = http.server.SimpleHTTPRequestHandler

with socketserver.TCPServer(("", PORT), Handler) as httpd:
    print("serving at port", PORT)
    httpd.serve_forever()

