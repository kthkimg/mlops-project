# Python 이미지를 베이스로 사용
FROM python:3.10-slim

# 작업 디렉토리 설정
WORKDIR /app

# 필요한 파일들을 컨테이너로 복사
COPY . /app

# 의존성 설치
RUN pip install --no-cache-dir -r requirements.txt

# FastAPI와 Uvicorn 설치
RUN pip install fastapi uvicorn

# API 서버 실행
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "30239"]