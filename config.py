from dotenv import load_dotenv
import os


class Config:
    # Load .env first, then .env.local (which will override .env values)
    load_dotenv()  # Load .env
    load_dotenv('.env.local', override=True)  # Load .env.local with override

    def __init__(self) -> None:
        self.port = os.getenv("PORT")
        self.db_path = os.getenv("DB_PATH")
        self.gcp_project = os.getenv("GCP_PROJECT_ID")
        self.github_url = os.getenv("GITHUB_URL")
