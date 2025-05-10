create user c##overflow_earlybird -- c##overflow_earlybird 사용자 생성
identified by 12345 -- 비밀번호는 12345로 설정
default tablespace users -- 기본 테이블스페이스는 users
temporary tablespace temp; -- 임시 테이블스페이스는 temp

grant create session to c##overflow_earlybird; -- c##overflow_earlybird 사용자에게 로그인 권한 부여.

grant create table, create view, create procedure, create sequence to c##overflow_earlybird; -- overflow_earlybird 사용자에게 테이블, 뷰, 프로시져, 시퀀스 생성 권한 부여. CRUD 권한도 함께 부여된다.

alter user c##overflow_earlybird quota unlimited on users; -- c##overflow_earlybird 사용자는 user 테이블스페이스를 무제한으로 사용 가능.