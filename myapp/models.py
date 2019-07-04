from django.db import models


# Create your models here.
class Profile(models.Model):
    name = models.CharField(max_length=250)
    picture = models.ImageField(upload_to='picture/')

    def __str__(self):
        return self.name
