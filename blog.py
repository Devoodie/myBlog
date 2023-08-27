from fastapi import FastAPI


app = FastAPI()


@app.get("/")
async def root():
    pass

@app.get("/projects")
async def getprojects():  # gets page with all projects
    pass


@app.get("/{projectid}")
async def getproject():  # retrieves project
    pass


@app.get("/resume")
async def getresume():  # gets my resume
    pass


@app.get("/aboutme")
async def aboutme():
    pass
