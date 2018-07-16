package main

import (
	"log"
	"strconv"
	"os"
)

func main() {
	text := `version: '2'

services:`

	max := 100

	key := 50010

	for i := 1; i <= max; i ++{
		orport := strconv.Itoa(key + i)
		dirport := strconv.Itoa(key + i + 5000)
		ctrport := strconv.Itoa(key + i - 10000)
		appendText := `
  tor` + strconv.Itoa(i) + `:
    build: './torDocker'
    ports:
      - '` + orport + `:` + orport + `'
      - '` + dirport + `:` + dirport + `'
    environment:
      ORPORT: '` + orport + `'
      DIRPORT: '` + dirport + `'
      CTRPORT: '` + ctrport + `'
      NAME: 'Azunyan1111Relay` + strconv.Itoa(i) + `'
    volumes:
      - ./data/tor` + strconv.Itoa(i) + `:/root/.tor/
`
		text = text + appendText
	}

	file, err := os.Create(`./docker-compose.yml`)
	if err != nil {
		panic(err)
	}
	defer file.Close()

	file.Write(([]byte)(text))

	log.Println(text)
}
