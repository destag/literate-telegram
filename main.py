from __version__ import VERSION

from fastapi import FastAPI

# VERSION = "0.1.0"

app = FastAPI()


@app.get("/")
async def root():
    return {"message": "Hello World"}


@app.get("/version")
async def version():
    return {"version": VERSION}
