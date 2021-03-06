<style>
.table1 th:first-child  {
	width: 100px;
}
.table1 td {
	vertical-align: top;
	font-size:11px;
}
</style>

# Create Initial Bill #
The initial bill must be created for accounts that are already existing. You may opt to capture the latest bill as the initial bill so that it will be ready on the next billing run. All succeeding bills will be generated by the system, i.e. a bill will be created per month per account. Before performing the ff. task, please read first the __Billing__ section to understand the process flow. To do the initial bill, perform the ff:

> 1. Get the latest bill for the account. 
> 2. Calculate the beginning balance forwarded from the previous month of this bill. For example, if the initial bill is January 2020, calculate the total balance unpaid or excess payment until December 2019. 
> 3. Get all payments already made for this bill if any and pertinent information like O.R. No, amount and date paid.

To create an initial bill, open the customer account. Click on __Generate Initial Bill__. *(If you see View Bill or Create Direct Bill, this means there was already an initial bill already created)*. Once clicked, you will see the ff. screen:


![alt text][create1]

> __Year__ - The year billing period for the bill you want to create. 

> __Month__ -  The month billing period for the bill you want to create.

> __Bill Ref No__ - The bill reference for the existing system used.

> __Bill Date__ - The date of the bill. 

If finished, click on Submit. This will save the bill. 


## Building Previous Balance ##

If a bill has previous balance, you need to set it up. A beginning balance can be positive value, i.e. there are unpaid balances from previous bills or negative, which means there is an overpayment from previous bills. 



![alt text][create2]

If there are unpaid balance from previous bill, click on Add Item. If there is a negative balance from previous bill click on Add Credit.

Clicking on the `Add Item` will show the ff. screen:

![alt text][create3]

Click the `Save` button to save the entry. This should appear on the list. You can opt to save as many items if you want. For example, if you are implementing the monthly interest then you must encode each month as the system will use this as the basis for its computation. The balances appear on the bottom part of the screen.

Clicking on `Add Credit` will show the ff. screen:

![alt text][create4]

After adding the credit, the balance forward becomes negative. That means the previous balance of this bill was an overpayment. The lower section of the screen will display the totals and balances. 

After setting up the beginning balance, click on Next.

## Building Consumption Entries ##

The next part is building the consumption entries. This pertains to the volume consumption in previous months. It might be beneficial to capture previous entries so you can have a history of consumption. Click on the `Build Consumptions` button.

![alt text][create5]

Enter the start month and start year. The to period will be the period of this bill. Ideally capture at least 6-12 months entry if you have the data. Click on Next.

![alt text][create6]
 Enter the readings and click on `Next`. This will compute the rates based on the rules. This is also a good time to check if the consumption rules are correct. 
Refer to the section *Consumption and Billing Rules*. View the amounts computed and go back to the rules section to adjust if necessary.


![alt text][create7]
Click on Submit when completed. This will add the consumptions to the screen.  


![alt text][create8]

Click on `Next` button to move to the current bill section.

## Building Current Bill ##

This section contains the current bill items, i.e. the items of the current bill. You can manually add items or automatically through the billing rules. Before running the rules however, you need to setup the billing rules. Refer to the *Consumption and Billing Rules* section for this. To manually add items click on the `Add Item` button similar to the procedure in the previous section. To run the blling rules, click on the `Run Billing Fees` button. This will prompt for a transaction date. This transaction date is important because it will determine if the surcharge will be calculated or not. You can view the bill due date on the screen. 

![alt text][create9]

After it is invoked, the bill fees will be displayed.

## Capture Payment ##
If payment was already made for the bill you can capture payment. To do this click on the `Next` button to move to the Payment view. To add payment click on `Add Payment` button. (Before executing this make sure that the payment rules are setup and each item account has at least one treasury mapping account)

![alt text][create10]

The add payment will prompt for the ff. info:

- __Refno__ - the payment reference no. In this case the receipt no.
- __Ref Date__ - the payment reference or receipt date
- __Amount Paid__ - the amount of the receipt. If this is zero, it will compute the full bill amount
- __Remarks__ - optional.

After filling out the fields, the payment details will be displayed. If there are discount rules, it will be applied at this point. You can also click the `View Receipt` button 

![alt text][create11]


### Conditions for Approval ###

- __For New Account__. If this is an entirely new account and there are no readings yet, a ledger may not be necessary unless there are some charges you want included such as material fees and the like. This is automatically done if this were through the New Connection transaction. However, in capture mode, the fees and charges must be encoded manually in the ledger. To add ledger entries go to *Building Ledgers* section. Next ensure that there will be a previous consumption entry. This will be the initial reading.  

- __For existing Accounts without balance__. 

- __For existing Accounts with balance__. 

Before a system can be approved, the system will ensure that the billings will be in sync when you start. It is important that you build first the current ledger once and the system will continue 


[create1]: ./images/bill/create1.png
[create2]: ./images/bill/create2.png
[create3]: ./images/bill/create3.png
[create4]: ./images/bill/create4.png
[create5]: ./images/bill/create5.png
[create6]: ./images/bill/create6.png
[create7]: ./images/bill/create7.png
[create8]: ./images/bill/create8.png

[create9]: ./images/bill/create9.png
[create10]: ./images/bill/create10.png
[create11]: ./images/bill/create11.png
[create12]: ./images/bill/create12.png
[create13]: ./images/bill/create13.png
[create14]: ./images/bill/create14.png
[create15]: ./images/bill/create15.png

