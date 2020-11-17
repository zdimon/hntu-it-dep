import requests
import time
startTime = time.time()

for i in range(1,1000):
    res = requests.get('http://localhost:8000')

executionTime = (time.time() - startTime)
print('Execution time in seconds: ' + str(executionTime))