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
root@ip-10-34-188-6:/var/log/nginx# cat access.log | grep download-installer
84.107.69.165 - - [15/Aug/2014:07:46:27 +0000] "GET /xldownload/download-installer/0f2c7714-2fdb-4f5e-9ab4-295c3184422a/xl-release_macos_4_0.dmg HTTP/1.1" 200 174116864 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.116 Safari/537.36"
root@ip-10-34-188-6:/var/log/nginx#
root@ip-10-34-188-6:/var/log/nginx#
root@ip-10-34-188-6:/var/log/nginx#
root@ip-10-34-188-6:/var/log/nginx# cat access.log.1 | grep download-installer
31.223.163.18 - - [14/Aug/2014:07:35:12 +0000] "GET /xldownload/download-installer/77ab781f-e4e0-4fbc-8be7-343158be38c7/xl-release_macos_4_0.dmg HTTP/1.1" 200 174116864 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safari/537.36"
31.223.163.18 - xebialabs [14/Aug/2014:09:40:36 +0000] "GET /xldownload/download-installer/841c3295-1ab1-4ca2-8ef0-8644fd1d81fa/xl-release_windows_4_0.exe HTTP/1.1" 200 169012368 "-" "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36"
76.119.88.37 - - [14/Aug/2014:13:26:45 +0000] "GET /xldownload/download-installer/77ab781f-e4e0-4fbc-8be7-343158be38c7/xl-release_macos_4_0.dmg HTTP/1.1" 200 29343531 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36"
98.172.147.131 - - [14/Aug/2014:14:57:46 +0000] "GET /xldownload/download-installer/68c05fe1-1b3d-40c4-b6fa-9a1238b97ada/xl-release_windows_4_0.exe HTTP/1.1" 200 169012368 "-" "Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko"
64.124.203.77 - - [14/Aug/2014:16:31:06 +0000] "GET /xldownload/download-installer/68c05fe1-1b3d-40c4-b6fa-9a1238b97ada/xl-release_windows_4_0.exe HTTP/1.1" 200 169012368 "-" "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; SIMBAR={DC0EB745-6EAA-11E0-AF9C-0019661921A6}; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)"
```

