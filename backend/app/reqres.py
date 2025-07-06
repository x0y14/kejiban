from pydantic import BaseModel, ConfigDict


class HealthCheckRequest(BaseModel):
    """/api/healthcheckに対するリクエスト"""

    model_config = ConfigDict(frozen=True, extra="forbid")


class HealthCheckResponse(BaseModel):
    """/api/healthcheckからのレスポンス"""

    model_config = ConfigDict(frozen=True, extra="forbid")
