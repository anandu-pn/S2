from pymongo import MongoClient
conn = MongoClient("mongodb://localhost:27017/")
db = conn["adstest"]
collection = db["student"]
#sample_data = {"__id":1,"name": "Vasco", "age": 21, "department": "Mech"}
#students = [
#    {"_id": 1, "name": "Alice", "age": 22, "department": "CS"},
#    {"_id": 2, "name": "Bob", "age": 24, "department": "IT"},
#    {"_id": 3, "name": "Charlie", "age": 23, "department": "Physics"},
#    {"_id": 4, "name": "Diana", "age": 21, "department": "Biology"}
#]
#collection.insert_many(students)
#i=0
#for document in collection.find():
#    if(i==0):
#        print(list(document.keys()))
#    print(list(document.values()))
#    i=i+1

var=collection.find({},{"_id": 0, "name": 1})
for i in var:
    print(i)
conn.close()

