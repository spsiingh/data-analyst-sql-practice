# Python Data Analysis Practice
# Day 1

sales = [50000, 80000, 30000, 70000, 40000]


# Q1: Calculate total sales
total_sales = sum(sales)
print("Q1 Total Sales:", total_sales)


# Q2: Calculate average sales
average_sales = total_sales / len(sales)
print("Q2 Average Sales:", average_sales)


# Q3: Find maximum sales
print("Q3 Maximum Sales:", max(sales))


# Q4: Find minimum sales
minimum_sales = min(sales)
print("Q4 Minimum Sales:", minimum_sales)


# Q5: Classify total sales
if total_sales > 200000:
    print("Q5: High Sales")
else:
    print("Q5: Low Sales")


# Q6: Print every sale using for loop
for sale in sales:
    print("Q6:", sale)


# Q7: Print sales greater than 60000
for sale in sales:
    if sale > 60000:
        print("Q7:", sale)


# Q8: Count sales greater than 60000
count = 0

for sale in sales:
    if sale > 60000:
        count += 1

print("Q8 Count:", count)


# Q9: Calculate total of sales greater than 60000
total = 0

for sale in sales:
    if sale > 60000:
        total += sale

print("Q9 Total:", total)


# Q10: Categorize each sale
for sale in sales:
    if sale >= 70000:
        print(sale, "→ High")
    elif sale >= 40000:
        print(sale, "→ Medium")
    else:
        print(sale, "→ Low")
