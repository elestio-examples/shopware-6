set env vars
set -o allexport; source .env; set +o allexport;

echo "Waiting for app to be ready"
sleep 30s;

# target=$(docker-compose port shopware 80)


# login=$(curl http://${target}/api/oauth/token \
#   -H 'authority: shopware-6-u353.vm.elestio.app' \
#   -H 'accept: application/json, text/plain, */*' \
#   -H 'accept-language: fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7,he;q=0.6' \
#   -H 'content-type: application/json;charset=UTF-8' \
#   --data-raw '{"grant_type":"password","client_id":"administration","scopes":"write","username":"admin","password":"shopware"}' \
#   --compressed)

#     access_token=$(echo $login | jq -r '.access_token' )




#     token=$(curl http://${target}/api/oauth/token \
#   -H 'authority: shopware-6-u353.vm.elestio.app' \
#   -H 'accept: application/json, text/plain, */*' \
#   -H 'accept-language: fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7,he;q=0.6' \
#   -H 'content-type: application/json;charset=UTF-8' \
#   -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36' \
#   --data-raw '{"grant_type":"password","client_id":"administration","scopes":"write","username":"admin","password":"test1234"}' \
#   --compressed)

#   access_token=$(echo $token | jq -r '.access_token' )


# curl http://${target}/api/v2/user/bd29b32e66844ca18960533294bd52b1 \
#   -X 'PATCH' \
#   -H 'accept: application/vnd.api+json' \
#   -H 'accept-language: fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7,he;q=0.6' \
#   -H 'authorization: Bearer '${access_token}'' \
#   -H 'content-type: application/json' \
#   -H 'sw-api-compatibility: true' \
#   -H 'sw-language-id: 2fbb5fe2e29a4d70aa5854ce7ce3e20b' \
#   -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36' \
#   --data-raw '{"password":"test1234"}' \
#   --compressed

#   curl 'https://shopware-6-u353.vm.elestio.app/api/v1/_action/system-config' \
#   -H 'authority: shopware-6-u353.vm.elestio.app' \
#   -H 'accept: application/vnd.api+json' \
#   -H 'accept-language: fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7,he;q=0.6' \
#   -H 'authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjIwNzUxMTMzODRmNTg5MDExY2Y3NzA2MmY3YzNjZmU4NmQwNGE1ZGY2OWVlNDk3M2M4YzdhMGU1YzM3YzVjZjMzZjZmMjYwMTA3Mjc2MTIwIn0.eyJhdWQiOiJhZG1pbmlzdHJhdGlvbiIsImp0aSI6IjIwNzUxMTMzODRmNTg5MDExY2Y3NzA2MmY3YzNjZmU4NmQwNGE1ZGY2OWVlNDk3M2M4YzdhMGU1YzM3YzVjZjMzZjZmMjYwMTA3Mjc2MTIwIiwiaWF0IjoxNjY5MDQ4ODQ5LCJuYmYiOjE2NjkwNDg4NDksImV4cCI6MTY2OTA0OTQ0OSwic3ViIjoiYmQyOWIzMmU2Njg0NGNhMTg5NjA1MzMyOTRiZDUyYjEiLCJzY29wZXMiOlsid3JpdGUiLCJhZG1pbiJdfQ.tC7sa5BAooCaNB1KuB6RxK0ModZgDdBN8WUfINs3OgFmbax3fCrQxzVgKzCEoryAN7CEo6qn72gonfb2ecEWmB68vkos36pmCpeVU1T1eYEL4bqdJCe4HPC9o_9TikPrAPgWtlTp7RyWN9XDrhI3IEY1putsxn9p_VLij8ckebcxEPUBGBPJ6PI3EdykcKnduIrFo42pXdVjcfAJ6sbYLwt6GTY5IfpBBqK2jjE5nr2jxYSuGayOTp-avl40s84i8xRa1g09Ch5JWYP-20AAsgCVOp_aFrXltDvEOYWQ89DuRqrHGRjn3TxPVZoHlx9P9oTwLrc3Y6U2zXHOD9rQ7A' \
#   -H 'content-type: application/json' \
#   -H 'cookie: ajs_anonymous_id=337b09fa-5720-40ec-a549-96e1cf77a89d; mp_70b8ea94d623dd857fb555a76d11f944_mixpanel=%7B%22distinct_id%22%3A%20%221845892f1e632f-040b0d3ac0dbcc-19525635-13c680-1845892f1e7724%22%2C%22%24device_id%22%3A%20%221845892f1e632f-040b0d3ac0dbcc-19525635-13c680-1845892f1e7724%22%2C%22mp_lib%22%3A%20%22Segment%3A%20web%22%2C%22%24initial_referrer%22%3A%20%22%24direct%22%2C%22%24initial_referring_domain%22%3A%20%22%24direct%22%7D; timezone=Asia/Jerusalem; PHPSESSID=fded610ddb7c1c838abc4f9737d8d450; csrf[frontend.checkout.configure]=drS6rkCuCbX0aO8FiLzZQs1gDdMd0Xlo0JOU02U3-8U; csrf[frontend.account.login]=qTkZVEhjYi_1J7cjSN0zqiUlv8jBSa8ESb8zNk9XXV8; csrf[frontend.account.register.save]=GLVPzFSBVstKZd_RfS8938isD0FYAW2CF7fbx2LIuf8; session-=1be5a3a718eb3ca82dd227757f287c03; sw-states=logged-in; sw-cache-hash=4a4924288b46cf3da13847fe8233ca18; csrf[frontend.account.newsletter]=PC5QRezRUu0jd0mm2iiTB2xVtNa8TfC1CYzoNo9Ukg4; csrf[frontend.account.addressbook]=jSL2tmJ4qs-FeEE5rQ87Z7QNrbm72o1nEdxt1dqnPFY' \
#   -H 'origin: https://shopware-6-u353.vm.elestio.app' \
#   -H 'referer: https://shopware-6-u353.vm.elestio.app/admin' \
#   -H 'sec-ch-ua: "Google Chrome";v="107", "Chromium";v="107", "Not=A?Brand";v="24"' \
#   -H 'sec-ch-ua-mobile: ?0' \
#   -H 'sec-ch-ua-platform: "macOS"' \
#   -H 'sec-fetch-dest: empty' \
#   -H 'sec-fetch-mode: cors' \
#   -H 'sec-fetch-site: same-origin' \
#   -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36' \
#   --data-raw '{"core.mailerSettings.emailAgent":"smtp","core.mailerSettings.sendMailOptions":"-t","core.mailerSettings.encryption":"null","core.mailerSettings.authenticationMethod":"null","core.mailerSettings.host":"172.17.0.1","core.mailerSettings.port":"25","core.mailerSettings.senderAddress":"cicd-bjq0a-u353.vm.elestio.app@vm.elestio.app","core.mailerSettings.deliveryAddress":"amsellem.joseph@gmail.com"}' \
#   --compressed