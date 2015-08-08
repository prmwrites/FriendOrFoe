import csv
import json

csvfile = open('countries-20140629(2).csv', 'r')
jsonfile = open('file.json', 'w')


####Code	Value	Selected	Description:	English Name	imageSrc

fieldnames = ('code', 'value', 'selected', 'description', 'english name', 'imageSrc')
reader = csv.DictReader( csvfile, fieldnames)
for row in reader:
    json.dump(row, jsonfile)
    jsonfile.write('\n')