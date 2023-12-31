package main

import (
	"fmt"
	"net/http"
)

func main() {
	// Define a handler function for incoming HTTP requests
	handler := func(w http.ResponseWriter, r *http.Request) {
		// Set CORS headers to allow all origins
		w.Header().Set("Access-Control-Allow-Origin", "*")
		w.Header().Set("Access-Control-Allow-Methods", "GET, POST, OPTIONS")
		w.Header().Set("Access-Control-Allow-Headers", "Content-Type")

		fmt.Fprintf(w, "{\"hello\": \"from cloudrun\"}")
	}

	// Register the handler function to respond to all requests on the root path ("/")
	http.HandleFunc("/", handler)

	// Start the HTTP server on port 8080
	fmt.Println("Server listening on port 8080...")
	err := http.ListenAndServe(":8080", nil)
	if err != nil {
		fmt.Println("Error:", err)
	}
}
