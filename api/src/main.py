from fastapi import FastAPI


app = FastAPI()


@app.get('/health')
def health_check():
    return 'OK'


@app.get('/hello')
def hello():
    return {'message': 'Server is running on OCI instance'}
