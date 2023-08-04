from rest_framework.routers import DefaultRouter
from django.urls import path, include

from course import views

router = DefaultRouter()

router.register("course", viewset=views.CourseViewSet, basename="course")

urlpatterns = [
    path("", include(router.urls)),
]
