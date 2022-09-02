# Curry-Shot-Prediction

## Goal
Using publicly available data from NBA Advanced Stats' API on Steph Curry's field goal attempts over the course of his career to build a machine learning algorithm that can accurately predict whether or not Steph Curry makes or misses a shot. The independent variables include shot location, type of shot, opponent, and more.

## Using the Code
In order to play around with my code through Docker:
1. Make sure you have Docker
2. In the command line, type "docker run -p 8888:8888 connorcapitolo/curry_catboost"
3. Copy the URL that begins with http://127.0.0.1:8888 into your browser
4. Open the .ipynb file
5. Have some fun messing around!

An example of NBA.com's field goal attempts page for Steph Curry during the 2018-2019 season:
https://stats.nba.com/events/?CFID=33&CFPARAMS=2018-19&ContextMeasure=FGA&PlayerID=201939&Season=2018-19&flag=3&sct=plot&section=player
