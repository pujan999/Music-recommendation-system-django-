# Generated by Django 3.0.2 on 2020-01-20 17:28

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('music', '0002_auto_20200120_2308'),
    ]

    operations = [
        migrations.AddField(
            model_name='songs',
            name='music',
            field=models.FileField(default='no pic', upload_to='media/'),
        ),
    ]
