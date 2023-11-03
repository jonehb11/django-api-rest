from rest_framework import serializers


class HelloSerializer(serializers.Serializer):
    """"testing a name field for apiview"""
    name = serializers.CharField(max_length=10)