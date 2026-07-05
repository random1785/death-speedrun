#!/usr/bin/env python3
import os
import http.server
import socketserver

PORT = 8000
DIRECTORY = "/workspaces"

class NoCacheHandler(http.server.SimpleHTTPRequestHandler):
    def end_headers(self):
        self.send_header("Cache-Control", "no-store, no-cache, must-revalidate, max-age=0")
        self.send_header("Pragma", "no-cache")
        self.send_header("Expires", "0")
        super().end_headers()

    def log_message(self, format, *args):
        pass

if __name__ == "__main__":
    os.chdir(DIRECTORY)
    with socketserver.TCPServer(("0.0.0.0", PORT), NoCacheHandler) as httpd:
        print(f"Serving {DIRECTORY} on port {PORT} with no-cache headers")
        httpd.serve_forever()
