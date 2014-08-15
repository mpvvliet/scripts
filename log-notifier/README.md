These scripts parse Apache HTTPD log data and produce a JSON post as output.

## XL trials server

XLD online trial:

```
199.15.213.245 - - [15/Aug/2014:14:20:03 +0000] "GET /xldownload/get-download-link?name=Brian+Fitzgerald&email=brianfitzgerald%40forestcity.net&company=Forest+City+Enterprises%2C+Inc.&marketoCode=C6U9BR HTTP/1.1" 200 392 "-" "-"
199.15.213.245 - - [15/Aug/2014:14:28:22 +0000] "GET /xldownload/get-download-link?name=Daniel+Tanner&email=daniel.tanner%40flowcal.com&company=Flow-Cal&marketoCode=AR7KJA HTTP/1.1" 200 392 "-" "-"
199.15.213.245 - - [15/Aug/2014:14:28:38 +0000] "GET /xldownload/get-download-link?name=Joe+Neuhaus&email=joseph%40kirkhaus.com&company=Kirkhaus+Technologies&marketoCode=A3673V HTTP/1.1" 200 392 "-" "-"
199.15.213.245 - - [15/Aug/2014:14:32:36 +0000] "GET /xldownload/get-download-link?name=Tanguy+De+Christen&email=tanguy.de-christen%40sgcib.com&company=SG&marketoCode=KJNTZ HTTP/1.1" 200 392 "-" "-"
199.15.213.245 - - [15/Aug/2014:14:36:21 +0000] "GET /xldownload/get-download-link?name=sandra+gomez&email=sandra.gomez%40azchem.com&company=Arizona+Chemical++Company&marketoCode=MZRUB HTTP/1.1" 200 392 "-" "-"
199.15.213.245 - - [15/Aug/2014:14:39:40 +0000] "GET /xldownload/get-download-link?name=Eric+Tice&email=eric.tice%40qualifacts.com&company=Qualifacts&marketoCode=DKQUW7 HTTP/1.1" 200 392 "-" "-"
199.15.213.245 - - [15/Aug/2014:14:56:51 +0000] "GET /xldownload/get-download-link?name=Denys+Foley&email=Denys.Foley%40xerox.com&company=Xerox+Corporation&marketoCode=C6524Z HTTP/1.1" 200 392 "-" "-"
199.15.213.245 - - [15/Aug/2014:14:57:52 +0000] "GET /xldownload/get-download-link?name=Derrick+Hatcher&email=dhatcher%40scrippsnetworks.com&company=Scripps+Networks&marketoCode=AQUHAT HTTP/1.1" 200 392 "-" "-"
199.15.213.245 - - [15/Aug/2014:15:20:30 +0000] "GET /xldownload/get-download-link?name=Melvin+Laguren&email=melvin.laguren%40macys.com&company=Macy%27s&marketoCode=BNUKTB HTTP/1.1" 200 392 "-" "-"
```

XLR trial:

```
84.107.69.165 - - [15/Aug/2014:07:46:17 +0000] "GET /xldownload/download/xl-release-4.0.7-server.zip HTTP/1.1" 200 139658301 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.116 Safari/537.36"
84.107.69.165 - - [15/Aug/2014:07:46:27 +0000] "GET /xldownload/download-installer/0f2c7714-2fdb-4f5e-9ab4-295c3184422a/xl-release_macos_4_0.dmg HTTP/1.1" 200 174116864 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.116 Safari/537.36"
```

