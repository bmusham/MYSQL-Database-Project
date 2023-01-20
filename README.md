# MYSQL-Database-Project
MYSQL Database Projects

This investment management system helps any individual to track their investments and manage their portfolios that comprises of stocks, crypto currencies, mutual funds, ETFs, real estate, Roth IRA, 401K, bonds, Fixed deposit, etc. It maintains the account portfolio details, investment instruments and transaction details.
People invest in many areas, and they will not be able to track their details. This investment management system helps them to organize all the investments in one place, track their portfolios, maintain their current investments, and plan their future investments.

Functionalities that are considered as part of this proposed investment management system are described below:
➢ List down and maintain the investment details like types of investment, category and total return on the investment.
➢Capture all types of instruments, their symbol, instrument name, current price, total quantity and instrument current value, instrument gain/loss, return on investment along with the corresponding account number. Maintain the status of the investments. Status should be “Active” for any invested instrument and update it to “in active” state once that instrument is closed.
➢Calculate the gain/loss and return on investment for a particular invested instrument on monthly, quarterly, and annually.
➢ Calculate the total gain/loss and return on investment of the portfolio monthly, quarterly, and annually.
➢ Move the closed invested instrument details to history and maintain the history for up to 10 years.
➢Capture the top performing, low performing invested instruments data on monthly, quarterly, yearly to analyze and plan for future investments.
➢For any closed invested instrument, calculate the return on investment by taking the closed value reference from the history.
➢ Represent the current holdings and return on investment data graphically for better visualization.
➢ Compute the derived values using below formulas.
➢ transaction value = purchase quantity*purchase price
➢ total quantity = sum of all purchase quantity
➢ instrument current value = current price*total quantity
➢ instrument gain/loss = instrument current value – (sum of all
transaction values of instrument)
3
 
➢ investment total value = sum of all current values of instruments
➢ account value = investment total value + cash balance
➢ total Gain/loss = sum of all instrument gain/loss.
➢ Return on investment of instrument = instrument gain or loss/sum of
all transaction values of that instrument *100
➢ Total gain/loss of investment = sum of all instrument gain/loss.

Stored procedures to find the returns with the inputs like Upper level of rate of return, lower level of rate of return and no of years of investment required. This will return the names of all the stock which will have the desired rate of return between lower and upper level and maturity.

