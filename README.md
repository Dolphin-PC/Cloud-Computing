# Cloud-Computing
클라우드 컴퓨팅 기말 프로젝트

# Contents
    1. 웹 제작
    2. 사용자 지정 도메인 등록
    3. 정적 웹 사이트 설정

# URL
    참고 사이트 : https://docs.aws.amazon.com/ko_kr/Route53/latest/DeveloperGuide/domain-register.html

# Guide Line
    1. 도메인 등록
    Route 53 이용하여 등록
        1. AWS Management 콘솔에 로그인한 다음 Route 53 콘솔 열기
        2. [Domain Registration] 아래에서 [Get Started Now] 선택
        3. [Register Domain] 선택
        4. 등록하고자 하는 도메인 이름 입력, [Check] 선택 후 사용 가능한지 알아보기
        5. 사용 가능하다면 [Add to cart] 선택 / [Related domain suggestions] 목록은
            처음 선택한 도메인 외에 추가로 등록 가능한 도메인 보여줌
        6. 장바구니에서 도메인 등록 선택
        7. [Continue] 선택
        8. [Contact Details for your n Domains]페이지에서 등록자,관리자, 기술담당자 정보 입력
        9. WHOIS 쿼리로부터 연락처 정보 숨길지 여부 선택
        10. [Continue] 선택
        11. 일반 TLD 전용 - com, org, net 같은 도메인 등록하는 경우
            사용한적 없는 등록자로 지정하고 해당 주소 유효한지 확인
        12. 검토 후 [Complete Purchase] 선택
        13. 모든 TLD에 대해 도메인 등록 승인되면 이메일 발송
    
    2. 버킷의 생성과 구성, 데이터 업로드
        1. 두 개의 버킷 생성
           S3에 사용자의 example.com 웹 사이트 호스팅하려면 이름이 동일한 버킷 생성
           ex ) 이름이 example.com 이라는 버킷 생성
                이름이 www.example.com 이라는 버킷 생성
        2. 웹 사이트 데이터를 example.com 버킷에 업로드
        <img width="200" src="https://user-images.githubusercontent.com/45090202/49732774-0820f500-fcc3-11e8-8448-c657edcaf5be.png">
