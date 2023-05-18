from webapp import app
from webapp.db import create_db

if __name__ == "__main__":
    create_db()
    app.run(host='0.0.0.0')
