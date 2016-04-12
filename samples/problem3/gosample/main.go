package main

import (
    "net/http"
    "io/ioutil"
    "fmt"
    "regexp"
    "strings"
    "log"
    "os"
    "strconv"
)

func main() {

	urls := os.Args[1:]

	for index, url := range urls {
		resp, _ := http.Get(url)
		bytes, _ := ioutil.ReadAll(resp.Body)

		response := string(bytes)
		
		html_reg, err := regexp.Compile("<[^>]*>")
	    if err != nil {
	            log.Fatal(err)
	    }

		html_safe := html_reg.ReplaceAllString(response, "")

		sp_chars_reg, err := regexp.Compile("[^a-zA-Z.\\s]")
	    if err != nil {
	            log.Fatal(err)
	    }

	    chars_safe := sp_chars_reg.ReplaceAllString(html_safe, "")

	    m := make(map[string]string)

	    for _, element := range strings.Fields(chars_safe) {
	  		if val, ok := m[element]; ok {
	    		val_t, e := strconv.Atoi(val)
			    if e != nil {
			        fmt.Println(e)
			    }
	    		val2 := val_t + 1
	    		m[element] = strconv.Itoa(val2)
			} else {
				m[element] = strconv.Itoa(1)
			}
		}

		f1, err := os.Create("url" + strconv.Itoa(index + 1) + ".txt")
		if err != nil {
		    panic(err)
		}
		
		defer f1.Close()

		f, err := os.OpenFile("url" + strconv.Itoa(index + 1) + ".txt", os.O_APPEND|os.O_WRONLY, 0644)
		if err != nil {
		    panic(err)
		}

		defer f.Close()

		if _, err = f.WriteString("url : " + url + "\n"); err != nil {
    		panic(err)
		}

		for key, value := range m {
		    if _, err = f.WriteString("\t" + key + " : " + value + "\n"); err != nil {
	    		panic(err)
			}
		}

		fmt.Println("File url" + strconv.Itoa(index + 1) + ".txt created successfully in current directory.")
		resp.Body.Close()
	}

}