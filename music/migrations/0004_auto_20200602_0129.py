# Generated by Django 3.0.5 on 2020-06-02 08:29

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('music', '0003_songs_music'),
    ]

    operations = [
        migrations.AlterField(
            model_name='songs',
            name='song_genre',
            field=models.CharField(max_length=200),
        ),
    ]
