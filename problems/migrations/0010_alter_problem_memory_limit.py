# Generated by Django 3.2.7 on 2021-11-21 10:31

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("problems", "0009_upvotesdownvote"),
    ]

    operations = [
        migrations.AlterField(
            model_name="problem",
            name="memory_Limit",
            field=models.IntegerField(blank=True, default=1, null=True),
        ),
    ]
