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
   ![1](https://user-images.githubusercontent.com/45090202/49733223-48cd3e00-fcc4-11e8-943e-748ecc523227.PNG)
   
        3. example.com을 사용자의 버킷 이름으로 대체해 다음 버킷 정책을 example.com버킷에 연결
   ![2](https://user-images.githubusercontent.com/45090202/49733610-4c14f980-fcc5-11e8-9fb8-2b42af327b8b.PNG)
    
    3. 웹 사이트 호스팅용 버킷 구성
        1. Amazon S3 콘솔 열기
        2. [Bucket name]목록에서 정적 웹 사이트 호스팅을 활성화하려는 버킷 이름 선택
        3. [Properties] 선택
        4. [Static website hosting] 선택
        5. 웹 사이트 호스팅을 위해 example.com버킷을 구성합니다
           Index Document에 인덱스 페이지의 이름을 입력합니다.
        6. [Save] 선택
   ![3](https://user-images.githubusercontent.com/45090202/49733810-d8bfb780-fcc5-11e8-9598-006f0685a1dc.PNG)

    4. 웹 사이트 리디렉션 구성
        1. Amazon S3 콘솔의 [Buckets] 목록에서 원하는 버킷(이 예제에서는 www.example.com) 선택
        2. [Properties] 선택
        3. [Static website hosting] 선택
        4. [Redirect requests]를 선택, [Target bucket or domain]에 example.com 입력
        5. [Save] 선택
   ![4](https://user-images.githubusercontent.com/45090202/49734017-5d123a80-fcc6-11e8-8f80-ce606f0f30aa.PNG)
   
    5. 웹 사이트 트래픽용 로깅 구성
        선택적으로 로깅을 구성하여 웹 사이트에 접속하는 방문자들의 수를 추적할 수 있습니다. 
        이렇게 하기 위해 루트 도메인 버킷에 대한 로깅을 활성화 할 수 있습니다.
        
    6. 엔드포인트 및 리디렉션 테스트
        웹 사이트를 테스트하려면 브라우저에 엔드포인트 URL을 입력합니다. 
        요청이 리디렉션되고 브라우저에 example.com에 대한 인덱스 문서가 표시됩니다.
        
    7. example.com 과 www.example.com의 별칭 레코드 추가
        1. https://console.aws.amazon.com/route53/에서 Route 53 콘솔 열기
        2. 탐색 창에서 [Hosted zones] 선택
        3. 호스팅 영역 목록에서 도메인의 이름을 선택
        4. [Create Record Set] 선택
        5. 다음 값 지정 
            - 이름 지정
            - 유형 : [A – IPv4 address]를 선택
            - 별칭 : [Yes] 선택
            - 라우팅 정책 : [Simple] 수락
            - 대상 상태 평가 : [No] 수락
        6. www.example.com의 경우 위에 단계 반복하여 레코드 생성
   ![5](https://user-images.githubusercontent.com/45090202/49734266-15d87980-fcc7-11e8-9b41-8b40d3461e2d.PNG)
   
    8. 테스트
        웹 사이트가 정확하게 운영되는지 확인하려면 브라우저에서 다음 URL을 시도
        * http://example.com – example.com 버킷의 인덱스 문서를 표시
        * http://www.example.com – 요청을 http://example.com로 리디렉션
        

   


