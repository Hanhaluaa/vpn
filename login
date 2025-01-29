import requests

class XUI:


    req = requests.Session()
    def __init__(self, username: str, password: str) :
        self.session = requests.Session()
        self.username = username
        self.password = password
        self.host = "http://159.255.38.36:63679/GAxCevIDgYcJH0W"
        self.session_id = None
        self.login()
        # call login endpoint here
        # self.session_id = request.POST(url, login, password)
    def login(self):
        url = f"{self.host}/login" # беру с примера http://localhost:2053/login
        headers = {}
        data = {"username": self.username, "password": self.password}

        try:
            response = self.req.post(url, headers=headers, data=data)
            # сложная хуйня для представления - http://localhost:2053/login/body fr headers/data - log/pass
            print(response.text)


            print(f"логин прошел")
            return self.session_id
        except:
            print(f"ушло в ошибку")

x_ui = XUI(log, pass)
