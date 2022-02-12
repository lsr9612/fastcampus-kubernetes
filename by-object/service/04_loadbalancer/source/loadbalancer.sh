# LoadBalancer 타입의 order 서비스 생성, ClusterIP 타입의 payment 서비스 생성

# snackbar 네임스페이스의 project=snackbar 레이블을 가진 모든 리소스 조회 - Service의 ExternalIP와 NodePort 확인

# snackbar 네임스페이스의 project=snackbar 레이블을 갖는 모든 Service 리소스 상세 조회

# snackbar 네임스페이스의 Service Endpoints 조회 

# order 서비스의 External IP를 ORDER 환경변수로 설정
export ORDER=

# ORDER 환경변수 이용해서 메뉴판 조회 (/menus)
curl http://$ORDER/menus

# ORDER 환경변수 이용해서 주문 요청 (/order)
curl --request POST http://$ORDER/order \
--header 'Content-Type: application/json' \
--data-raw '{
    "Pizza": 1,
    "Burger": 2,
    "Coke": 0,
    "Juice": 0
}'

# snackbar 네임스페이스의 project=snackbar 레이블을 가진 모든 리소스 제거 