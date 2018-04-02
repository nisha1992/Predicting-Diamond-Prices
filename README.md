# Predicting-Diamond-Prices
Project 1.1 : A diamond distributor has recently decided to exit the market and has put up a set of 3,000 diamonds up for auction. Seeing this as a great opportunity to expand its inventory, a jewellery company has shown interest in making a bid. To decide how much to bid, the company’s analytics team used a large database of diamond prices to build a linear regression model to predict the price of a diamond based on its attributes. You, as the business analysts, are tasked to apply that model to make a recommendation for how much the company should bid for the entire set of 3,000 diamonds.  Price = -5,269 + 8,413 x Carat + 158.1 x Cut + 454 x Clarity

Project: Diamond Prices 
# Step 1: Understanding the Model
- Answer the following questions:
# 1.	According to the model, if a diamond is 1 carat heavier than another with the same cut, how much more should I expect to pay? Why?
In the given linear regression equation, coefficient for carat is 8413, hence if a diamond is 1 carat heavier than another with the same cut, increase in the price would be $8413.

# 2.	If you were interested in a 1.5 carat diamond with a Very Good cut (represented by a 3 in the model) and a VS2 clarity rating (represented by a 5 in the model), how much would the model predict you should pay for it?
As per regression equation, 
Price = -5,269 + 8,413 x Carat + 158.1 x Cut + 454 x Clarity,
Putting the values in equation, we get Price = $10094.8
, Hence amount $10094.8 should be paid.

# Step 2: Visualize the Data 
Make sure to plot and include the visualizations in this report. For example, you can create graphs in Excel and copy and paste the graphs into this Word document.

1.	Plot 1 - Plot the data for the diamonds in the database, with carat on the x-axis and price on the y-axis. 
2.	Plot 2 - Plot the data for the diamonds for which you are predicting prices with carat on the x-axis and predicted price on the y-axis. 
o	Note: You can also plot both sets of data on the same chart in different colors.
What strikes you about this comparison? After seeing this plot, do you feel confident in the model’s ability to predict prices? 

![alt text](https://github.com/nisha1992/Predicting-Diamond-Prices/blob/master/CaretvsPrices.png) 

# Observations from the plot :
1.	Caret is not linearly distributed with prices. If we see the plot for caret 0 to 1, Prices seem almost linear but from 1 to 3 caret, prices are not linear with caret. Here the prices are distributed in diverse range for each caret e.g prices for caret 1 varies from aroud 2500 to 20000. Its seems like in segment 1 to 3 caret, there are some other independent factors which are affecting the diamond prices.
2.	How can prices be negative for diamonds? It seems that converting cut and clarity into numbers is not a good approach. 
3.	Predicted prices are distributed linearly but old diamond prices are non linear.
4.	Since one of the assumptions of linear regression is that independent variables should be linearly distributed with the price, and it is not met in this diamond problem, linear regression is not the right approach to predict the prices.

# Step 3: Make a Recommendation
- Answer the following questions:
1.	What price do you recommend the jewelry company to bid? Please explain how you arrived at that number.
Linear regression is not a right approach, this problem can be done by using regression tree. (I used the random Forest tree)
- Predicted prices using random forest model.
- Perform sum on all the predicted prices. (11670938)
- Since this is the consumer price, take 70% of the sum and that is the amount a company should bid for diamonds. (8169657)
