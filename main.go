package main

import (
	"fmt"
	"net/http"
)

func main() {
	// Define a handler function for incoming HTTP requests
	handler := func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "Hello, World!")
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
