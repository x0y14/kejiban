from typing import Annotated

from fastapi import FastAPI, Query

from app.reqres import HealthCheckRequest, HealthCheckResponse

app = FastAPI()


@app.get("/api/healthcheck", response_model=HealthCheckResponse, status_code=200)
async def healthcheck(query: Annotated[HealthCheckRequest, Query()]):
    _ = query
    return HealthCheckRequest()
