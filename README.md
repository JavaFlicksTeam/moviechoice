![image](https://github.com/JavaFlicksTeam/moviechoice/assets/66461013/98767339-791f-4397-84f4-8bce23001f5a)# moviechoice - 자바 웹 프로젝트
> 자바를 이용한 영화 리뷰 웹 사이트 입니다.

![image](https://github.com/JavaFlicksTeam/moviechoice/assets/66461013/a94b0ada-604c-438a-aac3-2ff1d708faa1)

---------
# 목차
+ [개요](#-개요)
  + [프로젝트 소개](#1-프로젝트-소개)
  + [프로젝트 목표](#2-프로젝트-목표)
  + [프로젝트 구조](#3-프로젝트-구조)
    + [Model](#31-model)
    + [View](#32-view)
    + [Controller](#33-controller)
  + [프로젝트 기능 및 실행 화면](#4-프로젝트-기능-및-실행-화면)
    + [사용자 조회 및 추가](#41-사용자-조회-및-추가)
    + [페이지 이동 처리](#42-페이지-이동-처리)
    + [AJAX 비동기 처리](#43-ajax-비동기-처리)
  + [사용 기술](#5-사용-기술)
  + [실행 화면](#6-실행-화면)
----------
# 개요
## 1. 프로젝트 소개
이 프로젝트는 Java를 사용하여 DAO(Data Access Object)와 VO(Value Object)를 MyBatis로 오라클 데이터베이스와 연동하고, Servlet을 컨트롤러로 활용하여 페이지 이동과 AJAX 컨트롤러를 통한 비동기 처리를 구현하는 웹 애플리케이션입니다. 

## 2. 프로젝트 목표
+ **데이터베이스 연동**: MyBatis를 매퍼 방식으로 사용하여 SQL문과 설정을 XML 파일로 관리하며, DAO(Data Access Object)를 통해 데이터베이스와 상호작용합니다.

+ **페이지 이동 처리**: Servlet을 컨트롤러 및 커맨드 패턴과 결합하여 사용자 요청을 처리하고, JSP로 페이지를 이동시킵니다.

+ **비동기 처리**: AJAX를 사용하여 비동기 방식으로 데이터를 처리하며, 불필요한 페이지 이동을 줄여 사용자 경험을 향상시킵니다.

+ **리뷰 커뮤니케이션 장 구축**: 영화 카테고리를 이용하여 리뷰 커뮤니케이션 장을 만들고, OTT 시장의 확대로 다양한 영상 콘텐츠에 대한 리뷰도 가능하도록 확장합니다.

## 3. 프로젝트 구조
+ src/com/project/
  + controller
  + command
  + ajax
  + mybatis
  + vo
  + dao
  + paging
+ sql
+ WebContent

## 4. 프로젝트 기능 및 실행 화면
<details>
  <summary>회원 관리</summary>

  ![image](https://github.com/JavaFlicksTeam/moviechoice/assets/66461013/17aaa790-e034-4a9b-bd87-889343f71329)
  1. 로그인, 회원가입

![image](https://github.com/JavaFlicksTeam/moviechoice/assets/66461013/49dfb95f-0605-4bac-91bb-0414dc006d59)

![image](https://github.com/JavaFlicksTeam/moviechoice/assets/66461013/80f273d3-12e6-4381-9028-ede6384f2527)

  2. 마이페이지
</details>

<details>
  <summary>영화 관리</summary>

  ![image](https://github.com/JavaFlicksTeam/moviechoice/assets/66461013/a94b0ada-604c-438a-aac3-2ff1d708faa1)
  
  1. 영화 메인 페이지

  ![image](https://github.com/JavaFlicksTeam/moviechoice/assets/66461013/32324980-250a-49c5-8820-cf98d1c8c0c1)
  
  2. 영화 검색 

  ![image](https://github.com/JavaFlicksTeam/moviechoice/assets/66461013/96a57a9f-eb25-46fa-821a-937e5ddf94d9)
  
  3. 영화 상세 정보 및 리뷰
</details>

<details>
  <summary>리뷰 관리</summary>

  ![image](https://github.com/JavaFlicksTeam/moviechoice/assets/66461013/6ea52a5b-2a95-42d7-b268-f1ec6ce0abe6)
  
  1. 리뷰 모음 페이지

  ![image](https://github.com/JavaFlicksTeam/moviechoice/assets/66461013/9269c4db-cadd-498b-ab7a-2a457ca4b14a)
  
  2. 리뷰 상세 

  ![image](https://github.com/JavaFlicksTeam/moviechoice/assets/66461013/5ff44ecc-db60-46ce-b477-ca1b3761b910)
  
  3. 리뷰 작성 및 수정
</details>

<details>
  <summary>자유게시판 및 QnA 관리</summary>

 ![image](https://github.com/JavaFlicksTeam/moviechoice/assets/66461013/26f6b43e-9f00-4708-9595-9b4c1ca7c9bc)
  
  1. 자유게시판 페이지

  ![image](https://github.com/JavaFlicksTeam/moviechoice/assets/66461013/65b5878d-da82-4b9c-9403-df85bdc1e012)

  2. 자유게시판 게시물 상세 

  ![image](https://github.com/JavaFlicksTeam/moviechoice/assets/66461013/699035fe-8e65-478b-bca9-9fe5197cbacc)
  
  3. 자유게시판 게시물 작성 및 수정
</details>



