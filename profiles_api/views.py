from django.shortcuts import render
from rest_framework.views import APIView
from rest_framework.response import Response

# Create your views here.

class HelloApiView(APIView):
    def get(self, request, fromat=None):
        """"return a list of apiview features"""
        an_apiview = ['uses http methods as function','is mapped to URLs' ]

        return Response({'message':'hello', 'an_apiview': an_apiview})
        

