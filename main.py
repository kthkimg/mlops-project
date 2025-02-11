from fastapi import FastAPI

# FastAPI 인스턴스 생성
app = FastAPI()

# 덧셈 API 정의
@app.get("/add")
def add_numbers(a: int, b: int):
    result = a + b
    return {"result": result}

@app.get("/mul")
def multiply_numbers(a: int, b: int):
    result = a * b
    return {"result": result}

@app.get("/hello")
def multiply_numbers():
    return "사랑해요~"
