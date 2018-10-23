# ROR에 에디터 설치하기

이것저것 해보고 그나마 쉽고 간편한 에디터인 썸머 에디터를 붙여 본 예제이다.
텍스트 편집기 내에서 이미지 첨부시 업로드 기능이 포함되어 있다.



## 작업 순서

1. 레일즈 프로젝트 생성
2. 젬 설치
    1. 부트스트랩
    2. 제이쿼리
    3. 심플폼
    4. 케리웨이브
    5. 미니매직
3. 잼 셋팅
    1. 부트스트랩
    2. 심플폼
        1. rails g simple_form:install --bootstrap
    3. css, js 셋팅
    4. 케리웨이브
        1. https://github.com/carrierwaveuploader/carrierwave
4. 포스트 생성
    1. rails g scaffold Post title content:text file:string
5. 썸머노트 설치
    1. https://summernote.org
6. 컨텐츠 이미지 생성
    1. rails g scaffold ContentImage name:string
    
    
    
    
