package main

import (
	"flag"
	"fmt"
	"net"
	"os"
	"io"
)

func main() {

	var addr string
	flag.StringVar(&addr, "e", "52.66.8.18:1912", "service endpoint [ip addr or socket path]")
	flag.Parse()
	conn, err := net.Dial("tcp", "localhost:5555")
	if err != nil {
		fmt.Println("Failed to Connect To ADB Server:5555", err)
		os.Exit(1)
	}
	defer conn.Close()
	
	conn2, err2 := net.Dial("tcp", addr)
	if err2 != nil {
		fmt.Println("Failed to Connect To AWS Server:1912", err2)
		os.Exit(1)
	}
	defer conn.Close()


	for true {
	
		go io.Copy(conn,conn2)
		io.Copy(conn2,conn)
		
		}
}
