from django.urls import path
from . import views  

urlpatterns = [
    path('docker/', views.hello_docker, name = 'hello'),
]