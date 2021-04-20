from __version__ import VERSION

from fastapi import FastAPI


app = FastAPI()


@app.get("/")
async def root():
    return {"message": "Hello World"}


@app.get("/version")
async def version():
    return {"version": VERSION}


@app.on_event("startup")
async def startup_event():
    print(f">>> Running version {VERSION} <<<")
