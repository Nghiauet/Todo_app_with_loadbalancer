from locust import HttpUser, task, between

class WebsiteUser(HttpUser):
    wait_time = between(1, 2)

    @task
    def index_page(self):
        self.client.get("/")

    # @task
    # def about_page(self):
    #     self.client.get("/about")

# run 
# locust -f locust_file.py --host=http://localhost:8089
# and monitorclea