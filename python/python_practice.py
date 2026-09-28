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



# ==============================
# Python Data Analysis Practice
# Day 2
# ==============================

# Q1: Dictionary access

employee = {
    "name": "Amit",
    "department": "Sales",
    "salary": 50000,
    "experience": 2
}

print("Q1 Salary:", employee["salary"])


# Q2: Dictionary update

employee["salary"] += 10000

print("Q2 Updated Salary:", employee["salary"])


# Q3: Enumerate

sales = [50000, 80000, 30000, 70000, 40000]

for index, sale in enumerate(sales):
    print("Q3:", index, sale)


# Q4: List comprehension

filtered_sales = [sale for sale in sales if sale > 60000]

print("Q4 Filtered Sales:", filtered_sales)


# Q5: Function

def calculate_average(sales):
    total = sum(sales)
    count = len(sales)
    return total / count

print("Q5 Average:", calculate_average(sales))


# Q6: Function with condition

def classify_sale(sale):
    if sale > 60000:
        return "High"
    elif sale >= 40000:
        return "Medium"
    else:
        return "Low"

print("Q6 Classification:", classify_sale(80000))


# Q7: Lambda

increase = lambda x: x * 1.1

print("Q7 Increased Sale:", increase(50000))


# Q8: Sort employees by salary

employees = [
    {"name": "Amit", "salary": 50000},
    {"name": "Ravi", "salary": 70000},
    {"name": "Mohit", "salary": 80000},
    {"name": "Neha", "salary": 60000}
]

sorted_employees = sorted(
    employees,
    key=lambda x: x["salary"],
    reverse=True
)

print("Q8 Sorted Employees:")

for employee in sorted_employees:
    print(employee["name"], employee["salary"])


# Q9: Pandas filtering

import pandas as pd

data = {
    "Employee": ["Amit", "Ravi", "Mohit", "Neha"],
    "Department": ["Sales", "IT", "IT", "Sales"],
    "Salary": [50000, 70000, 80000, 60000]
}

df = pd.DataFrame(data)

it_employees = df[df["Department"] == "IT"]

print("Q9 IT Employees:")
print(it_employees)


# Q10: Pandas GroupBy

department_average = df.groupby("Department")["Salary"].mean()

print("Q10 Department-wise Average Salary:")
print(department_average)
