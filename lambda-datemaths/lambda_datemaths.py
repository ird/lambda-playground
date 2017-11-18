import json


def lambda_handler(event, context):
    print("Received event: " + json.dumps(event, indent=2))
    return days_between(event['start'], event['end'])


def days_between(date_a, date_b):
    "number of days between 2 date strings"
    a = extract(date_a)
    b = extract(date_b)
    for k in ['year', 'month', 'day']:  # ensure a < b, swap if required
        if a[k] != b[k]:
            if a[k] < b[k]:
                break
            else:
                (a, b) = (b, a)
                break
    days = b['day'] - a['day']
    months = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    if a['month'] < b['month']:
        for m in range(a['month'], b['month']):
            days += months[m]
    else:
        for m in range(b['month'], a['month']):
            days -= months[m]
    days += 365 * (b['year'] - a['year'])
    days += leap_years_between(a, b)
    return days


def leap_years_between(a, b):
    # TODO
    return 0


def extract(date_str):
    (d, m, y) = date_str.split("/")
    return {'day': int(d), 'month': int(m), 'year': int(y)}
