package main

import (
	"log"
	"net/http"
)

func main() {
	log.Println("Starting Server")
	startServer()
}

func startServer() {
	configureServer()

	log.Println(http.ListenAndServe(":80", nil))
}

func configureServer() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		w.Write([]byte("Hello world!"))
	})
}
